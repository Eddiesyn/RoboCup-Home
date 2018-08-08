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

class srvAnswerReasoningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intent = null;
      this.properties = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('intent')) {
        this.intent = initObj.intent
      }
      else {
        this.intent = '';
      }
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = [];
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvAnswerReasoningRequest
    // Serialize message field [intent]
    bufferOffset = _serializer.string(obj.intent, buffer, bufferOffset);
    // Serialize message field [properties]
    bufferOffset = _arraySerializer.string(obj.properties, buffer, bufferOffset, null);
    // Serialize message field [values]
    bufferOffset = _arraySerializer.string(obj.values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvAnswerReasoningRequest
    let len;
    let data = new srvAnswerReasoningRequest(null);
    // Deserialize message field [intent]
    data.intent = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [properties]
    data.properties = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [values]
    data.values = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.intent.length;
    object.properties.forEach((val) => {
      length += 4 + val.length;
    });
    object.values.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvAnswerReasoningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23656240c9839401071b2ab57504e2bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string intent
    string[] properties
    string[] values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvAnswerReasoningRequest(null);
    if (msg.intent !== undefined) {
      resolved.intent = msg.intent;
    }
    else {
      resolved.intent = ''
    }

    if (msg.properties !== undefined) {
      resolved.properties = msg.properties;
    }
    else {
      resolved.properties = []
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = []
    }

    return resolved;
    }
};

class srvAnswerReasoningResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvAnswerReasoningResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvAnswerReasoningResponse
    let len;
    let data = new srvAnswerReasoningResponse(null);
    // Deserialize message field [answer]
    data.answer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.answer.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvAnswerReasoningResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e708f879c94bb931716d8f4f130f30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string answer
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvAnswerReasoningResponse(null);
    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: srvAnswerReasoningRequest,
  Response: srvAnswerReasoningResponse,
  md5sum() { return '678dbec11527080c5219c3331bbb3138'; },
  datatype() { return 'tum_alle_common_msgs/srvAnswerReasoning'; }
};
