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
let msg3DPrediction = require('../msg/msg3DPrediction.js');

//-----------------------------------------------------------

let msgGraspInfo = require('../msg/msgGraspInfo.js');

//-----------------------------------------------------------

class srvInferFromListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pred2D = null;
      this.pred3D = null;
    }
    else {
      if (initObj.hasOwnProperty('pred2D')) {
        this.pred2D = initObj.pred2D
      }
      else {
        this.pred2D = [];
      }
      if (initObj.hasOwnProperty('pred3D')) {
        this.pred3D = initObj.pred3D
      }
      else {
        this.pred3D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvInferFromListRequest
    // Serialize message field [pred2D]
    // Serialize the length for message field [pred2D]
    bufferOffset = _serializer.uint32(obj.pred2D.length, buffer, bufferOffset);
    obj.pred2D.forEach((val) => {
      bufferOffset = msg2DPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pred3D]
    // Serialize the length for message field [pred3D]
    bufferOffset = _serializer.uint32(obj.pred3D.length, buffer, bufferOffset);
    obj.pred3D.forEach((val) => {
      bufferOffset = msg3DPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvInferFromListRequest
    let len;
    let data = new srvInferFromListRequest(null);
    // Deserialize message field [pred2D]
    // Deserialize array length for message field [pred2D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pred2D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pred2D[i] = msg2DPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pred3D]
    // Deserialize array length for message field [pred3D]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pred3D = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pred3D[i] = msg3DPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pred2D.forEach((val) => {
      length += msg2DPrediction.getMessageSize(val);
    });
    object.pred3D.forEach((val) => {
      length += msg3DPrediction.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvInferFromListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa8adef27f07dd150f5d037007e485c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tum_alle_common_msgs/msg2DPrediction[] pred2D
    tum_alle_common_msgs/msg3DPrediction[] pred3D
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    const resolved = new srvInferFromListRequest(null);
    if (msg.pred2D !== undefined) {
      resolved.pred2D = new Array(msg.pred2D.length);
      for (let i = 0; i < resolved.pred2D.length; ++i) {
        resolved.pred2D[i] = msg2DPrediction.Resolve(msg.pred2D[i]);
      }
    }
    else {
      resolved.pred2D = []
    }

    if (msg.pred3D !== undefined) {
      resolved.pred3D = new Array(msg.pred3D.length);
      for (let i = 0; i < resolved.pred3D.length; ++i) {
        resolved.pred3D[i] = msg3DPrediction.Resolve(msg.pred3D[i]);
      }
    }
    else {
      resolved.pred3D = []
    }

    return resolved;
    }
};

class srvInferFromListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.grasp = null;
      this.place = null;
      this.cluster_labels = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('grasp')) {
        this.grasp = initObj.grasp
      }
      else {
        this.grasp = new msgGraspInfo();
      }
      if (initObj.hasOwnProperty('place')) {
        this.place = initObj.place
      }
      else {
        this.place = new msgGraspInfo();
      }
      if (initObj.hasOwnProperty('cluster_labels')) {
        this.cluster_labels = initObj.cluster_labels
      }
      else {
        this.cluster_labels = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvInferFromListResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [grasp]
    bufferOffset = msgGraspInfo.serialize(obj.grasp, buffer, bufferOffset);
    // Serialize message field [place]
    bufferOffset = msgGraspInfo.serialize(obj.place, buffer, bufferOffset);
    // Serialize message field [cluster_labels]
    bufferOffset = _arraySerializer.string(obj.cluster_labels, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvInferFromListResponse
    let len;
    let data = new srvInferFromListResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [grasp]
    data.grasp = msgGraspInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [place]
    data.place = msgGraspInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_labels]
    data.cluster_labels = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += msgGraspInfo.getMessageSize(object.grasp);
    length += msgGraspInfo.getMessageSize(object.place);
    object.cluster_labels.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tum_alle_common_msgs/srvInferFromListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e276b519124f36c3dea21bf88f0f8cb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    msgGraspInfo grasp
    msgGraspInfo place
    string[] cluster_labels
    
    ================================================================================
    MSG: tum_alle_common_msgs/msgGraspInfo
    string label
    string grasp_type
    string direction
    float64 width
    int32 shelf_level
    geometry_msgs/PoseStamped pose
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvInferFromListResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.grasp !== undefined) {
      resolved.grasp = msgGraspInfo.Resolve(msg.grasp)
    }
    else {
      resolved.grasp = new msgGraspInfo()
    }

    if (msg.place !== undefined) {
      resolved.place = msgGraspInfo.Resolve(msg.place)
    }
    else {
      resolved.place = new msgGraspInfo()
    }

    if (msg.cluster_labels !== undefined) {
      resolved.cluster_labels = msg.cluster_labels;
    }
    else {
      resolved.cluster_labels = []
    }

    return resolved;
    }
};

module.exports = {
  Request: srvInferFromListRequest,
  Response: srvInferFromListResponse,
  md5sum() { return 'ba1dfc2541572858b8492a33b42bd13b'; },
  datatype() { return 'tum_alle_common_msgs/srvInferFromList'; }
};
