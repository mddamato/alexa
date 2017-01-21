cd aws-iot-device-sdk-java
mvn clean install -Dgpg.skip=true -Djava.net.preferIPv4Stack=true
mvn exec:java -pl aws-iot-device-sdk-java-samples -Dexec.mainClass="com.amazonaws.services.iot.client.sample.shadow.ShadowSample" -Dexec.args="-clientEndpoint awd6cf2pb49fo.iot.us-east-1.amazonaws.com -clientId sdk-java -certificateFile ../Raspberry-Pi.cert.pem -privateKeyFile ../Raspberry-Pi.private.key -thingName Raspberry-Pi" -Djava.net.preferIPv4Stack=true
