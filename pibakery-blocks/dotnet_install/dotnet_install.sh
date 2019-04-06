# dotnet install
# https://medium.com/@ylerjen/installing-netcore-on-a-raspberry-pi-3-e6ea1bca12e3
# https://www.hanselman.com/blog/InstallingTheNETCore2xSDKOnARaspberryPiAndBlinkingAnLEDWithSystemDeviceGpio.aspx
sudo apt install -y libunwind8 gettext
wget https://download.visualstudio.microsoft.com/download/pr/0c75c339-5301-4d4b-bd6b-d21ef6f3b9f0/eb8645704325a74b667fe67c392d9a48/aspnetcore-runtime-2.1.9-linux-arm.tar.gz
wget https://download.visualstudio.microsoft.com/download/pr/585a519e-290a-4a97-b1d4-b9f6035386ca/ef6fb61a6665e035f4ac085aa4c35d8f/dotnet-runtime-2.1.9-linux-arm.tar.gz
sudo mkdir -p /opt/dotnet
sudo tar zxf dotnet-runtime-2.1.9-linux-arm.tar.gz -C /opt/dotnet
sudo tar zxf aspnetcore-runtime-2.1.9-linux-arm.tar.gz -C /opt/dotnet
sudo ln -s /opt/dotnet/dotnet /usr/local/bin