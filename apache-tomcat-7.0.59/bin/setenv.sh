CATALINA_OPTS="-Xms256m -Xmx256m -XX:NewSize=128m -XX:MaxNewSize=128m -XX:PermSize=128m -XX:MaxPermSize=128m"
echo "CATALINA_OPTS = $CATALINA_OPTS"
JAVA_OPTS="$JAVA_OPTS -Xdebug -Duser.language=fr -Duser.region=FR"
echo "JAVA_OPTS = $JAVA_OPTS"

# OPENJDK-1.8
# export JAVA_HOME="/usr/lib/jvm/jre-1.8.0-openjdk.x86_64" 
# export PATH=$JAVA_HOME/bin:$PATH
