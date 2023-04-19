import { Controller } from "@hotwired/stimulus"
import $ from "jquery"
console.log("fgr")


export default class extends Controller {
  static targets = ["cep", "logradouro", "bairro", "cidade", "estado"]

  buscarEndereco() {
    const cep = this.cepTarget.value.replace(/\D/g, "")
    if (cep != "") {
      const validacep = /^[0-9]{8}$/
      if (validacep.test(cep)) {
        $.getJSON(`https://viacep.com.br/ws/${cep}/json/?callback=?`, (dados) => {
          if (!("erro" in dados)) {
            $("#logradouro").val(dados.logradouro)
            $("#bairro").val(dados.bairro)
            $("#cidade").val(dados.localidade)
            $("#estado").val(dados.uf)
          } else {
            alert("CEP não encontrado.")
          }
        })
      } else {
        alert("Formato de CEP inválido.")
      }
    }
  }
}


// this.logradouroTarget.value = dados.logradouro
// this.bairroTarget.value = dados.bairro
// this.cidadeTarget.value = dados.localidade
// this.estadoTarget.value = dados.uf
