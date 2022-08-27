#install graalvm
curl -L -o graalvm-ce-java11-darwin-aarch64-22.1.0.tar.gz  https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.1.0/graalvm-ce-java11-darwin-aarch64-22.1.0.tar.gz

sudo mv graalvm-ce-java11-22.1.0 /Library/Java/JavaVirtualMachines

export GRAALVM_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.1.0/Contents/Home
export PATH=$PATH:$GRAALVM_HOME/bin

sudo xattr -r -d com.apple.quarantine $GRAALVM_HOME

gu install native-image

#build with graalvm
quarkus build --native

#run locally
./target/quarkus-lambda-demo-1.0-SNAPSHOT-runner