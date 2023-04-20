import { Controller } from "@hotwired/stimulus"

const FINALITY_OPTIONS = ["comercial", "residencial", "rural", "temporada", "industrial"];
const COMERCIAL_OPTIONS = ["área", "barracão", "casa", "galpão", "loja", "ponto", "sala", "salão", "terreno"];
const RESIDENCIAL_OPTIONS = ["apartamento", "casa", "chácara", "flat", "kitnet", "loja", "sala", "sobrado", "terreno", "rancho"];
const RURAL_OPTIONS = ["chácara", "fazenda", "sítio", "terreno"];
const TEMPORADA_OPTIONS = ["apartamento", "casa", "chácara", "flat", "kitnet", "loja", "sala", "sobrado", "sítio", "rancho"];
const INDUSTRIAL_OPTIONS = ["área", "barracão", "galpão", "loja", "pavilhão", "salão", "terreno"];

console.log("56fasdfds53")

export default class extends Controller {
  static targets = ["category", "finality"]

  updateCategoryOptions() {
    const FINALITY_OPTIONS = this.finalityTarget.dataset.finalityOptions.split(",");
    const finality = this.finalityTarget.value;
    const categorySelect = document.getElementById("category");
    const url = categorySelect.getAttribute("data-url").replace(":finality", finality);
    fetch(url)
      .then(response => response.json())
      .then(data => {
        categorySelect.innerHTML = "";
        data.forEach((category) => {
          const option = document.createElement("option");
          option.value = category;
          option.text = category;
          categorySelect.appendChild(option);
        });
      });
  }
}
