chai = require 'chai'
sinonChai = require 'sinon-chai'
chai.use sinonChai
global.expect = chai.expect
global.Plugin = require '../src'
global.sinon = require 'sinon'
