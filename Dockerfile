FROM registry.redhat.io/jboss-eap-7/eap74-openjdk8-openshift-rhel8:7.4.11-3
USER root
EXPOSE 8088
#CMD ["./standalone.sh"]

COPY test-app/ /opt/eap/standalone/deployments/
RUN cd /opt/eap/standalone/deployments/test-app && jar cvf /opt/eap/standalone/deployments/test-app.war *
 
#USER root
#RUN chmod og+rw /opt/app-root/src/db
#USER default
