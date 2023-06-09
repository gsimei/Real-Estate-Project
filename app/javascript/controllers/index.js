// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import CepController from "./cep_controller"
application.register("cep", CepController)

import FinalityController from "./finality_controller"
application.register("finality", FinalityController)
