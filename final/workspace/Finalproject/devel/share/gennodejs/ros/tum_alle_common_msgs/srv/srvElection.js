// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msg2DPrediction = require('../msg/msg2DPrediction.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvElectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tracked_id = null;
      this.image = null;
      this.ids = null;
      this.predictions = null;
    }
    else {
      if (initObj.hasOwnProperty('tracked_id')) {
        this.tracked_id = initObj.tracked_id
      }
      else {
        this.tracked_id = 0;
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('predictions')) {
        this.predictions = initObj.predictions
      }
      else {
        this.predictions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvElectionRequest
    // Serialize message field [tracked_id]
    bufferOffset = _serializer.int32(obj.tracked_id, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [predictions]
    // Serialize the length for message field [predictions]
    bufferOffset = _serializer.uint32(obj.predictions.length, buffer, bufferOffset);
    obj.predictions.forEach((val) => {
      bufferOffset = msg2DPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvElectionRequest
    let len;
    let data = new srvElectionRequest(null);
    // Deserialize message field [tracked_id]
    data.tracked_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [predictions]
    // Deserialize array length for message field [predictions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions[i] = msg2DPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += 4 * object.ids.length;
    object.predictions.forEach((val) => {
      length += msg2DPrediction.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvElectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a7b3fc5693370dcb683822fe58db2ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32              tracked_id
    sensor_msgs/Image  image
    int32[]            ids
    msg2DPrediction[]  predictions
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of cameara
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg2DPrediction
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
    const resolved = new srvElectionRequest(null);
    if (msg.tracked_id !== undefined) {
      resolved.tracked_id = msg.tracked_id;
    }
    else {
      resolved.tracked_id = 0
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.predictions !== undefined) {
      resolved.predictions = new Array(msg.predictions.length);
      for (let i = 0; i < resolved.predictions.length; ++i) {
        resolved.predictions[i] = msg2DPrediction.Resolve(msg.predictions[i]);
      }
    }
    else {
      resolved.predictions = []
    }

    return resolved;
    }
};

class srvElectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvElectionResponse
    // Serialize message field [result]
    bufferOffset = _arraySerializer.bool(obj.result, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvElectionResponse
    let len;
    let data = new srvElectionResponse(null);
    // Deserialize message field [result]
    data.result = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvElectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfa26713f7564a36d6c15c911217d3b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvElectionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = []
    }

    return resolved;
    }
};

module.exports = {
  Request: srvElectionRequest,
  Response: srvElectionResponse,
  md5sum() { return '346d402876d63bbe29aa8a26ef5fda79'; },
  datatype() { return 'tum_alle_common_msgs/srvElection'; }
};
