// Auto-generated. Do not edit!

// (in-package tum_alle_common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let msg3DRecognition = require('../msg/msg3DRecognition.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvGetStableObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recognitions = null;
    }
    else {
      if (initObj.hasOwnProperty('recognitions')) {
        this.recognitions = initObj.recognitions
      }
      else {
        this.recognitions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvGetStableObjectsRequest
    // Serialize message field [recognitions]
    // Serialize the length for message field [recognitions]
    bufferOffset = _serializer.uint32(obj.recognitions.length, buffer, bufferOffset);
    obj.recognitions.forEach((val) => {
      bufferOffset = msg3DRecognition.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvGetStableObjectsRequest
    let len;
    let data = new srvGetStableObjectsRequest(null);
    // Deserialize message field [recognitions]
    // Deserialize array length for message field [recognitions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.recognitions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.recognitions[i] = msg3DRecognition.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.recognitions.forEach((val) => {
      length += msg3DRecognition.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvGetStableObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '349b1dbabb467731073ea37c81d4f0af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msg3DRecognition[] recognitions
    
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
    const resolved = new srvGetStableObjectsRequest(null);
    if (msg.recognitions !== undefined) {
      resolved.recognitions = new Array(msg.recognitions.length);
      for (let i = 0; i < resolved.recognitions.length; ++i) {
        resolved.recognitions[i] = msg3DRecognition.Resolve(msg.recognitions[i]);
      }
    }
    else {
      resolved.recognitions = []
    }

    return resolved;
    }
};

class srvGetStableObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recognition = null;
    }
    else {
      if (initObj.hasOwnProperty('recognition')) {
        this.recognition = initObj.recognition
      }
      else {
        this.recognition = new msg3DRecognition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvGetStableObjectsResponse
    // Serialize message field [recognition]
    bufferOffset = msg3DRecognition.serialize(obj.recognition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvGetStableObjectsResponse
    let len;
    let data = new srvGetStableObjectsResponse(null);
    // Deserialize message field [recognition]
    data.recognition = msg3DRecognition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += msg3DRecognition.getMessageSize(object.recognition);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvGetStableObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9271109a659cd315f5e009071981802';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    msg3DRecognition recognition
    
    
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
    const resolved = new srvGetStableObjectsResponse(null);
    if (msg.recognition !== undefined) {
      resolved.recognition = msg3DRecognition.Resolve(msg.recognition)
    }
    else {
      resolved.recognition = new msg3DRecognition()
    }

    return resolved;
    }
};

module.exports = {
  Request: srvGetStableObjectsRequest,
  Response: srvGetStableObjectsResponse,
  md5sum() { return '6268bb2b461282f65320ab49c26d8ff4'; },
  datatype() { return 'tum_alle_common_msgs/srvGetStableObjects'; }
};
