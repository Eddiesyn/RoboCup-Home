// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msg2DPrediction = require('./msg2DPrediction.js');
let msg3DPrediction = require('./msg3DPrediction.js');

//-----------------------------------------------------------

class msg3DTracking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracked_id = null;
      this.ids = null;
      this.predictions2D = null;
      this.predictions = null;
    }
    else {
      if (initObj.hasOwnProperty('tracked_id')) {
        this.tracked_id = initObj.tracked_id
      }
      else {
        this.tracked_id = 0;
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('predictions2D')) {
        this.predictions2D = initObj.predictions2D
      }
      else {
        this.predictions2D = [];
      }
      if (initObj.hasOwnProperty('predictions')) {
        this.predictions = initObj.predictions
      }
      else {
        this.predictions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg3DTracking
    // Serialize message field [tracked_id]
    bufferOffset = _serializer.int32(obj.tracked_id, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [predictions2D]
    // Serialize the length for message field [predictions2D]
    bufferOffset = _serializer.uint32(obj.predictions2D.length, buffer, bufferOffset);
    obj.predictions2D.forEach((val) => {
      bufferOffset = msg2DPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predictions]
    // Serialize the length for message field [predictions]
    bufferOffset = _serializer.uint32(obj.predictions.length, buffer, bufferOffset);
    obj.predictions.forEach((val) => {
      bufferOffset = msg3DPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg3DTracking
    let len;
    let data = new msg3DTracking(null);
    // Deserialize message field [tracked_id]
    data.tracked_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [predictions2D]
    // Deserialize array length for message field [predictions2D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions2D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions2D[i] = msg2DPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predictions]
    // Deserialize array length for message field [predictions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions[i] = msg3DPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.ids.length;
    object.predictions2D.forEach((val) => {
      length += msg2DPrediction.getMessageSize(val);
    });
    object.predictions.forEach((val) => {
      length += msg3DPrediction.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tum_alle_common_msgs/msg3DTracking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2d4dcf1d4d32e9b2837927ad118d684';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32                     tracked_id
    int32[]                   ids
    msg2DPrediction[]         predictions2D
    msg3DPrediction[]         predictions
    
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
    const resolved = new msg3DTracking(null);
    if (msg.tracked_id !== undefined) {
      resolved.tracked_id = msg.tracked_id;
    }
    else {
      resolved.tracked_id = 0
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.predictions2D !== undefined) {
      resolved.predictions2D = new Array(msg.predictions2D.length);
      for (let i = 0; i < resolved.predictions2D.length; ++i) {
        resolved.predictions2D[i] = msg2DPrediction.Resolve(msg.predictions2D[i]);
      }
    }
    else {
      resolved.predictions2D = []
    }

    if (msg.predictions !== undefined) {
      resolved.predictions = new Array(msg.predictions.length);
      for (let i = 0; i < resolved.predictions.length; ++i) {
        resolved.predictions[i] = msg3DPrediction.Resolve(msg.predictions[i]);
      }
    }
    else {
      resolved.predictions = []
    }

    return resolved;
    }
};

module.exports = msg3DTracking;
