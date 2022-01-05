;; Auto-generated. Do not edit!


(when (boundp 'robot_control_simulation::ball_traj)
  (if (not (find-package "ROBOT_CONTROL_SIMULATION"))
    (make-package "ROBOT_CONTROL_SIMULATION"))
  (shadow 'ball_traj (find-package "ROBOT_CONTROL_SIMULATION")))
(unless (find-package "ROBOT_CONTROL_SIMULATION::BALL_TRAJ")
  (make-package "ROBOT_CONTROL_SIMULATION::BALL_TRAJ"))
(unless (find-package "ROBOT_CONTROL_SIMULATION::BALL_TRAJREQUEST")
  (make-package "ROBOT_CONTROL_SIMULATION::BALL_TRAJREQUEST"))
(unless (find-package "ROBOT_CONTROL_SIMULATION::BALL_TRAJRESPONSE")
  (make-package "ROBOT_CONTROL_SIMULATION::BALL_TRAJRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robot_control_simulation::ball_trajRequest
  :super ros::object
  :slots (_Message ))

(defmethod robot_control_simulation::ball_trajRequest
  (:init
   (&key
    ((:Message __Message) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _Message __Message)
   self)
  (:Message
   (&rest __Message)
   (if (keywordp (car __Message))
       (send* _Message __Message)
     (progn
       (if __Message (setq _Message (car __Message)))
       _Message)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _Message
    (send _Message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _Message
       (send _Message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _Message
     (send _Message :deserialize buf ptr-) (incf ptr- (send _Message :serialization-length))
   ;;
   self)
  )

(defclass robot_control_simulation::ball_trajResponse
  :super ros::object
  :slots (_ee_trans_error _ee_rot_error _ball_caught ))

(defmethod robot_control_simulation::ball_trajResponse
  (:init
   (&key
    ((:ee_trans_error __ee_trans_error) 0.0)
    ((:ee_rot_error __ee_rot_error) 0.0)
    ((:ball_caught __ball_caught) nil)
    )
   (send-super :init)
   (setq _ee_trans_error (float __ee_trans_error))
   (setq _ee_rot_error (float __ee_rot_error))
   (setq _ball_caught __ball_caught)
   self)
  (:ee_trans_error
   (&optional __ee_trans_error)
   (if __ee_trans_error (setq _ee_trans_error __ee_trans_error)) _ee_trans_error)
  (:ee_rot_error
   (&optional __ee_rot_error)
   (if __ee_rot_error (setq _ee_rot_error __ee_rot_error)) _ee_rot_error)
  (:ball_caught
   (&optional (__ball_caught :null))
   (if (not (eq __ball_caught :null)) (setq _ball_caught __ball_caught)) _ball_caught)
  (:serialization-length
   ()
   (+
    ;; float32 _ee_trans_error
    4
    ;; float32 _ee_rot_error
    4
    ;; bool _ball_caught
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ee_trans_error
       (sys::poke _ee_trans_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ee_rot_error
       (sys::poke _ee_rot_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _ball_caught
       (if _ball_caught (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ee_trans_error
     (setq _ee_trans_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ee_rot_error
     (setq _ee_rot_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _ball_caught
     (setq _ball_caught (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_control_simulation::ball_traj
  :super ros::object
  :slots ())

(setf (get robot_control_simulation::ball_traj :md5sum-) "242640a4f4c3cf92c025919e644ef192")
(setf (get robot_control_simulation::ball_traj :datatype-) "robot_control_simulation/ball_traj")
(setf (get robot_control_simulation::ball_traj :request) robot_control_simulation::ball_trajRequest)
(setf (get robot_control_simulation::ball_traj :response) robot_control_simulation::ball_trajResponse)

(defmethod robot_control_simulation::ball_trajRequest
  (:response () (instance robot_control_simulation::ball_trajResponse :init)))

(setf (get robot_control_simulation::ball_trajRequest :md5sum-) "242640a4f4c3cf92c025919e644ef192")
(setf (get robot_control_simulation::ball_trajRequest :datatype-) "robot_control_simulation/ball_trajRequest")
(setf (get robot_control_simulation::ball_trajRequest :definition-)
      "geometry_msgs/Pose Message

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
float32 ee_trans_error
float32 ee_rot_error
bool ball_caught

")

(setf (get robot_control_simulation::ball_trajResponse :md5sum-) "242640a4f4c3cf92c025919e644ef192")
(setf (get robot_control_simulation::ball_trajResponse :datatype-) "robot_control_simulation/ball_trajResponse")
(setf (get robot_control_simulation::ball_trajResponse :definition-)
      "geometry_msgs/Pose Message

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
float32 ee_trans_error
float32 ee_rot_error
bool ball_caught

")



(provide :robot_control_simulation/ball_traj "242640a4f4c3cf92c025919e644ef192")


