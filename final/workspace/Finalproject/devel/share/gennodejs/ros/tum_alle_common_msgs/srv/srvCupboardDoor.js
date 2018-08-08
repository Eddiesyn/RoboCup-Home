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

class srvCupboardDoorRequest {
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
    // Serializes a message object of type srvCupboardDoorRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvCupboardDoorRequest
    let len;
    let data = new srvCupboardDoorRequest(null);
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
    return 'tum_alle_common_msgs/srvCupboardDoorRequest';
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
    const resolved = new srvCupboardDoorRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

class srvCupboardDoorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.door_detected = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = '';
      }
      if (initObj.hasOwnProperty('door_detected')) {
        this.door_detected = initObj.door_detected
      }
      else {
        this.door_detected = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvCupboardDoorResponse
    // Serialize message field [position]
    bufferOffset = _serializer.string(obj.position, buffer, bufferOffset);
    // Serialize message field [door_detected]
    bufferOffset = _serializer.bool(obj.door_detected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvCupboardDoorResponse
    let len;
    let data = new srvCupboardDoorResponse(null);
    // Deserialize message field [position]
    data.position = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [door_detected]
    data.door_detected = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.position.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvCupboardDoorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '483fff4263a46b56a461e1ddc69726c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string position
    bool   door_detected
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvCupboardDoorResponse(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = ''
    }

    if (msg.door_detected !== undefined) {
      resolved.door_detected = msg.door_detected;
    }
    else {
      resolved.door_detected = false
    }

    return resolved;
    }
};

module.exports = {
  Request: srvCupboardDoorRequest,
  Response: srvCupboardDoorResponse,
  md5sum() { return 'ccf14741459eac4d4f2f5a05c6840a9d'; },
  datatype() { return 'tum_alle_common_msgs/srvCupboardDoor'; }
};
