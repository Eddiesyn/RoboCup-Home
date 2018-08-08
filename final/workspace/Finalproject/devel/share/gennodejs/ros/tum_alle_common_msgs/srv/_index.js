
"use strict";

let srvCostmap = require('./srvCostmap.js')
let srvClusterPerson = require('./srvClusterPerson.js')
let srvControlTracker = require('./srvControlTracker.js')
let srvUpdateClusters = require('./srvUpdateClusters.js')
let srvStartPlanner = require('./srvStartPlanner.js')
let srvFreeSpace = require('./srvFreeSpace.js')
let srvGetFreeSpaces = require('./srvGetFreeSpaces.js')
let srvObjectNavigation = require('./srvObjectNavigation.js')
let srvTableObjects = require('./srvTableObjects.js')
let srvInferFromList = require('./srvInferFromList.js')
let srvGenerateAnswer = require('./srvGenerateAnswer.js')
let srvExtractProperty = require('./srvExtractProperty.js')
let srvElection = require('./srvElection.js')
let srvSpeechRecognition = require('./srvSpeechRecognition.js')
let GraspSrv = require('./GraspSrv.js')
let srvPlanning = require('./srvPlanning.js')
let srvSaveRecognition = require('./srvSaveRecognition.js')
let srvStableObjects = require('./srvStableObjects.js')
let srvIsDoorOpen = require('./srvIsDoorOpen.js')
let srvObjectsClustering = require('./srvObjectsClustering.js')
let srvNavigation = require('./srvNavigation.js')
let srvPerformTask = require('./srvPerformTask.js')
let srvCupboardDoor = require('./srvCupboardDoor.js')
let srvAnswerReasoning = require('./srvAnswerReasoning.js')
let srvGetStableObjects = require('./srvGetStableObjects.js')
let srvCupboardOrientation = require('./srvCupboardOrientation.js')
let srvGetDepth = require('./srvGetDepth.js')

module.exports = {
  srvCostmap: srvCostmap,
  srvClusterPerson: srvClusterPerson,
  srvControlTracker: srvControlTracker,
  srvUpdateClusters: srvUpdateClusters,
  srvStartPlanner: srvStartPlanner,
  srvFreeSpace: srvFreeSpace,
  srvGetFreeSpaces: srvGetFreeSpaces,
  srvObjectNavigation: srvObjectNavigation,
  srvTableObjects: srvTableObjects,
  srvInferFromList: srvInferFromList,
  srvGenerateAnswer: srvGenerateAnswer,
  srvExtractProperty: srvExtractProperty,
  srvElection: srvElection,
  srvSpeechRecognition: srvSpeechRecognition,
  GraspSrv: GraspSrv,
  srvPlanning: srvPlanning,
  srvSaveRecognition: srvSaveRecognition,
  srvStableObjects: srvStableObjects,
  srvIsDoorOpen: srvIsDoorOpen,
  srvObjectsClustering: srvObjectsClustering,
  srvNavigation: srvNavigation,
  srvPerformTask: srvPerformTask,
  srvCupboardDoor: srvCupboardDoor,
  srvAnswerReasoning: srvAnswerReasoning,
  srvGetStableObjects: srvGetStableObjects,
  srvCupboardOrientation: srvCupboardOrientation,
  srvGetDepth: srvGetDepth,
};
