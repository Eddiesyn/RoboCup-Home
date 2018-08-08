// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msgRegionOfInterest3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame = null;
      this.x_offset = null;
      this.y_offset = null;
      this.z_offset = null;
      this.height = null;
      this.width = null;
      this.depth = null;
    }
    else {
      if (initObj.hasOwnProperty('frame')) {
        this.frame = initObj.frame
      }
      else {
        this.frame = '';
      }
      if (initObj.hasOwnProperty('x_offset')) {
        this.x_offset = initObj.x_offset
      }
      else {
        this.x_offset = 0.0;
      }
      if (initObj.hasOwnProperty('y_offset')) {
        this.y_offset = initObj.y_offset
      }
      else {
        this.y_offset = 0.0;
      }
      if (initObj.hasOwnProperty('z_offset')) {
        this.z_offset = initObj.z_offset
      }
      else {
        this.z_offset = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msgRegionOfInterest3D
    // Serialize message field [frame]
    bufferOffset = _serializer.string(obj.frame, buffer, bufferOffset);
    // Serialize message field [x_offset]
    bufferOffset = _serializer.float64(obj.x_offset, buffer, bufferOffset);
    // Serialize message field [y_offset]
    bufferOffset = _serializer.float64(obj.y_offset, buffer, bufferOffset);
    // Serialize message field [z_offset]
    bufferOffset = _serializer.float64(obj.z_offset, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.float64(obj.depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msgRegionOfInterest3D
    let len;
    let data = new msgRegionOfInterest3D(null);
    // Deserialize message field [frame]
    data.frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x_offset]
    data.x_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_offset]
    data.y_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_offset]
    data.z_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frame.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tum_alle_common_msgs/msgRegionOfInterest3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e870a0c6556353ad469201e1bde951a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  frame
    float64 x_offset
    float64 y_offset
    float64 z_offset
    float64 height
    float64 width
    float64 depth
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msgRegionOfInterest3D(null);
    if (msg.frame !== undefined) {
      resolved.frame = msg.frame;
    }
    else {
      resolved.frame = ''
    }

    if (msg.x_offset !== undefined) {
      resolved.x_offset = msg.x_offset;
    }
    else {
      resolved.x_offset = 0.0
    }

    if (msg.y_offset !== undefined) {
      resolved.y_offset = msg.y_offset;
    }
    else {
      resolved.y_offset = 0.0
    }

    if (msg.z_offset !== undefined) {
      resolved.z_offset = msg.z_offset;
    }
    else {
      resolved.z_offset = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0.0
    }

    return resolved;
    }
};

module.exports = msgRegionOfInterest3D;
