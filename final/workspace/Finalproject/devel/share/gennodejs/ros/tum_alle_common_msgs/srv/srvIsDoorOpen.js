// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvIsDoorOpenRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvIsDoorOpenRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvIsDoorOpenRequest
    let len;
    let data = new srvIsDoorOpenRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvIsDoorOpenRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cba5e21e920a3a2b7b375cb65b64cdea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvIsDoorOpenRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

class srvIsDoorOpenResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isOpen = null;
    }
    else {
      if (initObj.hasOwnProperty('isOpen')) {
        this.isOpen = initObj.isOpen
      }
      else {
        this.isOpen = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvIsDoorOpenResponse
    // Serialize message field [isOpen]
    bufferOffset = _serializer.bool(obj.isOpen, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvIsDoorOpenResponse
    let len;
    let data = new srvIsDoorOpenResponse(null);
    // Deserialize message field [isOpen]
    data.isOpen = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvIsDoorOpenResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c92bd2fb46b8589624958a59ec7d67b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isOpen
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvIsDoorOpenResponse(null);
    if (msg.isOpen !== undefined) {
      resolved.isOpen = msg.isOpen;
    }
    else {
      resolved.isOpen = false
    }

    return resolved;
    }
};

module.exports = {
  Request: srvIsDoorOpenRequest,
  Response: srvIsDoorOpenResponse,
  md5sum() { return '71761759cbee9765d6f47a7b9585bd82'; },
  datatype() { return 'tum_alle_common_msgs/srvIsDoorOpen'; }
};
