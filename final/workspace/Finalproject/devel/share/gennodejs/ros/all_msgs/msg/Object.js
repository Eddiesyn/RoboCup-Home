// Auto-generated. Do not edit!

// (in-package all_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.world_pose = null;
      this.cam_pose = null;
      this.heading = null;
      this.velocity = null;
      this.width = null;
      this.length = null;
      this.semantic_confidence = null;
      this.semantic_name = null;
      this.semantic_id = null;
      this.r = null;
      this.g = null;
      this.b = null;
      this.is_track = null;
      this.is_target = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('world_pose')) {
        this.world_pose = initObj.world_pose
      }
      else {
        this.world_pose = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('cam_pose')) {
        this.cam_pose = initObj.cam_pose
      }
      else {
        this.cam_pose = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('semantic_confidence')) {
        this.semantic_confidence = initObj.semantic_confidence
      }
      else {
        this.semantic_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('semantic_name')) {
        this.semantic_name = initObj.semantic_name
      }
      else {
        this.semantic_name = '';
      }
      if (initObj.hasOwnProperty('semantic_id')) {
        this.semantic_id = initObj.semantic_id
      }
      else {
        this.semantic_id = 0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('is_track')) {
        this.is_track = initObj.is_track
      }
      else {
        this.is_track = false;
      }
      if (initObj.hasOwnProperty('is_target')) {
        this.is_target = initObj.is_target
      }
      else {
        this.is_target = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [world_pose]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.world_pose, buffer, bufferOffset);
    // Serialize message field [cam_pose]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.cam_pose, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [semantic_confidence]
    bufferOffset = _serializer.float32(obj.semantic_confidence, buffer, bufferOffset);
    // Serialize message field [semantic_name]
    bufferOffset = _serializer.string(obj.semantic_name, buffer, bufferOffset);
    // Serialize message field [semantic_id]
    bufferOffset = _serializer.uint32(obj.semantic_id, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.uint32(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.uint32(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.uint32(obj.b, buffer, bufferOffset);
    // Serialize message field [is_track]
    bufferOffset = _serializer.bool(obj.is_track, buffer, bufferOffset);
    // Serialize message field [is_target]
    bufferOffset = _serializer.bool(obj.is_target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [world_pose]
    data.world_pose = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [cam_pose]
    data.cam_pose = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [semantic_confidence]
    data.semantic_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [semantic_name]
    data.semantic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [semantic_id]
    data.semantic_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_track]
    data.is_track = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_target]
    data.is_target = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.world_pose);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.cam_pose);
    length += object.semantic_name.length;
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'all_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91171f25471df23310fdf72d759cfc7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    
    geometry_msgs/PointStamped world_pose
    geometry_msgs/PointStamped cam_pose
    
    float32 heading
    float32 velocity
    
    float32 width
    float32 length
    
    
    float32 semantic_confidence
    string semantic_name
    uint32 semantic_id
    
    uint32 r
    uint32 g
    uint32 b
    
    bool is_track
    bool is_target
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.world_pose !== undefined) {
      resolved.world_pose = geometry_msgs.msg.PointStamped.Resolve(msg.world_pose)
    }
    else {
      resolved.world_pose = new geometry_msgs.msg.PointStamped()
    }

    if (msg.cam_pose !== undefined) {
      resolved.cam_pose = geometry_msgs.msg.PointStamped.Resolve(msg.cam_pose)
    }
    else {
      resolved.cam_pose = new geometry_msgs.msg.PointStamped()
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.semantic_confidence !== undefined) {
      resolved.semantic_confidence = msg.semantic_confidence;
    }
    else {
      resolved.semantic_confidence = 0.0
    }

    if (msg.semantic_name !== undefined) {
      resolved.semantic_name = msg.semantic_name;
    }
    else {
      resolved.semantic_name = ''
    }

    if (msg.semantic_id !== undefined) {
      resolved.semantic_id = msg.semantic_id;
    }
    else {
      resolved.semantic_id = 0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.is_track !== undefined) {
      resolved.is_track = msg.is_track;
    }
    else {
      resolved.is_track = false
    }

    if (msg.is_target !== undefined) {
      resolved.is_target = msg.is_target;
    }
    else {
      resolved.is_target = false
    }

    return resolved;
    }
};

module.exports = Object;
