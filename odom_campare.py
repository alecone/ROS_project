import rospy
from threading import Timer
import nav_msgs.msg
import matplotlib.pyplot as plt
from math import sqrt


class Odometry:

    def __init__(self):
        self._stop = False
        self.odom_gazebo = rospy.Subscriber('/odom', nav_msgs.msg.Odometry, callback=self.gazebo_callback, queue_size=10)
        self.odom_mrpt = rospy.Subscriber('/feedback/robot_trajectory', nav_msgs.msg.Path, callback=self.mrpt_callback, queue_size=10)
        self.timer = Timer(120, self.stop)
        self.timer.start()
        self.to_plot_gazebo_x = []
        self.to_plot_gazebo_y = []
        self.to_plot_mrpt = 0
        self.to_plot_mrpt_x = []
        self.to_plot_mrpt_y = []
        self.old_gazebo_seq = 0
        self.old_mrpt_seq = 0
        self.acquire = False

    def oversample(self, data):
        X = []
        Y = []
        first = data.poses[0]
        X.append(first.pose.position.x)
        Y.append(first.pose.position.y)
        for c, p in enumerate(data.poses):
            if c > 0:
                X.append((p.pose.position.x + first.pose.position.x)/2)
                Y.append((p.pose.position.y + first.pose.position.y)/2)
                X.append(p.pose.position.x)
                Y.append(p.pose.position.y)
                first = p
        print('MRPT oversampled -> {}'.format(len(X)))
        return X, Y


    def stop(self):
        self._stop = True
        print('Gazebo samples -> {}'.format(len(self.to_plot_gazebo_x)))
        print('MRPT samples -> {}'.format(len(self.to_plot_mrpt_x)))
        plt.figure(1)
        plt.subplot(211)
        plt.plot(self.to_plot_gazebo_x, self.to_plot_gazebo_y, 'r')
        plt.subplot(212)
        plt.plot(self.to_plot_mrpt_x, self.to_plot_mrpt_y, 'b')
        plt.figure(2)
        plt.plot([sqrt((x_gazebo - x_mrpt)**2 + (y_gazebo - y_mrpt)**2) for x_gazebo,x_mrpt,y_gazebo,y_mrpt in zip(self.to_plot_gazebo_x, self.to_plot_mrpt_x, self.to_plot_gazebo_y, self.to_plot_mrpt_y)], 'y')

        # plt.subplot(211)
        # plt.plot(self.to_plot_gazebo_x, self.to_plot_gazebo_y, 'r')
        # plt.subplot(212)
        # plt.plot([x.pose.position.x for x in self.to_plot_mrpt.poses], [y.pose.position.y for y in self.to_plot_mrpt.poses], 'b') # List comprehention
        # X, Y = self.oversample(self.to_plot_mrpt)
        # plt.figure(2)
        # plt.subplot(211)
        # plt.plot(self.to_plot_gazebo_x, self.to_plot_gazebo_y, 'r')
        # plt.subplot(212)
        # plt.plot(X, Y, 'b')
        # X_sub = [x for x in self.to_plot_gazebo_x[0::int(len(self.to_plot_gazebo_x)/len(self.to_plot_mrpt.poses))]]
        # Y_sub = [y for y in self.to_plot_gazebo_y[0::int(len(self.to_plot_gazebo_y)/len(self.to_plot_mrpt.poses))]]
        # X_MRPT = [x.pose.position.x for x in self.to_plot_mrpt.poses]
        # Y_MRPT = [y.pose.position.y for y in self.to_plot_mrpt.poses]
        # plt.figure(2)
        # plt.subplot(211)
        # plt.plot(X_sub, Y_sub, 'r')
        # plt.subplot(212)
        # plt.plot([x.pose.position.x for x in self.to_plot_mrpt.poses], [y.pose.position.y for y in self.to_plot_mrpt.poses], 'b') # List comprehention

        # plt.figure(3)
        # plt.plot([sqrt((x_gazebo - x_mrpt)**2 + (y_gazebo - y_mrpt)**2) for x_gazebo,x_mrpt,y_gazebo,y_mrpt in zip(X_sub, X_MRPT, Y_sub, Y_MRPT)], 'y')
        plt.show()


    # def gazebo_callback(self, data):
    #     if data is not None and not self._stop:
    #         data_to_parse = data.pose.pose.position
    #         if data.header.seq > self.old_gazebo_seq:
    #             self.to_plot_gazebo_x.append(data_to_parse.x)
    #             self.to_plot_gazebo_y.append(data_to_parse.y)
    #             self.old_gazebo_seq = data.header.seq

    # def mrpt_callback(self, data):
    #     if data is not None and not self._stop:
    #         if data.header.seq > self.old_mrpt_seq:
    #             self.to_plot_mrpt = data
    #             self.old_mrpt_seq = data.header.seq

    def gazebo_callback(self, data):
        if data is not None and not self._stop and self.acquire:
            self.acquire = False
            data_to_parse = data.pose.pose.position
            if data.header.seq > self.old_gazebo_seq:
                self.to_plot_gazebo_x.append(data_to_parse.x)
                self.to_plot_gazebo_y.append(data_to_parse.y)
                self.old_gazebo_seq = data.header.seq

    def mrpt_callback(self, data):
        if data is not None and not self._stop:
            self.acquire = True
            if data.header.seq > self.old_mrpt_seq:
                self.to_plot_mrpt_x.append(data.poses[-1].pose.position.x)
                self.to_plot_mrpt_y.append(data.poses[-1].pose.position.y)
                self.old_mrpt_seq = data.header.seq



if __name__ == '__main__':
    try:
        rospy.init_node('Compare', anonymous=True)
        Odometry()
        rospy.spin()
    except rospy.ROSInterruptException:
        print('ROS interrupt')