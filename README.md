# ROS Project

This project will present a graph slam implementation using mrpt engine within ROS environment

## Getting Started

Make sure you install the melodic distro of ROS

### Prerequisites

Clone this project

```
git clone git@github.com:alecone/ROS_project.git
```

### Installing

A step by step series of that must be performed in order to make the catkin_make command work propperly (due to a laser_scan_matcher dipendence -csm-)

Navigate thru laser_scan_matcher directories and files and find following dirs and edit following header file with user name

```
gedit /home/YOUR_USER_NAME/catkin_graph/src/scan_tools/laser_scan_matcher/include/laser_scan_matcher/laser_scan_matcher.h
```

And replace in #include <.../csm_all.h> the user name from alecone to yours

Repeat command for file

```
gedit /home/YOUR_USER_NAME/catkin_graph/src/csm/sm/csm/laser_data_json.h
```
And replace in #include <.../json-c/json.h> and <.../json-c/json_more_utils.h> the user name from alecone to yours

Then for 

```
gedit /home/YOUR_USER_NAME/catkin_graph/src/csm/sm/csm/hsm/hsm_interface.h
```
Replace in #include <.../options/options.h> the user name from alecone to yours

Again for 

```
gedit /home/YOUR_USER_NAME/catkin_graph/src/csm/sm/csm/json_journal.h
```
Replace in #include <.../json-c/json.h> and <.../json-c/json_more_utils.h> the user name from alecone to yours

Lastly in file 

```
gedit /home/YOUR_USER_NAME/catkin_graph/src/csm/sm/csm/math_utils_gsl.h
```
Replace in #include <.../egsl/egsl.h> the user name from alecone to yours

### Alternatives (Not Tested)

If you don't want to follow the above installation steps you can also do this:

1. Remove the csm folder within the src folder of the project directory

2. Edit file '/home/YOUR_USER_NAME/catkin_graph/src/scan_tools/laser_scan_matcher/include/laser_scan_matcher/laser_scan_matcher.h'

By commenting line 59 and uncommenting line 58

3. clone this original csm repository within the src folder of your catckin_graph directory with commad

```
git clone git@github.com:AndreaCensi/csm.git
```
4. Install csm with install_quickstart.sh in csm folder

```
./install_quickstart.sh
```
5. Add compiled library to ~/.bashrc with command 

```
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/home/YOUR_USER_NAME/catkin_graph/src/csm/sm/lib:/home/YOUR_USER_NAME/catkin_graph/src/csm/sm
```


## Running the tests

To run the an exemple use command

```
roslaunch mrpt_graphslam_2d title.launch
```

Then you can use the pystick.py script in order to move the robot within the environment just using your keyboard.
Run it using command:

```
python pystick.py
```

The 'HOW-TO-USE' will be printed on your terminal


<!-- ### Break down into end to end tests

Explain what these tests test and why


### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc -->

