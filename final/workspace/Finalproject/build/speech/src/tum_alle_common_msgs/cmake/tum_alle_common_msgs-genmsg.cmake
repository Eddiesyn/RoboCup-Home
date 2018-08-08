# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tum_alle_common_msgs: 10 messages, 26 services")

set(MSG_I_FLAGS "-Itum_alle_common_msgs:/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tum_alle_common_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:sensor_msgs/Image:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Vector3:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" "geometry_msgs/Point:tum_alle_common_msgs/msg2DPrediction:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3:sensor_msgs/Image:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg2DRecognition:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:sensor_msgs/Image:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg3DRecognition:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:sensor_msgs/Image:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg3DRecognition:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Pose:tum_alle_common_msgs/msgGraspInfo:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:sensor_msgs/Image:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg3DRecognition:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" "geometry_msgs/Point:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" "tum_alle_common_msgs/msgFreeSpace:geometry_msgs/Point"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Bool:geometry_msgs/Pose:std_msgs/Float64"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" "geometry_msgs/Point:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Vector3:tum_alle_common_msgs/msg3DPrediction:tum_alle_common_msgs/msg2DPrediction:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" "sensor_msgs/Image:std_msgs/Header:tum_alle_common_msgs/msg2DPrediction"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform:sensor_msgs/Image:tum_alle_common_msgs/msg2DPrediction"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" ""
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" "geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" NAME_WE)
add_custom_target(_tum_alle_common_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tum_alle_common_msgs" "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" "sensor_msgs/Image:std_msgs/Header:tum_alle_common_msgs/msg2DPrediction"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Services
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv"
  "${MSG_I_FLAGS}"
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_cpp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Module File
_generate_module_cpp(tum_alle_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tum_alle_common_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tum_alle_common_msgs_generate_messages tum_alle_common_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_cpp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tum_alle_common_msgs_gencpp)
add_dependencies(tum_alle_common_msgs_gencpp tum_alle_common_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tum_alle_common_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Services
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv"
  "${MSG_I_FLAGS}"
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_eus(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Module File
_generate_module_eus(tum_alle_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tum_alle_common_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tum_alle_common_msgs_generate_messages tum_alle_common_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_eus _tum_alle_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tum_alle_common_msgs_geneus)
add_dependencies(tum_alle_common_msgs_geneus tum_alle_common_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tum_alle_common_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Services
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv"
  "${MSG_I_FLAGS}"
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_lisp(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Module File
_generate_module_lisp(tum_alle_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tum_alle_common_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tum_alle_common_msgs_generate_messages tum_alle_common_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_lisp _tum_alle_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tum_alle_common_msgs_genlisp)
add_dependencies(tum_alle_common_msgs_genlisp tum_alle_common_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tum_alle_common_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Services
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv"
  "${MSG_I_FLAGS}"
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_nodejs(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Module File
_generate_module_nodejs(tum_alle_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tum_alle_common_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tum_alle_common_msgs_generate_messages tum_alle_common_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_nodejs _tum_alle_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tum_alle_common_msgs_gennodejs)
add_dependencies(tum_alle_common_msgs_gennodejs tum_alle_common_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tum_alle_common_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_msg_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Services
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv"
  "${MSG_I_FLAGS}"
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)
_generate_srv_py(tum_alle_common_msgs
  "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
)

### Generating Module File
_generate_module_py(tum_alle_common_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tum_alle_common_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tum_alle_common_msgs_generate_messages tum_alle_common_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgFreeSpace.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvIsDoorOpen.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvTableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCostmap.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgRegionOfInterest3D.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvFreeSpace.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvControlTracker.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSaveRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvUpdateClusters.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPlanning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvSpeechRecognition.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgHotwordCommand.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvInferFromList.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStableObjects.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardOrientation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectNavigation.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgCategorisedSpeech.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetFreeSpaces.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvExtractProperty.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/GraspSrv.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvClusterPerson.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DTracking.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvAnswerReasoning.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvGetDepth.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvCupboardDoor.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg2DRecognition.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvStartPlanner.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvPerformTask.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msgGraspInfo.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvObjectsClustering.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/msg/msg3DPrediction.msg" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/atHomeSS18/God-Watcher/workspace/Finalproject/src/speech/src/tum_alle_common_msgs/srv/srvElection.srv" NAME_WE)
add_dependencies(tum_alle_common_msgs_generate_messages_py _tum_alle_common_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tum_alle_common_msgs_genpy)
add_dependencies(tum_alle_common_msgs_genpy tum_alle_common_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tum_alle_common_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tum_alle_common_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tum_alle_common_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(tum_alle_common_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tum_alle_common_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tum_alle_common_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tum_alle_common_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(tum_alle_common_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(tum_alle_common_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tum_alle_common_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tum_alle_common_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(tum_alle_common_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tum_alle_common_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tum_alle_common_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tum_alle_common_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(tum_alle_common_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(tum_alle_common_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tum_alle_common_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tum_alle_common_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(tum_alle_common_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tum_alle_common_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
