// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msg2DPrediction = require('./msg2DPrediction.js');
let msg3DPrediction = require('./msg3DPrediction.js');
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class msg3DRecognition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
      this.depth_image = null;
      this.transform = null;
      this.predictions2D = null;
      this.predictions3D = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth_image')) {
        this.depth_image = initObj.depth_image
      }
      else {
        this.depth_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('predictions2D')) {
        this.predictions2D = initObj.predictions2D
      }
      else {
        this.predictions2D = [];
      }
      if (initObj.hasOwnProperty('predictions3D')) {
        this.predictions3D = initObj.predictions3D
      }
      else {
        this.predictions3D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg3DRecognition
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [depth_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth_image, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [predictions2D]
    // Serialize the length for message field [predictions2D]
    bufferOffset = _serializer.uint32(obj.predictions2D.length, buffer, bufferOffset);
    obj.predictions2D.forEach((val) => {
      bufferOffset = msg2DPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predictions3D]
    // Serialize the length for message field [predictions3D]
    bufferOffset = _serializer.uint32(obj.predictions3D.length, buffer, bufferOffset);
    obj.predictions3D.forEach((val) => {
      bufferOffset = msg3DPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg3DRecognition
    let len;
    let data = new msg3DRecognition(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_image]
    data.depth_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [predictions2D]
    // Deserialize array length for message field [predictions2D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions2D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions2D[i] = msg2DPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predictions3D]
    // Deserialize array length for message field [predictions3D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predictions3D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predictions3D[i] = msg3DPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth_image);
    object.predictions2D.forEach((val) => {
      length += msg2DPrediction.getMessageSize(val);
    });
    object.predictions3D.forEach((val) => {
      length += msg3DPrediction.getMessageSize(val);
    });
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tum_alle_common_msgs/msg3DRecognition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fc33243fc44bdd87226013491c4ef2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new msg3DRecognition(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.depth_image !== undefined) {
      resolved.depth_image = sensor_msgs.msg.Image.Resolve(msg.depth_image)
    }
    else {
      resolved.depth_image = new sensor_msgs.msg.Image()
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Transform.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Transform()
    }

    if (msg.predictions2D !== undefined) {
      resolved.predictions2D = new Array(msg.predictions2D.length);
      for (let i = 0; i < resolved.predictions2D.length; ++i) {
        resolved.predictions2D[i] = msg2DPrediction.Resolve(msg.predictions2D[i]);
      }
    }
    else {
      resolved.predictions2D = []
    }

    if (msg.predictions3D !== undefined) {
      resolved.predictions3D = new Array(msg.predictions3D.length);
      for (let i = 0; i < resolved.predictions3D.length; ++i) {
        resolved.predictions3D[i] = msg3DPrediction.Resolve(msg.predictions3D[i]);
      }
    }
    else {
      resolved.predictions3D = []
    }

    return resolved;
    }
};

module.exports = msg3DRecognition;
