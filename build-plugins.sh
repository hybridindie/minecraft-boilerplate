# Download and build Paperclip
git clone https://gitlab.com/TauCu/kaboom.git
cd kaboom
git submodule update --init --recursive
mvn clean package
cd ../

git clone git@github.com:PolyhedralDev/Terra.git
cd Terra
./gradlew build
cd ../

curl https://media.forgecdn.net/files/3316/767/setspawn-2.3.3-SNAPSHOT.jar -o Server/plugins/setspawn-2.3.3.jar

# Assemble Plugins
cp kaboom/target/KaBoom-*.jar Server/plugins/kaboom.jar
cp Terra/platforms/bukkit/build/libs/Terra-bukkit-*-shaded.jar Server/plugins/kaboom.jar

# Cleanup after ourselves
rm -rf kaboom Terra