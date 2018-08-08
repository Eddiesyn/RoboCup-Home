// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Box = require('./Box.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Boxes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Boxes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Boxes')) {
        this.Boxes = initObj.Boxes
      }
      else {
        this.Boxes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Boxes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Boxes]
    // Serialize the length for message field [Boxes]
    bufferOffset = _serializer.uint32(obj.Boxes.length, buffer, bufferOffset);
    obj.Boxes.forEach((val) => {
      bufferOffset = Box.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Boxes
    let len;
    let data = new Boxes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Boxes]
    // Deserialize array length for message field [Boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Boxes[i] = Box.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.Boxes.forEach((val) => {
      length += Box.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Boxes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e6d6625d0cf4ae9acd2f65688e673d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Box[] Boxes
    
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
    MSG: all_msgs/Box
    Header header
    string id
    float64 probability
    int32 x
    int32 y
    int32 height
    int32 width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Boxes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Boxes !== undefined) {
      resolved.Boxes = new Array(msg.Boxes.length);
      for (let i = 0; i < resolved.Boxes.length; ++i) {
        resolved.Boxes[i] = Box.Resolve(msg.Boxes[i]);
      }
    }
    else {
      resolved.Boxes = []
    }

    return resolved;
    }
};

module.exports = Boxes;
