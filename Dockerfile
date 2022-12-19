FROM quay.io/keycloak/keycloak:17.0.1
ADD idpTheme /opt/jboss/keycloak/themes/idpTheme

EXPOSE 8080

CMD ["kc.sh", "start-dev"]