; Auto-generated. Do not edit!


(cl:in-package robot_control_simulation-srv)


;//! \htmlinclude ball_traj-request.msg.html

(cl:defclass <ball_traj-request> (roslisp-msg-protocol:ros-message)
  ((Message
    :reader Message
    :initarg :Message
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ball_traj-request (<ball_traj-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ball_traj-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ball_traj-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_simulation-srv:<ball_traj-request> is deprecated: use robot_control_simulation-srv:ball_traj-request instead.")))

(cl:ensure-generic-function 'Message-val :lambda-list '(m))
(cl:defmethod Message-val ((m <ball_traj-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_simulation-srv:Message-val is deprecated.  Use robot_control_simulation-srv:Message instead.")
  (Message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ball_traj-request>) ostream)
  "Serializes a message object of type '<ball_traj-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ball_traj-request>) istream)
  "Deserializes a message object of type '<ball_traj-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ball_traj-request>)))
  "Returns string type for a service object of type '<ball_traj-request>"
  "robot_control_simulation/ball_trajRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ball_traj-request)))
  "Returns string type for a service object of type 'ball_traj-request"
  "robot_control_simulation/ball_trajRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ball_traj-request>)))
  "Returns md5sum for a message object of type '<ball_traj-request>"
  "242640a4f4c3cf92c025919e644ef192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ball_traj-request)))
  "Returns md5sum for a message object of type 'ball_traj-request"
  "242640a4f4c3cf92c025919e644ef192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ball_traj-request>)))
  "Returns full string definition for message of type '<ball_traj-request>"
  (cl:format cl:nil "geometry_msgs/Pose Message~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ball_traj-request)))
  "Returns full string definition for message of type 'ball_traj-request"
  (cl:format cl:nil "geometry_msgs/Pose Message~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ball_traj-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ball_traj-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ball_traj-request
    (cl:cons ':Message (Message msg))
))
;//! \htmlinclude ball_traj-response.msg.html

(cl:defclass <ball_traj-response> (roslisp-msg-protocol:ros-message)
  ((ee_trans_error
    :reader ee_trans_error
    :initarg :ee_trans_error
    :type cl:float
    :initform 0.0)
   (ee_rot_error
    :reader ee_rot_error
    :initarg :ee_rot_error
    :type cl:float
    :initform 0.0)
   (ball_caught
    :reader ball_caught
    :initarg :ball_caught
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ball_traj-response (<ball_traj-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ball_traj-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ball_traj-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control_simulation-srv:<ball_traj-response> is deprecated: use robot_control_simulation-srv:ball_traj-response instead.")))

(cl:ensure-generic-function 'ee_trans_error-val :lambda-list '(m))
(cl:defmethod ee_trans_error-val ((m <ball_traj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_simulation-srv:ee_trans_error-val is deprecated.  Use robot_control_simulation-srv:ee_trans_error instead.")
  (ee_trans_error m))

(cl:ensure-generic-function 'ee_rot_error-val :lambda-list '(m))
(cl:defmethod ee_rot_error-val ((m <ball_traj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_simulation-srv:ee_rot_error-val is deprecated.  Use robot_control_simulation-srv:ee_rot_error instead.")
  (ee_rot_error m))

(cl:ensure-generic-function 'ball_caught-val :lambda-list '(m))
(cl:defmethod ball_caught-val ((m <ball_traj-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control_simulation-srv:ball_caught-val is deprecated.  Use robot_control_simulation-srv:ball_caught instead.")
  (ball_caught m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ball_traj-response>) ostream)
  "Serializes a message object of type '<ball_traj-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ee_trans_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ee_rot_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ball_caught) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ball_traj-response>) istream)
  "Deserializes a message object of type '<ball_traj-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ee_trans_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ee_rot_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'ball_caught) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ball_traj-response>)))
  "Returns string type for a service object of type '<ball_traj-response>"
  "robot_control_simulation/ball_trajResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ball_traj-response)))
  "Returns string type for a service object of type 'ball_traj-response"
  "robot_control_simulation/ball_trajResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ball_traj-response>)))
  "Returns md5sum for a message object of type '<ball_traj-response>"
  "242640a4f4c3cf92c025919e644ef192")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ball_traj-response)))
  "Returns md5sum for a message object of type 'ball_traj-response"
  "242640a4f4c3cf92c025919e644ef192")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ball_traj-response>)))
  "Returns full string definition for message of type '<ball_traj-response>"
  (cl:format cl:nil "float32 ee_trans_error~%float32 ee_rot_error~%bool ball_caught~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ball_traj-response)))
  "Returns full string definition for message of type 'ball_traj-response"
  (cl:format cl:nil "float32 ee_trans_error~%float32 ee_rot_error~%bool ball_caught~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ball_traj-response>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ball_traj-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ball_traj-response
    (cl:cons ':ee_trans_error (ee_trans_error msg))
    (cl:cons ':ee_rot_error (ee_rot_error msg))
    (cl:cons ':ball_caught (ball_caught msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ball_traj)))
  'ball_traj-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ball_traj)))
  'ball_traj-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ball_traj)))
  "Returns string type for a service object of type '<ball_traj>"
  "robot_control_simulation/ball_traj")