./gradlew clean jar copyDeps
 java -jar build/libs/pi-code-2-1.0.jar -clientEndpoint awd6cf2pb49fo.iot.us-east-1.amazonaws.com -clientId sdk-java -certificateFile Raspberry-Pi.cert.pem -privateKeyFile Raspberry-Pi.private.key -thingName Raspberry-Pi
