
(cl:in-package :asdf)

(defsystem "robot_control_simulation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ball_traj" :depends-on ("_package_ball_traj"))
    (:file "_package_ball_traj" :depends-on ("_package"))
  ))