rm -rf src
mkdir src src/main src/main/java src/main/kotlin

protoc \
  -I=./ \
  --java_out=src/main/java \
  --kotlin_out=src/main/kotlin \
  task-result.proto

rm taskmanager-*.jar
mvn clean
mvn package
cp target/*.jar ./
