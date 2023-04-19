class Property < ApplicationRecord
  belongs_to :user

  attribute :footage, :json, default: { area_do_terreno: nil, area_construida: nil, area_total: nil }
  attribute :services, :json, default: { dormitorio_empregada: false, area_servico: false, energia_eletrica: false, banheiro_empregada: false }
  attribute :leisure, :json, default: { adega: false, campo_futebol: false, churrasqueira: false, piscina: false, jardim: false }
  attribute :social, :json, default: { pet: false, escritorio: false, sacada: false, lavabo: false, banheira: false, cozinha: false, jardim: false }
  attribute :intimate, :json, default: { quartos: nil, suites: nil, banheiros: nil, salas: nil }
  attribute :cabinet, :json, default: { area_servico: false, banheiro_empregada: false, dormitorio_empregada: false, lavanderia: false, cozinha: false, sala: false, quarto: false, banheiro: false }
  attribute :address, :json, default: { CEP: nil, logradouro: nil, numero: nil, complemento: nil, bairro: nil, cidade: nil, estado: nil}
  attribute :floor, :json, default: { ardosia: false, carpete: false, ceramica: false, granito: false, madeira: false, marmore: false, porcelanato: false, pvc: false, taco: false, tijolinho: false, vinilico: false }
  attribute :infrastructure, :json, default: { ar_condicionado: false, deposito: false, elevador: false, jardim_inverno: false, portao_eletronico: false, sistema_seguranca: false, mobilia: false, vagas_cobertas: nil, vagas_descobertas: nil }
  attribute :finality, :json, default: { comercial: false, residencial: false, rural: false, terreno: false, temporada: false, industrial: false, lazer: false, outros: false }
  attribute :category, :json, default: { apartamento: false, casa: false, chacara: false, fazenda: false, flat: false, kitnet: false, loja: false, sala: false, sobrado: false, terreno: false, outros: false }
  attribute :intention, :json, default: { venda: false, aluguel: false, temporada: false }
  attribute :price, :json, default: { valor_venda: nil, condominio: nil, iptu: nil, valor_aluguel: nil, valor_temporada: nil }
  attribute :location, :json, default: { latitude: nil, longitude: nil }
  # attribute :published, :boolean, default: false
  # attributes :highlighted, :boolean, default: false

  store_accessor :footage, :area_do_terreno, :area_construida, :area_total
  store_accessor :services, :dormitorio_empregada, :area_servico, :energia_eletrica, :banheiro_empregada
  store_accessor :leisure, :adega, :campo_futebol, :churrasqueira, :piscina, :jardim
  store_accessor :social, :pet, :escritorio, :sacada, :lavabo, :banheira, :cozinha, :jardim
  store_accessor :intimate, :quartos, :suites, :banheiros, :salas
  store_accessor :cabinet, :area_servico, :banheiro_empregada, :dormitorio_empregada, :lavanderia, :cozinha, :sala, :quarto, :banheiro
  store_accessor :address, :CEP, :logradouro, :numero, :complemento, :bairro, :cidade, :estado
  store_accessor :floor, :ardosia, :carpete, :ceramica, :granito, :madeira, :marmore, :porcelanato, :pvc, :taco, :tijolinho, :vinilico
  store_accessor :infrastructure, :ar_condicionado, :deposito, :elevador, :jardim_inverno, :portao_eletronico, :sistema_seguranca, :mobilia, :vagas_cobertas, :vagas_descobertas
  store_accessor :finality, :comercial, :residencial, :rural, :terreno, :temporada, :industrial, :lazer, :outros
  store_accessor :category, :apartamento, :casa, :chacara, :fazenda, :flat, :kitnet, :loja, :sala, :sobrado, :terreno, :outros
  store_accessor :intention, :venda, :aluguel, :temporada
  store_accessor :price, :valor_venda, :condominio, :iptu, :valor_aluguel, :valor_temporada
  store_accessor :location, :latitude, :longitude


  # def fill_address_with_cep
  #   return if self.address[:CEP].blank?
  #   via_cep = ViaCep::Address.new(self.address[:CEP])
  #   self.address[:logradouro] = via_cep.logradouro
  #   self.address[:complemento] = via_cep.complemento
  #   self.address[:bairro] = via_cep.bairro
  #   self.address[:cidade] = via_cep.localidade
  #   self.address[:estado] = via_cep.uf
  # end
end
