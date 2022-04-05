# Object Finder/Catcher Algorithm with Sequence Memorization 
Program for catching a flying/static object thrown into the robot workspace with a UR10 arm, without direct axis movements, inside the ROS ecosystem.
The video demonstration is available on YouTube: https://youtu.be/ZkYYVmsR97o

**RESOURCES:**
1) https://www.universal-robots.com/articles/ur/application-installation/what-is-a-singularity/
2) Jwaad Hussain's example code for the UR10 arm.
3) StackOverflow

**CODE EXPLANATION:**
The code can be executed in 2 modes:
1) The first mode starts a search algorithm that perform a search sequence in order to reach the vector point.
Firstly it performs a search algortihm that has the robot arm moving in all axes, with different distances in order to reach the threshold distance error.
Then, it starts a similar algorithm for the rotation error, which moves the actuator one of two ways, positive or negative, on all axis until the error is less than 5 degrees.

<p align="center">
  <img width="460" height="300" src="https://user-images.githubusercontent.com/94687473/161779259-68530f2e-4d3f-4ec8-8ec1-fddcda59f879.png">
</p>

Once the ball has been caught, the user is informed on the time needed to catch the ball based on the randomly generated vector. 
Keep in mind, this includes the delays for all movement
After that, the user is asked if they want to save the best sequence found, as a CSV file, so that it can be executed at a later stage.

![Industrial-Robotic-Arm](https://user-images.githubusercontent.com/94687473/161778888-34fb74a6-ebba-49d8-ba2d-fadfa127a1ec.png)

2) The second mode uses the saved sequence, if there is one, and completes a the whole list of movements required.

**Furthermore, for the first mode there is also an "Endless Mode" switch! When enabled the system will continously try to catch the ball, if there is a continously generated vector.**

***DEVELOPMENT NOTE: 
The UR10 GUI may rarely present a dialogbox stating that the movej inverse kinematics function could not find a solution, although the given movement is possible.
The arm still moves and the code continues executing just fine, it must be a bug with the UR10 GUI under ROS in certain situations.
Eris Chinellato has stated that the GUI is optional and does not influence the code.***

**TO INSTALL:**
1)Create a WorkSpace folder under ROS:
```
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
```

2)Clone the repository/Copy the files if already downloaded inside the workspace.
Then run the following:
```
catkin_make
source devel/setup.bash
```

**TO RUN:**
1) Now that the workspace and code have been setup. Let's see how we run the UR10 Graphic Simulator:
      Step 1: Setup URSIM

      1: Open URSIM with admin privileges
        cd to ~/ursim-3.15.4.106291
        sudo ./start-ursim.sh UR10

      2: Wait for it to finish opening, and click through all the error messages, then close it.

      3: reopen without admin privs
        ./start-ursim.sh UR10

      ------------------------------------------------------------------------------------------
      Step 2: UR-Ros drivers

      Option 1: use provided launch file
        This launch file needs to be edited, but once edited, you can use it easily.
        To Edit: 
          gedit ~/catkin_ws/src/robot_control_simulation/launch/ur_ros_drivers.launch
            change the "robot_ip" parameter to match the URSIM's IP
        To launch:
          roslaunch robot_control_simulation ur_robot_drivers.launch

      Option 2: use the pkgs directly
        roslaunch ur_robot_driver ur10_bringup.launch robot_ip:="insert_URSIM's_ip_here"

      ------------------------------------------------------------------------------------------
      Step 3: Start ball traj spawner

      1: rosrun robot_control_simulation ball_traj
        This spawns a service that can be called within a script. It will return a message that tells you your distance from it as well as the orientation error.
      2: Input either 1 or 2. 
        Inputting 1 will let you practise on just directional error, where having correct cartesian coordinates will randomise the trajectory. 
        Inputting 2 will run the actual ball trajectory and will require the directional error and rotational error to be corrected before another ball is "thrown".

2) To run the code simply navigate to the folder **trajectory_explorer** and use command ```python3 trajectory_explorer```


**VERSIONS:**
- Version 1.1 - 07/02/2022 - Commented the full code. Added extra edge cases and fixed some bugs in regards to CSV file generation.
- Version 1.0 - 06/02/2022 - Full code. GUI finished, edge cases added and the algorithm has been optimised. The sequence execution part of the program has been added.
- Version 0.8-0.9 - 05/02/2022 Minor changes with edge cases and optimisation.
- Version 0.7 - 04/02/2022 - Ball execution algortihm has been super optimised for runtime and to take the least amount of space. (in line). Partial GUI developed.
- Version 0.6 - 10/01/2022 - The algorithm can now also solve the rotation error, however a better solution must be found.
- Version 0.5 - 09/01/2022 - The arm is able to solve the ball distance, although with very unoptimed code.
- Version 0.2-0.4 - 01/2022 - Testing, debugging and algorithm development.
- Version 0.1 - 06/01/2022 - The robot arm has been setup accordingly and it can execute commands.
