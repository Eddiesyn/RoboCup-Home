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

let msg3DRecognition = require('../msg/msg3DRecognition.js');

//-----------------------------------------------------------

class srvStableObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flush_cache = null;
      this.buffer_time = null;
      this.table_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('flush_cache')) {
        this.flush_cache = initObj.flush_cache
      }
      else {
        this.flush_cache = false;
      }
      if (initObj.hasOwnProperty('buffer_time')) {
        this.buffer_time = initObj.buffer_time
      }
      else {
        this.buffer_time = 0.0;
      }
      if (initObj.hasOwnProperty('table_objects')) {
        this.table_objects = initObj.table_objects
      }
      else {
        this.table_objects = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvStableObjectsRequest
    // Serialize message field [flush_cache]
    bufferOffset = _serializer.bool(obj.flush_cache, buffer, bufferOffset);
    // Serialize message field [buffer_time]
    bufferOffset = _serializer.float32(obj.buffer_time, buffer, bufferOffset);
    // Serialize message field [table_objects]
    bufferOffset = _serializer.bool(obj.table_objects, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvStableObjectsRequest
    let len;
    let data = new srvStableObjectsRequest(null);
    // Deserialize message field [flush_cache]
    data.flush_cache = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buffer_time]
    data.buffer_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [table_objects]
    data.table_objects = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvStableObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de015ce29fee154018667640a2ec4854';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    bool    flush_cache
    float32 buffer_time
    bool    table_objects
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvStableObjectsRequest(null);
    if (msg.flush_cache !== undefined) {
      resolved.flush_cache = msg.flush_cache;
    }
    else {
      resolved.flush_cache = false
    }

    if (msg.buffer_time !== undefined) {
      resolved.buffer_time = msg.buffer_time;
    }
    else {
      resolved.buffer_time = 0.0
    }

    if (msg.table_objects !== undefined) {
      resolved.table_objects = msg.table_objects;
    }
    else {
      resolved.table_objects = false
    }

    return resolved;
    }
};

class srvStableObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.result_optical = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new msg3DRecognition();
      }
      if (initObj.hasOwnProperty('result_optical')) {
        this.result_optical = initObj.result_optical
      }
      else {
        this.result_optical = new msg3DRecognition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvStableObjectsResponse
    // Serialize message field [result]
    bufferOffset = msg3DRecognition.serialize(obj.result, buffer, bufferOffset);
    // Serialize message field [result_optical]
    bufferOffset = msg3DRecognition.serialize(obj.result_optical, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvStableObjectsResponse
    let len;
    let data = new srvStableObjectsResponse(null);
    // Deserialize message field [result]
    data.result = msg3DRecognition.deserialize(buffer, bufferOffset);
    // Deserialize message field [result_optical]
    data.result_optical = msg3DRecognition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += msg3DRecognition.getMessageSize(object.result);
    length += msg3DRecognition.getMessageSize(object.result_optical);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvStableObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ea24b2e6315eaec1ce9c9bb0dc32772';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msg3DRecognition result
    msg3DRecognition result_optical
    
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg3DRecognition
    sensor_msgs/Image       image
    sensor_msgs/Image       depth_image
    geometry_msgs/Transform transform
    msg2DPrediction[]       predictions2D
    msg3DPrediction[]       predictions3D
    
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
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg2DPrediction
    string    label
    float64   confidence
    int32[4]  rect
    #geometry_msgs/Point[] object_centers
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg3DPrediction
    string                      frame
    geometry_msgs/PointStamped  point
    geometry_msgs/Vector3       size
    string                      label
    float32                     confidence
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    const resolved = new srvStableObjectsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg3DRecognition.Resolve(msg.result)
    }
    else {
      resolved.result = new msg3DRecognition()
    }

    if (msg.result_optical !== undefined) {
      resolved.result_optical = msg3DRecognition.Resolve(msg.result_optical)
    }
    else {
      resolved.result_optical = new msg3DRecognition()
    }

    return resolved;
    }
};

module.exports = {
  Request: srvStableObjectsRequest,
  Response: srvStableObjectsResponse,
  md5sum() { return '66f13e3d3ec3200b333a36dc56ae0cc3'; },
  datatype() { return 'tum_alle_common_msgs/srvStableObjects'; }
};
