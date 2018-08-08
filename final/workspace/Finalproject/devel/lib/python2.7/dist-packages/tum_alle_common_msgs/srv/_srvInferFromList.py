# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tum_alle_common_msgs/srvInferFromListRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import tum_alle_common_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class srvInferFromListRequest(genpy.Message):
  _md5sum = "fa8adef27f07dd150f5d037007e485c9"
  _type = "tum_alle_common_msgs/srvInferFromListRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """tum_alle_common_msgs/msg2DPrediction[] pred2D
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
float64 z"""
  __slots__ = ['pred2D','pred3D']
  _slot_types = ['tum_alle_common_msgs/msg2DPrediction[]','tum_alle_common_msgs/msg3DPrediction[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pred2D,pred3D

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(srvInferFromListRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pred2D is None:
        self.pred2D = []
      if self.pred3D is None:
        self.pred3D = []
    else:
      self.pred2D = []
      self.pred3D = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.pred2D)
      buff.write(_struct_I.pack(length))
      for val1 in self.pred2D:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_d().pack(val1.confidence))
        buff.write(_get_struct_4i().pack(*val1.rect))
      length = len(self.pred3D)
      buff.write(_struct_I.pack(length))
      for val1 in self.pred3D:
        _x = val1.frame
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v1 = val1.point
        _v2 = _v1.header
        buff.write(_get_struct_I().pack(_v2.seq))
        _v3 = _v2.stamp
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v2.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v4 = _v1.point
        _x = _v4
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v5 = val1.size
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_f().pack(val1.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pred2D is None:
        self.pred2D = None
      if self.pred3D is None:
        self.pred3D = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pred2D = []
      for i in range(0, length):
        val1 = tum_alle_common_msgs.msg.msg2DPrediction()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 8
        (val1.confidence,) = _get_struct_d().unpack(str[start:end])
        start = end
        end += 16
        val1.rect = _get_struct_4i().unpack(str[start:end])
        self.pred2D.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pred3D = []
      for i in range(0, length):
        val1 = tum_alle_common_msgs.msg.msg3DPrediction()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.frame = str[start:end].decode('utf-8')
        else:
          val1.frame = str[start:end]
        _v6 = val1.point
        _v7 = _v6.header
        start = end
        end += 4
        (_v7.seq,) = _get_struct_I().unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8')
        else:
          _v7.frame_id = str[start:end]
        _v9 = _v6.point
        _x = _v9
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v10 = val1.size
        _x = _v10
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 4
        (val1.confidence,) = _get_struct_f().unpack(str[start:end])
        self.pred3D.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.pred2D)
      buff.write(_struct_I.pack(length))
      for val1 in self.pred2D:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_d().pack(val1.confidence))
        buff.write(val1.rect.tostring())
      length = len(self.pred3D)
      buff.write(_struct_I.pack(length))
      for val1 in self.pred3D:
        _x = val1.frame
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v11 = val1.point
        _v12 = _v11.header
        buff.write(_get_struct_I().pack(_v12.seq))
        _v13 = _v12.stamp
        _x = _v13
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v12.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v14 = _v11.point
        _x = _v14
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v15 = val1.size
        _x = _v15
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        buff.write(_get_struct_f().pack(val1.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pred2D is None:
        self.pred2D = None
      if self.pred3D is None:
        self.pred3D = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pred2D = []
      for i in range(0, length):
        val1 = tum_alle_common_msgs.msg.msg2DPrediction()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 8
        (val1.confidence,) = _get_struct_d().unpack(str[start:end])
        start = end
        end += 16
        val1.rect = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=4)
        self.pred2D.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pred3D = []
      for i in range(0, length):
        val1 = tum_alle_common_msgs.msg.msg3DPrediction()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.frame = str[start:end].decode('utf-8')
        else:
          val1.frame = str[start:end]
        _v16 = val1.point
        _v17 = _v16.header
        start = end
        end += 4
        (_v17.seq,) = _get_struct_I().unpack(str[start:end])
        _v18 = _v17.stamp
        _x = _v18
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v17.frame_id = str[start:end].decode('utf-8')
        else:
          _v17.frame_id = str[start:end]
        _v19 = _v16.point
        _x = _v19
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v20 = val1.size
        _x = _v20
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        start = end
        end += 4
        (val1.confidence,) = _get_struct_f().unpack(str[start:end])
        self.pred3D.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_4i = None
def _get_struct_4i():
    global _struct_4i
    if _struct_4i is None:
        _struct_4i = struct.Struct("<4i")
    return _struct_4i
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tum_alle_common_msgs/srvInferFromListResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import tum_alle_common_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class srvInferFromListResponse(genpy.Message):
  _md5sum = "e276b519124f36c3dea21bf88f0f8cb9"
  _type = "tum_alle_common_msgs/srvInferFromListResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool result
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
"""
  __slots__ = ['result','grasp','place','cluster_labels']
  _slot_types = ['bool','tum_alle_common_msgs/msgGraspInfo','tum_alle_common_msgs/msgGraspInfo','string[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result,grasp,place,cluster_labels

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(srvInferFromListResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = False
      if self.grasp is None:
        self.grasp = tum_alle_common_msgs.msg.msgGraspInfo()
      if self.place is None:
        self.place = tum_alle_common_msgs.msg.msgGraspInfo()
      if self.cluster_labels is None:
        self.cluster_labels = []
    else:
      self.result = False
      self.grasp = tum_alle_common_msgs.msg.msgGraspInfo()
      self.place = tum_alle_common_msgs.msg.msgGraspInfo()
      self.cluster_labels = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_B().pack(self.result))
      _x = self.grasp.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.grasp.grasp_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.grasp.direction
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_di3I().pack(_x.grasp.width, _x.grasp.shelf_level, _x.grasp.pose.header.seq, _x.grasp.pose.header.stamp.secs, _x.grasp.pose.header.stamp.nsecs))
      _x = self.grasp.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.grasp.pose.pose.position.x, _x.grasp.pose.pose.position.y, _x.grasp.pose.pose.position.z, _x.grasp.pose.pose.orientation.x, _x.grasp.pose.pose.orientation.y, _x.grasp.pose.pose.orientation.z, _x.grasp.pose.pose.orientation.w))
      _x = self.place.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.place.grasp_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.place.direction
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_di3I().pack(_x.place.width, _x.place.shelf_level, _x.place.pose.header.seq, _x.place.pose.header.stamp.secs, _x.place.pose.header.stamp.nsecs))
      _x = self.place.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.place.pose.pose.position.x, _x.place.pose.pose.position.y, _x.place.pose.pose.position.z, _x.place.pose.pose.orientation.x, _x.place.pose.pose.orientation.y, _x.place.pose.pose.orientation.z, _x.place.pose.pose.orientation.w))
      length = len(self.cluster_labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.cluster_labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.grasp is None:
        self.grasp = tum_alle_common_msgs.msg.msgGraspInfo()
      if self.place is None:
        self.place = tum_alle_common_msgs.msg.msgGraspInfo()
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.label = str[start:end].decode('utf-8')
      else:
        self.grasp.label = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.grasp_type = str[start:end].decode('utf-8')
      else:
        self.grasp.grasp_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.direction = str[start:end].decode('utf-8')
      else:
        self.grasp.direction = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.grasp.width, _x.grasp.shelf_level, _x.grasp.pose.header.seq, _x.grasp.pose.header.stamp.secs, _x.grasp.pose.header.stamp.nsecs,) = _get_struct_di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.grasp.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.grasp.pose.pose.position.x, _x.grasp.pose.pose.position.y, _x.grasp.pose.pose.position.z, _x.grasp.pose.pose.orientation.x, _x.grasp.pose.pose.orientation.y, _x.grasp.pose.pose.orientation.z, _x.grasp.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.label = str[start:end].decode('utf-8')
      else:
        self.place.label = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.grasp_type = str[start:end].decode('utf-8')
      else:
        self.place.grasp_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.direction = str[start:end].decode('utf-8')
      else:
        self.place.direction = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.place.width, _x.place.shelf_level, _x.place.pose.header.seq, _x.place.pose.header.stamp.secs, _x.place.pose.header.stamp.nsecs,) = _get_struct_di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.place.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.place.pose.pose.position.x, _x.place.pose.pose.position.y, _x.place.pose.pose.position.z, _x.place.pose.pose.orientation.x, _x.place.pose.pose.orientation.y, _x.place.pose.pose.orientation.z, _x.place.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cluster_labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.cluster_labels.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_B().pack(self.result))
      _x = self.grasp.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.grasp.grasp_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.grasp.direction
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_di3I().pack(_x.grasp.width, _x.grasp.shelf_level, _x.grasp.pose.header.seq, _x.grasp.pose.header.stamp.secs, _x.grasp.pose.header.stamp.nsecs))
      _x = self.grasp.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.grasp.pose.pose.position.x, _x.grasp.pose.pose.position.y, _x.grasp.pose.pose.position.z, _x.grasp.pose.pose.orientation.x, _x.grasp.pose.pose.orientation.y, _x.grasp.pose.pose.orientation.z, _x.grasp.pose.pose.orientation.w))
      _x = self.place.label
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.place.grasp_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.place.direction
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_di3I().pack(_x.place.width, _x.place.shelf_level, _x.place.pose.header.seq, _x.place.pose.header.stamp.secs, _x.place.pose.header.stamp.nsecs))
      _x = self.place.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.place.pose.pose.position.x, _x.place.pose.pose.position.y, _x.place.pose.pose.position.z, _x.place.pose.pose.orientation.x, _x.place.pose.pose.orientation.y, _x.place.pose.pose.orientation.z, _x.place.pose.pose.orientation.w))
      length = len(self.cluster_labels)
      buff.write(_struct_I.pack(length))
      for val1 in self.cluster_labels:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.grasp is None:
        self.grasp = tum_alle_common_msgs.msg.msgGraspInfo()
      if self.place is None:
        self.place = tum_alle_common_msgs.msg.msgGraspInfo()
      end = 0
      start = end
      end += 1
      (self.result,) = _get_struct_B().unpack(str[start:end])
      self.result = bool(self.result)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.label = str[start:end].decode('utf-8')
      else:
        self.grasp.label = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.grasp_type = str[start:end].decode('utf-8')
      else:
        self.grasp.grasp_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.direction = str[start:end].decode('utf-8')
      else:
        self.grasp.direction = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.grasp.width, _x.grasp.shelf_level, _x.grasp.pose.header.seq, _x.grasp.pose.header.stamp.secs, _x.grasp.pose.header.stamp.nsecs,) = _get_struct_di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grasp.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.grasp.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.grasp.pose.pose.position.x, _x.grasp.pose.pose.position.y, _x.grasp.pose.pose.position.z, _x.grasp.pose.pose.orientation.x, _x.grasp.pose.pose.orientation.y, _x.grasp.pose.pose.orientation.z, _x.grasp.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.label = str[start:end].decode('utf-8')
      else:
        self.place.label = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.grasp_type = str[start:end].decode('utf-8')
      else:
        self.place.grasp_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.direction = str[start:end].decode('utf-8')
      else:
        self.place.direction = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.place.width, _x.place.shelf_level, _x.place.pose.header.seq, _x.place.pose.header.stamp.secs, _x.place.pose.header.stamp.nsecs,) = _get_struct_di3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.place.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.place.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.place.pose.pose.position.x, _x.place.pose.pose.position.y, _x.place.pose.pose.position.z, _x.place.pose.pose.orientation.x, _x.place.pose.pose.orientation.y, _x.place.pose.pose.orientation.z, _x.place.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cluster_labels = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.cluster_labels.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_di3I = None
def _get_struct_di3I():
    global _struct_di3I
    if _struct_di3I is None:
        _struct_di3I = struct.Struct("<di3I")
    return _struct_di3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
class srvInferFromList(object):
  _type          = 'tum_alle_common_msgs/srvInferFromList'
  _md5sum = 'ba1dfc2541572858b8492a33b42bd13b'
  _request_class  = srvInferFromListRequest
  _response_class = srvInferFromListResponse