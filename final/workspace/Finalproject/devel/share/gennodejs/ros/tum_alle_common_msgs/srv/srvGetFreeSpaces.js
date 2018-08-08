// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msgFreeSpace = require('../msg/msgFreeSpace.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvGetFreeSpacesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_of = null;
      this.right_of = null;
    }
    else {
      if (initObj.hasOwnProperty('left_of')) {
        this.left_of = initObj.left_of
      }
      else {
        this.left_of = [];
      }
      if (initObj.hasOwnProperty('right_of')) {
        this.right_of = initObj.right_of
      }
      else {
        this.right_of = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvGetFreeSpacesRequest
    // Serialize message field [left_of]
    // Serialize the length for message field [left_of]
    bufferOffset = _serializer.uint32(obj.left_of.length, buffer, bufferOffset);
    obj.left_of.forEach((val) => {
      bufferOffset = msgFreeSpace.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_of]
    // Serialize the length for message field [right_of]
    bufferOffset = _serializer.uint32(obj.right_of.length, buffer, bufferOffset);
    obj.right_of.forEach((val) => {
      bufferOffset = msgFreeSpace.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvGetFreeSpacesRequest
    let len;
    let data = new srvGetFreeSpacesRequest(null);
    // Deserialize message field [left_of]
    // Deserialize array length for message field [left_of]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_of = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_of[i] = msgFreeSpace.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_of]
    // Deserialize array length for message field [right_of]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_of = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_of[i] = msgFreeSpace.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.left_of.forEach((val) => {
      length += msgFreeSpace.getMessageSize(val);
    });
    object.right_of.forEach((val) => {
      length += msgFreeSpace.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvGetFreeSpacesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e77e23d8be0a4b24c87eeddb0abcec56';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msgFreeSpace[] left_of
    msgFreeSpace[] right_of
    
    ================================================================================
    MSG: tum_alle_common_msgs/msgFreeSpace
    geometry_msgs/Point[] 	corners
    
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
    const resolved = new srvGetFreeSpacesRequest(null);
    if (msg.left_of !== undefined) {
      resolved.left_of = new Array(msg.left_of.length);
      for (let i = 0; i < resolved.left_of.length; ++i) {
        resolved.left_of[i] = msgFreeSpace.Resolve(msg.left_of[i]);
      }
    }
    else {
      resolved.left_of = []
    }

    if (msg.right_of !== undefined) {
      resolved.right_of = new Array(msg.right_of.length);
      for (let i = 0; i < resolved.right_of.length; ++i) {
        resolved.right_of[i] = msgFreeSpace.Resolve(msg.right_of[i]);
      }
    }
    else {
      resolved.right_of = []
    }

    return resolved;
    }
};

class srvGetFreeSpacesResponse {
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
    // Serializes a message object of type srvGetFreeSpacesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvGetFreeSpacesResponse
    let len;
    let data = new srvGetFreeSpacesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvGetFreeSpacesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool           success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvGetFreeSpacesResponse(null);
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
  Request: srvGetFreeSpacesRequest,
  Response: srvGetFreeSpacesResponse,
  md5sum() { return '22e0f6037d1e4f620ad89e16963171eb'; },
  datatype() { return 'tum_alle_common_msgs/srvGetFreeSpaces'; }
};
