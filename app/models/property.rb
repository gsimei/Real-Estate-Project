class Property < ApplicationRecord
  belongs_to :user

  # serialize :footage, JSON
  # serialize :services, JSON
  # serialize :leisure, JSON
  # serialize :social, JSON
  # serialize :intimate, JSON
  # serialize :cabinet, JSON
  # serialize :address, JSON
  # serialize :floor, JSON
  # serialize :infrastructure, JSON
  # serialize :finality, JSON
  # serialize :category, JSON
  # serialize :intention, JSON
  # serialize :price, JSON
  # serialize :location, JSON
  # attribute :footage, :json, default: { 'Área do terreno': 0.00, 'Área construída': 0.00, 'Área privativa': 0.00, 'Área total': 0.00 }
  # attribute :services, :json, default: { 'Água': false, 'Esgoto': false, 'Energia elétrica': false, 'Gás': false, 'Internet': false, 'Telefone': false }
  # attribute :leisure, :json, default: { 'Academia': false, 'Bicicletário': false, 'Brinquedoteca': false, 'Churrasqueira': false, 'Cinema': false, 'Espaço gourmet': false, 'Espaço kids': false, 'Espaço pet': false, 'Espaço zen': false, 'Fitness': false, 'Forno de pizza': false, 'Forno de pão': false, 'Jardim': false, 'Lareira': false, 'Lavanderia coletiva': false, 'Lavanderia privativa': false, 'Lavabo': false, 'Piscina': false, 'Piscina infantil': false, 'Piscina aquecida': false, 'Playground': false, 'Quadra de esportes': false, 'Quadra poliesportiva': false, 'Quadra de tênis': false, 'Salão de festas': false, 'Salão de jogos': false, 'Sauna': false, 'Spa': false, 'Vestiário': false }
  # attribute :social, :json, default: { 'Área de convivência': false, 'Bicicletário': false, 'Brinquedoteca': false, 'Churrasqueira': false, 'Cinema': false, 'Espaço gourmet': false, 'Espaço kids': false, 'Espaço pet': false, 'Espaço zen': false, 'Fitness': false, 'Forno de pizza': false, 'Forno de pão': false, 'Jardim': false, 'Lareira': false, 'Lavanderia coletiva': false, 'Lavanderia privativa': false, 'Lavabo': false, 'Piscina': false, 'Piscina infantil': false, 'Piscina aquecida': false, 'Playground': false, 'Quadra de esportes': false, 'Quadra poliesportiva': false, 'Quadra de tênis': false, 'Salão de festas': false, 'Salão de jogos': false, 'Sauna': false, 'Spa': false, 'Vestiário': false }
  # attribute :intimate, :json, default: { 'Área de convivência': false, 'Bicicletário': false, 'Brinquedoteca': false, 'Churrasqueira': false, 'Cinema': false, 'Espaço gourmet': false, 'Espaço kids': false, 'Espaço pet': false, 'Espaço zen': false, 'Fitness': false, 'Forno de pizza': false, 'Forno de pão': false, 'Jardim': false, 'Lareira': false, 'Lavanderia coletiva': false, 'Lavanderia privativa': false, 'Lavabo': false, 'Piscina': false, 'Piscina infantil': false, 'Piscina aquecida': false, 'Playground': false, 'Quadra de esportes': false, 'Quadra poliesportiva': false, 'Quadra de tênis': false, 'Salão de festas': false, 'Salão de jogos': false, 'Sauna': false, 'Spa': false, 'Vestiário': false }
  # attribute :cabinet, :json, default: { 'Armário de cozinha': false, 'Armário embutido': false, 'Armário na cozinha': false, 'Armário no banheiro': false, 'Armário no quarto': false, 'Armário na sala': false, 'Armário na suíte': false, 'Armário na área de serviço': false, 'Armário na varanda': false, 'Armário na lavanderia': false, 'Armário na garagem': false, 'Armário no escritório': false, 'Armário no hall': false, 'Armário no corredor': false, 'Armário no hall de entrada': false, 'Armário no hall de serviço': false, 'Armário no hall de elevador': false, 'Armário no hall de circulação': false, }
  # attribute :floor, :json, default: { 'Ardosia': false, 'Carpete': false, 'Granito': false, 'Laminado': false, 'Mármore': false, 'Porcelanato': false, 'Tábua': false, 'Taco': false, 'Vinílico': false, 'Carpete de acrílico': false, 'Cerâmica': false, 'Cimento queimado': false, 'Contrapiso': false, }
  # attribute :infrastructure, :json, default: { 'Ar condicionado': false, 'Depósito': false, 'Elevador': false, 'Jardim de inverno': false, 'Mobiliado': false, 'Mezanino': false, 'Nº de andares': 0.00, 'Pé direito duplo': false, 'Terraço': false, 'Vagas cobertas': 0.00, 'Vagas descobertas': 0.00 }
  # attribute :address, :json, default: { 'CEP': 0.00, 'Logradouro': "", 'Número': 0.00, 'Complemento': "", 'Bairro': "", 'Cidade': "", 'Estado': "" }
  # attribute :location, :json, default: { 'Latitude': 0.00, 'Longitude': 0.00 }
  # attribute :price, :json, default: { 'Valor de venda': 0.00, 'Valor de locação': 0.00, 'Valor do condomínio': 0.00, 'Valor do IPTU': 0.00 }
  # attribute :finality, :json, default: { 'Venda': false, 'Locação': false }
  # attribute :intention, :json, default: { 'Comercial': false, 'Residencial': false, 'Industrial': false, 'Rural': false }
  # attribute :category, :json, default: { 'Apartamento': false, 'Casa': false, 'Casa de condomínio': false, 'Casa de vila': false, 'Cobertura': false, 'Flat': false, 'Loft': false, 'Sobrado': false, 'Terreno': false, 'Chácara': false, 'Fazenda': false, 'Sítio': false, 'Galpão': false, 'Sala': false, 'Prédio': false, 'Ponto comercial': false, 'Kitnet': false, 'Studio': false, 'Lote': false, 'Área': false }
end
