# homebridge
Docker homebridge

# Deploy
```bash
docker run -p 51826:51826 -v <path to config>:/root/.homebridge --name homebridge serper/homebridge
```
In the config path you must to create the configuration file for homebridge named config.json
Additionaly you can create a file named install.sh with something to execute before running homebridge, for example to install additional pluggins for homebridge.

In config directory there are samples of these files.
