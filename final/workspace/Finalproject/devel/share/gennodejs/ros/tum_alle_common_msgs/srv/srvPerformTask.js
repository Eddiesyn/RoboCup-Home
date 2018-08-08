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

class srvPerformTaskRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.goal_location = null;
      this.goal_object = null;
      this.object_general_location = null;
      this.object_specific_location = null;
      this.speech_text = null;
      this.confirmation = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('goal_location')) {
        this.goal_location = initObj.goal_location
      }
      else {
        this.goal_location = '';
      }
      if (initObj.hasOwnProperty('goal_object')) {
        this.goal_object = initObj.goal_object
      }
      else {
        this.goal_object = '';
      }
      if (initObj.hasOwnProperty('object_general_location')) {
        this.object_general_location = initObj.object_general_location
      }
      else {
        this.object_general_location = '';
      }
      if (initObj.hasOwnProperty('object_specific_location')) {
        this.object_specific_location = initObj.object_specific_location
      }
      else {
        this.object_specific_location = '';
      }
      if (initObj.hasOwnProperty('speech_text')) {
        this.speech_text = initObj.speech_text
      }
      else {
        this.speech_text = '';
      }
      if (initObj.hasOwnProperty('confirmation')) {
        this.confirmation = initObj.confirmation
      }
      else {
        this.confirmation = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvPerformTaskRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [goal_location]
    bufferOffset = _serializer.string(obj.goal_location, buffer, bufferOffset);
    // Serialize message field [goal_object]
    bufferOffset = _serializer.string(obj.goal_object, buffer, bufferOffset);
    // Serialize message field [object_general_location]
    bufferOffset = _serializer.string(obj.object_general_location, buffer, bufferOffset);
    // Serialize message field [object_specific_location]
    bufferOffset = _serializer.string(obj.object_specific_location, buffer, bufferOffset);
    // Serialize message field [speech_text]
    bufferOffset = _serializer.string(obj.speech_text, buffer, bufferOffset);
    // Serialize message field [confirmation]
    bufferOffset = _serializer.string(obj.confirmation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvPerformTaskRequest
    let len;
    let data = new srvPerformTaskRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_location]
    data.goal_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_object]
    data.goal_object = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_general_location]
    data.object_general_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_specific_location]
    data.object_specific_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speech_text]
    data.speech_text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confirmation]
    data.confirmation = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    length += object.goal_location.length;
    length += object.goal_object.length;
    length += object.object_general_location.length;
    length += object.object_specific_location.length;
    length += object.speech_text.length;
    length += object.confirmation.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvPerformTaskRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbd6abba08de9ad042e50b1f8315960c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string command
    string goal_location
    string goal_object
    string object_general_location
    string object_specific_location
    string speech_text
    string confirmation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvPerformTaskRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.goal_location !== undefined) {
      resolved.goal_location = msg.goal_location;
    }
    else {
      resolved.goal_location = ''
    }

    if (msg.goal_object !== undefined) {
      resolved.goal_object = msg.goal_object;
    }
    else {
      resolved.goal_object = ''
    }

    if (msg.object_general_location !== undefined) {
      resolved.object_general_location = msg.object_general_location;
    }
    else {
      resolved.object_general_location = ''
    }

    if (msg.object_specific_location !== undefined) {
      resolved.object_specific_location = msg.object_specific_location;
    }
    else {
      resolved.object_specific_location = ''
    }

    if (msg.speech_text !== undefined) {
      resolved.speech_text = msg.speech_text;
    }
    else {
      resolved.speech_text = ''
    }

    if (msg.confirmation !== undefined) {
      resolved.confirmation = msg.confirmation;
    }
    else {
      resolved.confirmation = ''
    }

    return resolved;
    }
};

class srvPerformTaskResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvPerformTaskResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvPerformTaskResponse
    let len;
    let data = new srvPerformTaskResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvPerformTaskResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvPerformTaskResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: srvPerformTaskRequest,
  Response: srvPerformTaskResponse,
  md5sum() { return 'cbd6abba08de9ad042e50b1f8315960c'; },
  datatype() { return 'tum_alle_common_msgs/srvPerformTask'; }
};
