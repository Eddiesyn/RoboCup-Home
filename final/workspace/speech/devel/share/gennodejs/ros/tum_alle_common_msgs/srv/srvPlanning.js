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

class srvPlanningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.object_general_location = null;
      this.object_specific_location = null;
      this.goal_location = null;
      this.goal_object = null;
      this.speech_text = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
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
      if (initObj.hasOwnProperty('speech_text')) {
        this.speech_text = initObj.speech_text
      }
      else {
        this.speech_text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvPlanningRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [object_general_location]
    bufferOffset = _serializer.string(obj.object_general_location, buffer, bufferOffset);
    // Serialize message field [object_specific_location]
    bufferOffset = _serializer.string(obj.object_specific_location, buffer, bufferOffset);
    // Serialize message field [goal_location]
    bufferOffset = _serializer.string(obj.goal_location, buffer, bufferOffset);
    // Serialize message field [goal_object]
    bufferOffset = _serializer.string(obj.goal_object, buffer, bufferOffset);
    // Serialize message field [speech_text]
    bufferOffset = _serializer.string(obj.speech_text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvPlanningRequest
    let len;
    let data = new srvPlanningRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_general_location]
    data.object_general_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_specific_location]
    data.object_specific_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_location]
    data.goal_location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal_object]
    data.goal_object = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speech_text]
    data.speech_text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    length += object.object_general_location.length;
    length += object.object_specific_location.length;
    length += object.goal_location.length;
    length += object.goal_object.length;
    length += object.speech_text.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvPlanningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8bba502672996d4d398addb4865b89a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string command
    string object_general_location
    string object_specific_location
    string goal_location
    string goal_object
    string speech_text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvPlanningRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
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

    if (msg.speech_text !== undefined) {
      resolved.speech_text = msg.speech_text;
    }
    else {
      resolved.speech_text = ''
    }

    return resolved;
    }
};

class srvPlanningResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvPlanningResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvPlanningResponse
    let len;
    let data = new srvPlanningResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvPlanningResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fe5af303955c287688e7347e9b00278';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvPlanningResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: srvPlanningRequest,
  Response: srvPlanningResponse,
  md5sum() { return '4e32a46cd1a62ca71b3f699ad60b447c'; },
  datatype() { return 'tum_alle_common_msgs/srvPlanning'; }
};
