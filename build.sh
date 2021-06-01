# Download and build Paperclip
git clone git@github.com:PaperMC/Paper.git
cd Paper
./paper jar
 cd ../

# Download and build Geyser
git clone git@github.com:GeyserMC/Geyser.git
cd Geyser
git submodule update --init --recursive
mvn clean install
cd ../

# Download and build Floodgate
git clone git@github.com:Floodgate/Floodgate.git
cd Floodgate
mvn clean package
cd ../

# Download and build RaspberryJuice
git clone https://github.com/zhuowei/RaspberryJuice.git
cd RaspberryJuice
mvn package
cd ../

# Assemble Server
cp Paper/paperclip.jar Server/paperclip.jar
cp Geyser/bootstrap/spigot/target/Geyser-Spigot.jar Server/plugins/Geyser-Spigot.jar
cp Floodgate/bukkit/target/floodgate-bukkit.jar Server/plugins/floodgate-bukkit.jar
cp RaspberryJuice/target/raspberryjuice-*.jar Server/plugins/raspberryjuice.jar

# Cleanup after ourselves
rm -rf Paper Geyser Floodgate RaspberryJuice