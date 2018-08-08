// Auto-generated. Do not edit!

// (in-package all_msgs.srv)


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

class send_posRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.world_pose = null;
      this.is_target = null;
    }
    else {
      if (initObj.hasOwnProperty('world_pose')) {
        this.world_pose = initObj.world_pose
      }
      else {
        this.world_pose = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('is_target')) {
        this.is_target = initObj.is_target
      }
      else {
        this.is_target = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type send_posRequest
    // Serialize message field [world_pose]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.world_pose, buffer, bufferOffset);
    // Serialize message field [is_target]
    bufferOffset = _serializer.bool(obj.is_target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type send_posRequest
    let len;
    let data = new send_posRequest(null);
    // Deserialize message field [world_pose]
    data.world_pose = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_target]
    data.is_target = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.world_pose);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_msgs/send_posRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3348dd4bd9730a30fe2f778cbae7fee3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PointStamped world_pose
    bool is_target
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new send_posRequest(null);
    if (msg.world_pose !== undefined) {
      resolved.world_pose = geometry_msgs.msg.PointStamped.Resolve(msg.world_pose)
    }
    else {
      resolved.world_pose = new geometry_msgs.msg.PointStamped()
    }

    if (msg.is_target !== undefined) {
      resolved.is_target = msg.is_target;
    }
    else {
      resolved.is_target = false
    }

    return resolved;
    }
};

class send_posResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type send_posResponse
    // Serialize message field [flag]
    bufferOffset = _serializer.bool(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type send_posResponse
    let len;
    let data = new send_posResponse(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_msgs/send_posResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24842bc754e0f5cc982338eca1269251';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool flag
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new send_posResponse(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = false
    }

    return resolved;
    }
};

module.exports = {
  Request: send_posRequest,
  Response: send_posResponse,
  md5sum() { return '0937dcad83c5429e3efaf62274855790'; },
  datatype() { return 'all_msgs/send_pos'; }
};
