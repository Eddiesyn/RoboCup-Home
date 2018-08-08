
"use strict";

let msg2DRecognition = require('./msg2DRecognition.js');
let msgHotwordCommand = require('./msgHotwordCommand.js');
let msg3DTracking = require('./msg3DTracking.js');
let msg2DPrediction = require('./msg2DPrediction.js');
let msg3DPrediction = require('./msg3DPrediction.js');
let msgCategorisedSpeech = require('./msgCategorisedSpeech.js');
let msg3DRecognition = require('./msg3DRecognition.js');
let point3D = require('./point3D.js');
let Rect = require('./Rect.js');
let msgGraspInfo = require('./msgGraspInfo.js');
let msgRegionOfInterest3D = require('./msgRegionOfInterest3D.js');
let msgFreeSpace = require('./msgFreeSpace.js');

module.exports = {
  msg2DRecognition: msg2DRecognition,
  msgHotwordCommand: msgHotwordCommand,
  msg3DTracking: msg3DTracking,
  msg2DPrediction: msg2DPrediction,
  msg3DPrediction: msg3DPrediction,
  msgCategorisedSpeech: msgCategorisedSpeech,
  msg3DRecognition: msg3DRecognition,
  point3D: point3D,
  Rect: Rect,
  msgGraspInfo: msgGraspInfo,
  msgRegionOfInterest3D: msgRegionOfInterest3D,
  msgFreeSpace: msgFreeSpace,
};
