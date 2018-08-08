// Auto-generated. Do not edit!

// (in-package tum_alle_athome_speech_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvGenerateAnswerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.question = null;
      this.intention = null;
    }
    else {
      if (initObj.hasOwnProperty('question')) {
        this.question = initObj.question
      }
      else {
        this.question = '';
      }
      if (initObj.hasOwnProperty('intention')) {
        this.intention = initObj.intention
      }
      else {
        this.intention = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvGenerateAnswerRequest
    // Serialize message field [question]
    bufferOffset = _serializer.string(obj.question, buffer, bufferOffset);
    // Serialize message field [intention]
    bufferOffset = _serializer.string(obj.intention, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvGenerateAnswerRequest
    let len;
    let data = new srvGenerateAnswerRequest(null);
    // Deserialize message field [question]
    data.question = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [intention]
    data.intention = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.question.length;
    length += object.intention.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_athome_speech_msgs/srvGenerateAnswerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e80bc355094acc36a57a10dd22c4924c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string question
    string intention
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvGenerateAnswerRequest(null);
    if (msg.question !== undefined) {
      resolved.question = msg.question;
    }
    else {
      resolved.question = ''
    }

    if (msg.intention !== undefined) {
      resolved.intention = msg.intention;
    }
    else {
      resolved.intention = ''
    }

    return resolved;
    }
};

class srvGenerateAnswerResponse {
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
    // Serializes a message object of type srvGenerateAnswerResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvGenerateAnswerResponse
    let len;
    let data = new srvGenerateAnswerResponse(null);
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
    return 'tum_alle_athome_speech_msgs/srvGenerateAnswerResponse';
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
    const resolved = new srvGenerateAnswerResponse(null);
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
  Request: srvGenerateAnswerRequest,
  Response: srvGenerateAnswerResponse,
  md5sum() { return '20a4052d904bff6ea1be92753e941f66'; },
  datatype() { return 'tum_alle_athome_speech_msgs/srvGenerateAnswer'; }
};
