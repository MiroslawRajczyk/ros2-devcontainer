# ros2-devcontainer
This repository contains dev container for ROS2, that will set up development environment, clone separate ROS2 packages repositories and place them into ros2 workspace.

## Getting Started

To set up the development environment, clone this repository and open it in Visual Studio Code. Make sure to have the **Remote Development** extension installed.

## Accessing Host Display from devcontainer

1. **Ensure X Server is running**: On your host machine, make sure that X server is running.
    - If you're on Linux, it should be by default.
    - If you're using WSL2 (Windows), you need an X server like **VcXsrv** or **Xming**.

2. **Grant access to X Server**: Before starting the container, run this command on your host to allow Docker to use your display:

        xhost +local:root
    Now you should be ready to run the devcontainer as usual - and it should have access to display.
    You can verify this by running this command inside the devcontainer:

        source /opt/ros/humble/setup.bash && rviz2

## Running the devcontainer

1. Open Visual Studio Code.
2. Open **Extensions** tab.
3. Install **Remote Development** extension.
4. Close Visual Studio Code - it will need to be opened again to properly load newly installed extensions.
5. Clone this repository.
6. Open this repository in Visual Studio Code.
7. In lower-right corner Visual Studio Code will recommend to **Reopen in Container** - click this button.
8. After that Visual Studio Code will start to prepare the docker image with development environment.
9. After it is done you can open new terminal inside Visual Studio Code and start your work inside the docker container. **:-)**
