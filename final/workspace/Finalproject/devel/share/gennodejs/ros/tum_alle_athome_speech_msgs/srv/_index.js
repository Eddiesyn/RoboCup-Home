
"use strict";

let srvGenerateAnswer = require('./srvGenerateAnswer.js')
let srvTTS = require('./srvTTS.js')
let srvQuestion = require('./srvQuestion.js')

module.exports = {
  srvGenerateAnswer: srvGenerateAnswer,
  srvTTS: srvTTS,
  srvQuestion: srvQuestion,
};
