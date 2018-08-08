// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msg2DRecognition = require('../msg/msg2DRecognition.js');

//-----------------------------------------------------------

let msg3DPrediction = require('../msg/msg3DPrediction.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class srvFreeSpaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clust2D = null;
    }
    else {
      if (initObj.hasOwnProperty('clust2D')) {
        this.clust2D = initObj.clust2D
      }
      else {
        this.clust2D = new msg2DRecognition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvFreeSpaceRequest
    // Serialize message field [clust2D]
    bufferOffset = msg2DRecognition.serialize(obj.clust2D, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvFreeSpaceRequest
    let len;
    let data = new srvFreeSpaceRequest(null);
    // Deserialize message field [clust2D]
    data.clust2D = msg2DRecognition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += msg2DRecognition.getMessageSize(object.clust2D);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvFreeSpaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'baf0b698a26759e3909c3ff8518a5d4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msg2DRecognition clust2D
    
    ================================================================================
    MSG: tum_alle_common_msgs/msg2DRecognition
    sensor_msgs/Image       image
    sensor_msgs/Image       depth_image
    geometry_msgs/Transform transform
    msg2DPrediction[]       predictions2D
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvFreeSpaceRequest(null);
    if (msg.clust2D !== undefined) {
      resolved.clust2D = msg2DRecognition.Resolve(msg.clust2D)
    }
    else {
      resolved.clust2D = new msg2DRecognition()
    }

    return resolved;
    }
};

class srvFreeSpaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_cluster = null;
      this.left_of = null;
      this.right_cluster = null;
      this.right_of = null;
      this.unknown_objects = null;
      this.unknown_left_cluster = null;
      this.unknown_left_of = null;
      this.unknown_right_cluster = null;
      this.unknown_right_of = null;
    }
    else {
      if (initObj.hasOwnProperty('left_cluster')) {
        this.left_cluster = initObj.left_cluster
      }
      else {
        this.left_cluster = [];
      }
      if (initObj.hasOwnProperty('left_of')) {
        this.left_of = initObj.left_of
      }
      else {
        this.left_of = [];
      }
      if (initObj.hasOwnProperty('right_cluster')) {
        this.right_cluster = initObj.right_cluster
      }
      else {
        this.right_cluster = [];
      }
      if (initObj.hasOwnProperty('right_of')) {
        this.right_of = initObj.right_of
      }
      else {
        this.right_of = [];
      }
      if (initObj.hasOwnProperty('unknown_objects')) {
        this.unknown_objects = initObj.unknown_objects
      }
      else {
        this.unknown_objects = [];
      }
      if (initObj.hasOwnProperty('unknown_left_cluster')) {
        this.unknown_left_cluster = initObj.unknown_left_cluster
      }
      else {
        this.unknown_left_cluster = [];
      }
      if (initObj.hasOwnProperty('unknown_left_of')) {
        this.unknown_left_of = initObj.unknown_left_of
      }
      else {
        this.unknown_left_of = [];
      }
      if (initObj.hasOwnProperty('unknown_right_cluster')) {
        this.unknown_right_cluster = initObj.unknown_right_cluster
      }
      else {
        this.unknown_right_cluster = [];
      }
      if (initObj.hasOwnProperty('unknown_right_of')) {
        this.unknown_right_of = initObj.unknown_right_of
      }
      else {
        this.unknown_right_of = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvFreeSpaceResponse
    // Serialize message field [left_cluster]
    // Serialize the length for message field [left_cluster]
    bufferOffset = _serializer.uint32(obj.left_cluster.length, buffer, bufferOffset);
    obj.left_cluster.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [left_of]
    // Serialize the length for message field [left_of]
    bufferOffset = _serializer.uint32(obj.left_of.length, buffer, bufferOffset);
    obj.left_of.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_cluster]
    // Serialize the length for message field [right_cluster]
    bufferOffset = _serializer.uint32(obj.right_cluster.length, buffer, bufferOffset);
    obj.right_cluster.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_of]
    // Serialize the length for message field [right_of]
    bufferOffset = _serializer.uint32(obj.right_of.length, buffer, bufferOffset);
    obj.right_of.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_objects]
    // Serialize the length for message field [unknown_objects]
    bufferOffset = _serializer.uint32(obj.unknown_objects.length, buffer, bufferOffset);
    obj.unknown_objects.forEach((val) => {
      bufferOffset = msg3DPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_left_cluster]
    // Serialize the length for message field [unknown_left_cluster]
    bufferOffset = _serializer.uint32(obj.unknown_left_cluster.length, buffer, bufferOffset);
    obj.unknown_left_cluster.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_left_of]
    // Serialize the length for message field [unknown_left_of]
    bufferOffset = _serializer.uint32(obj.unknown_left_of.length, buffer, bufferOffset);
    obj.unknown_left_of.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_right_cluster]
    // Serialize the length for message field [unknown_right_cluster]
    bufferOffset = _serializer.uint32(obj.unknown_right_cluster.length, buffer, bufferOffset);
    obj.unknown_right_cluster.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [unknown_right_of]
    // Serialize the length for message field [unknown_right_of]
    bufferOffset = _serializer.uint32(obj.unknown_right_of.length, buffer, bufferOffset);
    obj.unknown_right_of.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvFreeSpaceResponse
    let len;
    let data = new srvFreeSpaceResponse(null);
    // Deserialize message field [left_cluster]
    // Deserialize array length for message field [left_cluster]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_cluster = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_cluster[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [left_of]
    // Deserialize array length for message field [left_of]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_of = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_of[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_cluster]
    // Deserialize array length for message field [right_cluster]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_cluster = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_cluster[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_of]
    // Deserialize array length for message field [right_of]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_of = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_of[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_objects]
    // Deserialize array length for message field [unknown_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.unknown_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.unknown_objects[i] = msg3DPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_left_cluster]
    // Deserialize array length for message field [unknown_left_cluster]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.unknown_left_cluster = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.unknown_left_cluster[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_left_of]
    // Deserialize array length for message field [unknown_left_of]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.unknown_left_of = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.unknown_left_of[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_right_cluster]
    // Deserialize array length for message field [unknown_right_cluster]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.unknown_right_cluster = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.unknown_right_cluster[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [unknown_right_of]
    // Deserialize array length for message field [unknown_right_of]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.unknown_right_of = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.unknown_right_of[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.left_cluster.length;
    length += 24 * object.left_of.length;
    length += 24 * object.right_cluster.length;
    length += 24 * object.right_of.length;
    object.unknown_objects.forEach((val) => {
      length += msg3DPrediction.getMessageSize(val);
    });
    length += 24 * object.unknown_left_cluster.length;
    length += 24 * object.unknown_left_of.length;
    length += 24 * object.unknown_right_cluster.length;
    length += 24 * object.unknown_right_of.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvFreeSpaceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ded637c096954c41cf2482a7ee7f728';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] left_cluster
    geometry_msgs/Point[] left_of
    geometry_msgs/Point[] right_cluster
    geometry_msgs/Point[] right_of
    
    msg3DPrediction[] unknown_objects
    geometry_msgs/Point[] unknown_left_cluster
    geometry_msgs/Point[] unknown_left_of
    geometry_msgs/Point[] unknown_right_cluster
    geometry_msgs/Point[] unknown_right_of
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvFreeSpaceResponse(null);
    if (msg.left_cluster !== undefined) {
      resolved.left_cluster = new Array(msg.left_cluster.length);
      for (let i = 0; i < resolved.left_cluster.length; ++i) {
        resolved.left_cluster[i] = geometry_msgs.msg.Point.Resolve(msg.left_cluster[i]);
      }
    }
    else {
      resolved.left_cluster = []
    }

    if (msg.left_of !== undefined) {
      resolved.left_of = new Array(msg.left_of.length);
      for (let i = 0; i < resolved.left_of.length; ++i) {
        resolved.left_of[i] = geometry_msgs.msg.Point.Resolve(msg.left_of[i]);
      }
    }
    else {
      resolved.left_of = []
    }

    if (msg.right_cluster !== undefined) {
      resolved.right_cluster = new Array(msg.right_cluster.length);
      for (let i = 0; i < resolved.right_cluster.length; ++i) {
        resolved.right_cluster[i] = geometry_msgs.msg.Point.Resolve(msg.right_cluster[i]);
      }
    }
    else {
      resolved.right_cluster = []
    }

    if (msg.right_of !== undefined) {
      resolved.right_of = new Array(msg.right_of.length);
      for (let i = 0; i < resolved.right_of.length; ++i) {
        resolved.right_of[i] = geometry_msgs.msg.Point.Resolve(msg.right_of[i]);
      }
    }
    else {
      resolved.right_of = []
    }

    if (msg.unknown_objects !== undefined) {
      resolved.unknown_objects = new Array(msg.unknown_objects.length);
      for (let i = 0; i < resolved.unknown_objects.length; ++i) {
        resolved.unknown_objects[i] = msg3DPrediction.Resolve(msg.unknown_objects[i]);
      }
    }
    else {
      resolved.unknown_objects = []
    }

    if (msg.unknown_left_cluster !== undefined) {
      resolved.unknown_left_cluster = new Array(msg.unknown_left_cluster.length);
      for (let i = 0; i < resolved.unknown_left_cluster.length; ++i) {
        resolved.unknown_left_cluster[i] = geometry_msgs.msg.Point.Resolve(msg.unknown_left_cluster[i]);
      }
    }
    else {
      resolved.unknown_left_cluster = []
    }

    if (msg.unknown_left_of !== undefined) {
      resolved.unknown_left_of = new Array(msg.unknown_left_of.length);
      for (let i = 0; i < resolved.unknown_left_of.length; ++i) {
        resolved.unknown_left_of[i] = geometry_msgs.msg.Point.Resolve(msg.unknown_left_of[i]);
      }
    }
    else {
      resolved.unknown_left_of = []
    }

    if (msg.unknown_right_cluster !== undefined) {
      resolved.unknown_right_cluster = new Array(msg.unknown_right_cluster.length);
      for (let i = 0; i < resolved.unknown_right_cluster.length; ++i) {
        resolved.unknown_right_cluster[i] = geometry_msgs.msg.Point.Resolve(msg.unknown_right_cluster[i]);
      }
    }
    else {
      resolved.unknown_right_cluster = []
    }

    if (msg.unknown_right_of !== undefined) {
      resolved.unknown_right_of = new Array(msg.unknown_right_of.length);
      for (let i = 0; i < resolved.unknown_right_of.length; ++i) {
        resolved.unknown_right_of[i] = geometry_msgs.msg.Point.Resolve(msg.unknown_right_of[i]);
      }
    }
    else {
      resolved.unknown_right_of = []
    }

    return resolved;
    }
};

module.exports = {
  Request: srvFreeSpaceRequest,
  Response: srvFreeSpaceResponse,
  md5sum() { return 'e7bbf846ac124617879d82f8cbf6f51d'; },
  datatype() { return 'tum_alle_common_msgs/srvFreeSpace'; }
};
