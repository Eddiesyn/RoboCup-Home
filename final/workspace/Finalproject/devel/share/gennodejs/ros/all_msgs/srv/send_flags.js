// Auto-generated. Do not edit!

// (in-package all_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class send_flagsRequest {
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
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type send_flagsRequest
    // Serialize message field [flag]
    bufferOffset = _serializer.int64(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type send_flagsRequest
    let len;
    let data = new send_flagsRequest(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_msgs/send_flagsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87ee459c4b4bcda4c5ae0619ce324ea2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int64 flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new send_flagsRequest(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

class send_flagsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reply = null;
    }
    else {
      if (initObj.hasOwnProperty('reply')) {
        this.reply = initObj.reply
      }
      else {
        this.reply = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type send_flagsResponse
    // Serialize message field [reply]
    bufferOffset = _serializer.int64(obj.reply, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type send_flagsResponse
    let len;
    let data = new send_flagsResponse(null);
    // Deserialize message field [reply]
    data.reply = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'all_msgs/send_flagsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60413af40da7a072a76f2e1c4dc15e92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int64 reply
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new send_flagsResponse(null);
    if (msg.reply !== undefined) {
      resolved.reply = msg.reply;
    }
    else {
      resolved.reply = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: send_flagsRequest,
  Response: send_flagsResponse,
  md5sum() { return '020bdbc33a7ee6b93f149ccfbb819f7f'; },
  datatype() { return 'all_msgs/send_flags'; }
};
