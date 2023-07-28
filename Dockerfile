FROM quay.io/keycloak/keycloak:17.0.0

RUN mkdir -p /opt/keycloak/providers
ADD idpTheme /opt/keycloak/themes/idpTheme
ADD keycloak-janparichay-idp-1.0.0-SNAPSHOT.jar /opt/keycloak/standalone/deployment/
ADD keycloak-janparichay-idp-1.0.0-SNAPSHOT.jar /opt/keycloak/providers/

# RUN mkdir -p /opt/jboss/keycloak/providers
ADD idpTheme /opt/jboss/keycloak/themes/idpTheme
ADD keycloak-janparichay-idp-1.0.0-SNAPSHOT.jar /opt/jboss/keycloak/standalone/deployment/
ADD keycloak-janparichay-idp-1.0.0-SNAPSHOT.jar /opt/jboss/keycloak/providers/

# RUN dnf install --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm
# RUN yum install vim-enhanced -y  

EXPOSE 8080

CMD ["kc.sh", "start-dev"]
#CMD ["start-dev", "--http-relative-path", "/auth"]
