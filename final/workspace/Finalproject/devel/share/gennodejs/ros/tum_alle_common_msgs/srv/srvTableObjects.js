// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msg2DPrediction = require('../msg/msg2DPrediction.js');
let msg3DPrediction = require('../msg/msg3DPrediction.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvTableObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pred2D = null;
      this.pred3D = null;
    }
    else {
      if (initObj.hasOwnProperty('pred2D')) {
        this.pred2D = initObj.pred2D
      }
      else {
        this.pred2D = [];
      }
      if (initObj.hasOwnProperty('pred3D')) {
        this.pred3D = initObj.pred3D
      }
      else {
        this.pred3D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvTableObjectsRequest
    // Serialize message field [pred2D]
    // Serialize the length for message field [pred2D]
    bufferOffset = _serializer.uint32(obj.pred2D.length, buffer, bufferOffset);
    obj.pred2D.forEach((val) => {
      bufferOffset = msg2DPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pred3D]
    // Serialize the length for message field [pred3D]
    bufferOffset = _serializer.uint32(obj.pred3D.length, buffer, bufferOffset);
    obj.pred3D.forEach((val) => {
      bufferOffset = msg3DPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvTableObjectsRequest
    let len;
    let data = new srvTableObjectsRequest(null);
    // Deserialize message field [pred2D]
    // Deserialize array length for message field [pred2D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pred2D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pred2D[i] = msg2DPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pred3D]
    // Deserialize array length for message field [pred3D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pred3D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pred3D[i] = msg3DPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pred2D.forEach((val) => {
      length += msg2DPrediction.getMessageSize(val);
    });
    object.pred3D.forEach((val) => {
      length += msg3DPrediction.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvTableObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa8adef27f07dd150f5d037007e485c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msg2DPrediction[] pred2D
    msg3DPrediction[] pred3D
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg2DPrediction
    string    label
    float64   confidence
    int32[4]  rect
    #geometry_msgs/Point[] object_centers
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg3DPrediction
    string                      frame
    geometry_msgs/PointStamped  point
    geometry_msgs/Vector3       size
    string                      label
    float32                     confidence
    
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new srvTableObjectsRequest(null);
    if (msg.pred2D !== undefined) {
      resolved.pred2D = new Array(msg.pred2D.length);
      for (let i = 0; i < resolved.pred2D.length; ++i) {
        resolved.pred2D[i] = msg2DPrediction.Resolve(msg.pred2D[i]);
      }
    }
    else {
      resolved.pred2D = []
    }

    if (msg.pred3D !== undefined) {
      resolved.pred3D = new Array(msg.pred3D.length);
      for (let i = 0; i < resolved.pred3D.length; ++i) {
        resolved.pred3D[i] = msg3DPrediction.Resolve(msg.pred3D[i]);
      }
    }
    else {
      resolved.pred3D = []
    }

    return resolved;
    }
};

class srvTableObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvTableObjectsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvTableObjectsResponse
    let len;
    let data = new srvTableObjectsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvTableObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool              success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvTableObjectsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: srvTableObjectsRequest,
  Response: srvTableObjectsResponse,
  md5sum() { return 'a1ce48b3803e21bee5394bd8790e6e04'; },
  datatype() { return 'tum_alle_common_msgs/srvTableObjects'; }
};
