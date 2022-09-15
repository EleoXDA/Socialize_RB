// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
// app/javascript/packs/application.js
import { initFlatpickr } from "./plugins/flatpickr";

initFlatpickr();
