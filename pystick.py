#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from pynput.keyboard import Key, Listener

msg = Twist()

def action(key):

    if key == Key.up:
        msg.linear.x += 0.1
    elif key == Key.right:
        msg.angular.z += -0.1
    elif key == Key.down:
        msg.linear.x += -0.1
    elif key == Key.left:
        msg.angular.z += 0.1
    elif key == Key.enter:
        msg.linear.x = 0
        msg.linear.y = 0
        msg.linear.z = 0
        msg.angular.x = 0
        msg.angular.y = 0
        msg.angular.z = 0
    elif key == Key.esc:
        Listener.stop
        return False

    pub.publish(msg)


if __name__=='__main__':
    try:
        # Node initialization
        rospy.init_node('Joystick', anonymous=True)
        pub = rospy.Publisher('/cmd_vel', Twist, queue_size=20)
        print('Usage:\nUP: move forward / accelerate\nDOWN: move backwards / decelerate')
        print('RIGHT: steer right\nLEFT: steer left\r\n')
        print('ENTER: stop vehicle\nESC: quit joystick')
        with Listener(on_press=action) as listener:  listener.join()
        rospy.spin()
    except rospy.ROSInterruptException:
        print('ROS interrupt')
