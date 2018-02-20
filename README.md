# Use the nio platform on your AIY Vision Kit

A blank project including special blocks to interact with the Vision Bonnet in your [Vision Kit](https://aiyprojects.withgoogle.com/vision/)

## How to Use

  After [installing nio](https://docs.n.io/installation/) to your RaspberryPi, create a new directory for your nio project(s):  
  `mkdir -p nio/projects && cd nio/projects`
  
  Use the Command Line Interface that was installed alongside nio to create a new project:  
  `nio new demo_aiy -t demo_aiy`    
  `cd demo_aiy`  
  This is the root of your project directory. From here nio can be started by running `niod`, but it will stop running as soon as you close the window or press ctrl-C.
  
  For convenience this template includes a bash script to configure systemd services on your Pi. From your project root, run `sudo ./setup_nio.sh` to stop and disable the Joy Detection demo, and create a systemd service to start nio automatically (in the background) with your RaspberryPi. While this step is not required, only one application has access to the Vision Bonnet at a time so you will need to make sure it is available to use the included blocks.
  
  The systemd service can be controlled with the following commands:  
`systemctl start|stop|enable|disable demo_aiy`  
