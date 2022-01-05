// Auto-generated. Do not edit!

// (in-package robot_control_simulation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ball_trajRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Message = null;
    }
    else {
      if (initObj.hasOwnProperty('Message')) {
        this.Message = initObj.Message
      }
      else {
        this.Message = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ball_trajRequest
    // Serialize message field [Message]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.Message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ball_trajRequest
    let len;
    let data = new ball_trajRequest(null);
    // Deserialize message field [Message]
    data.Message = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_simulation/ball_trajRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5796f8cd2d1a58e65dd4b15c149f2b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose Message
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ball_trajRequest(null);
    if (msg.Message !== undefined) {
      resolved.Message = geometry_msgs.msg.Pose.Resolve(msg.Message)
    }
    else {
      resolved.Message = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class ball_trajResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ee_trans_error = null;
      this.ee_rot_error = null;
      this.ball_caught = null;
    }
    else {
      if (initObj.hasOwnProperty('ee_trans_error')) {
        this.ee_trans_error = initObj.ee_trans_error
      }
      else {
        this.ee_trans_error = 0.0;
      }
      if (initObj.hasOwnProperty('ee_rot_error')) {
        this.ee_rot_error = initObj.ee_rot_error
      }
      else {
        this.ee_rot_error = 0.0;
      }
      if (initObj.hasOwnProperty('ball_caught')) {
        this.ball_caught = initObj.ball_caught
      }
      else {
        this.ball_caught = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ball_trajResponse
    // Serialize message field [ee_trans_error]
    bufferOffset = _serializer.float32(obj.ee_trans_error, buffer, bufferOffset);
    // Serialize message field [ee_rot_error]
    bufferOffset = _serializer.float32(obj.ee_rot_error, buffer, bufferOffset);
    // Serialize message field [ball_caught]
    bufferOffset = _serializer.bool(obj.ball_caught, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ball_trajResponse
    let len;
    let data = new ball_trajResponse(null);
    // Deserialize message field [ee_trans_error]
    data.ee_trans_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ee_rot_error]
    data.ee_rot_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ball_caught]
    data.ball_caught = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_control_simulation/ball_trajResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '856a7f83327d8ae1441596252020ead2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ee_trans_error
    float32 ee_rot_error
    bool ball_caught
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ball_trajResponse(null);
    if (msg.ee_trans_error !== undefined) {
      resolved.ee_trans_error = msg.ee_trans_error;
    }
    else {
      resolved.ee_trans_error = 0.0
    }

    if (msg.ee_rot_error !== undefined) {
      resolved.ee_rot_error = msg.ee_rot_error;
    }
    else {
      resolved.ee_rot_error = 0.0
    }

    if (msg.ball_caught !== undefined) {
      resolved.ball_caught = msg.ball_caught;
    }
    else {
      resolved.ball_caught = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ball_trajRequest,
  Response: ball_trajResponse,
  md5sum() { return '242640a4f4c3cf92c025919e644ef192'; },
  datatype() { return 'robot_control_simulation/ball_traj'; }
};
