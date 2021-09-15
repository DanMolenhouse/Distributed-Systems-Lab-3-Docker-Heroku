FROM tomcat

EXPOSE 8080

# Get rid of default Tomcat web stuff
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Add in our ROOT.war to the right place
ADD ROOT.war /usr/local/tomcat/webapps/

# Run
# Comment out the next line for Heroku
CMD ["catalina.sh", "run"]
# Uncomment the next two lines for Heroku
#ADD tomcat_starter.sh /home/
#CMD chmod +x /home/tomcat_starter.sh; /home/tomcat_starter.sh
