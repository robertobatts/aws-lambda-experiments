#run only once to create local graalvm image
docker build -f src/main/docker/Dockerfile.graalbase -t graalbase .

#quarkus extension add 'container-image-docker'

#build for arm64/arch64 architecture
./mvnw package -Pnative -Dquarkus.native.container-build=true -Dquarkus.container-image.build=true -Dquarkus.native.builder-image=graalbase

#run locally
docker build -f src/main/docker/Dockerfile.native -t quarkus-lambda-demo:native-arch64 .
docker run --rm  -p 7080:8080 quarkus-lambda-demo:native-arch64
