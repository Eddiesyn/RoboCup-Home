// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvNavigationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.location_id = null;
      this.location_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('location_id')) {
        this.location_id = initObj.location_id
      }
      else {
        this.location_id = '';
      }
      if (initObj.hasOwnProperty('location_pose')) {
        this.location_pose = initObj.location_pose
      }
      else {
        this.location_pose = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvNavigationRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [location_id]
    bufferOffset = _serializer.string(obj.location_id, buffer, bufferOffset);
    // Serialize message field [location_pose]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.location_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvNavigationRequest
    let len;
    let data = new srvNavigationRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location_id]
    data.location_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location_pose]
    data.location_pose = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    length += object.location_id.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvNavigationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97ff4203336109316a851e8530b17f43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    string location_id
    geometry_msgs/Point location_pose
    
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
    const resolved = new srvNavigationRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.location_id !== undefined) {
      resolved.location_id = msg.location_id;
    }
    else {
      resolved.location_id = ''
    }

    if (msg.location_pose !== undefined) {
      resolved.location_pose = geometry_msgs.msg.Point.Resolve(msg.location_pose)
    }
    else {
      resolved.location_pose = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class srvNavigationResponse {
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
    // Serializes a message object of type srvNavigationResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvNavigationResponse
    let len;
    let data = new srvNavigationResponse(null);
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
    return 'tum_alle_common_msgs/srvNavigationResponse';
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
    const resolved = new srvNavigationResponse(null);
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
  Request: srvNavigationRequest,
  Response: srvNavigationResponse,
  md5sum() { return '678835c49305ac0de54f01e826b6f3ff'; },
  datatype() { return 'tum_alle_common_msgs/srvNavigation'; }
};
