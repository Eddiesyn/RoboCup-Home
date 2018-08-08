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

class msg2DPrediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.confidence = null;
      this.rect = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('rect')) {
        this.rect = initObj.rect
      }
      else {
        this.rect = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg2DPrediction
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Check that the constant length array field [rect] has the right length
    if (obj.rect.length !== 4) {
      throw new Error('Unable to serialize array field rect - length must be 4')
    }
    // Serialize message field [rect]
    bufferOffset = _arraySerializer.int32(obj.rect, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg2DPrediction
    let len;
    let data = new msg2DPrediction(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rect]
    data.rect = _arrayDeserializer.int32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tum_alle_common_msgs/msg2DPrediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e72cd172d1661b939105f76a5f0e9bca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string    label
    float64   confidence
    int32[4]  rect
    #geometry_msgs/Point[] object_centers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg2DPrediction(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.rect !== undefined) {
      resolved.rect = msg.rect;
    }
    else {
      resolved.rect = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = msg2DPrediction;
