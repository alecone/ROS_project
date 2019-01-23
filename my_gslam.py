import rospy
import rosgraph
import roslaunch
from subprocess import Popen

try:
    Popen(['roscore'])
    rospy.sleep(1)
    rospy.init_node('My_Slam', anonymous=True)
    package_laser_scan_matcher = 'laser_scan_matcher'
    executable_laser_scan_matcher = 'laser_scan_matcher_node'

    # NOTE: we can pass more args in Node creation, also a remap is feaseble
    node = roslaunch.core.Node(package_laser_scan_matcher, executable_laser_scan_matcher)

    launch = roslaunch.scriptapi.ROSLaunch()
    launch.start()

    process = launch.launch(node)
    print(process.is_alive())
    rospy.spin()
except rospy.ROSInterruptException:
        print('ROS interrupt')

