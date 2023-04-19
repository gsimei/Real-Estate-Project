// Entry point for the build script in your package.json
//= require jquery
import $ from 'jquery';
global.$ = global.jQuery = $;
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
