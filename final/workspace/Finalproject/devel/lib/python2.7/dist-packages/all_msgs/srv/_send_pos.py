# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from all_msgs/send_posRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class send_posRequest(genpy.Message):
  _md5sum = "3348dd4bd9730a30fe2f778cbae7fee3"
  _type = "all_msgs/send_posRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/PointStamped world_pose
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
"""
  __slots__ = ['world_pose','is_target']
  _slot_types = ['geometry_msgs/PointStamped','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       world_pose,is_target

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(send_posRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.world_pose is None:
        self.world_pose = geometry_msgs.msg.PointStamped()
      if self.is_target is None:
        self.is_target = False
    else:
      self.world_pose = geometry_msgs.msg.PointStamped()
      self.is_target = False

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.world_pose.header.seq, _x.world_pose.header.stamp.secs, _x.world_pose.header.stamp.nsecs))
      _x = self.world_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3dB().pack(_x.world_pose.point.x, _x.world_pose.point.y, _x.world_pose.point.z, _x.is_target))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.world_pose is None:
        self.world_pose = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.world_pose.header.seq, _x.world_pose.header.stamp.secs, _x.world_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.world_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.world_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 25
      (_x.world_pose.point.x, _x.world_pose.point.y, _x.world_pose.point.z, _x.is_target,) = _get_struct_3dB().unpack(str[start:end])
      self.is_target = bool(self.is_target)
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.world_pose.header.seq, _x.world_pose.header.stamp.secs, _x.world_pose.header.stamp.nsecs))
      _x = self.world_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3dB().pack(_x.world_pose.point.x, _x.world_pose.point.y, _x.world_pose.point.z, _x.is_target))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.world_pose is None:
        self.world_pose = geometry_msgs.msg.PointStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.world_pose.header.seq, _x.world_pose.header.stamp.secs, _x.world_pose.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.world_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.world_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 25
      (_x.world_pose.point.x, _x.world_pose.point.y, _x.world_pose.point.z, _x.is_target,) = _get_struct_3dB().unpack(str[start:end])
      self.is_target = bool(self.is_target)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3dB = None
def _get_struct_3dB():
    global _struct_3dB
    if _struct_3dB is None:
        _struct_3dB = struct.Struct("<3dB")
    return _struct_3dB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from all_msgs/send_posResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class send_posResponse(genpy.Message):
  _md5sum = "24842bc754e0f5cc982338eca1269251"
  _type = "all_msgs/send_posResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool flag

"""
  __slots__ = ['flag']
  _slot_types = ['bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       flag

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(send_posResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.flag is None:
        self.flag = False
    else:
      self.flag = False

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
      buff.write(_get_struct_B().pack(self.flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.flag,) = _get_struct_B().unpack(str[start:end])
      self.flag = bool(self.flag)
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
      buff.write(_get_struct_B().pack(self.flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.flag,) = _get_struct_B().unpack(str[start:end])
      self.flag = bool(self.flag)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
class send_pos(object):
  _type          = 'all_msgs/send_pos'
  _md5sum = '0937dcad83c5429e3efaf62274855790'
  _request_class  = send_posRequest
  _response_class = send_posResponse
