class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def edit
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(
      :title,
      :description,
      :published,
      :highlighted,
      :user_id,
      footage: %i[area_do_terreno area_construida area_total],
      services: %i[dormitorio_empregada area_servico energia_eletrica banheiro_empregada],
      leisure: %i[adega campo_futebol churrasqueira piscina jardim],
      social: %i[pet escritorio sacada lavabo banheira cozinha jardim],
      intimate: %i[quartos suites banheiros salas],
      cabinet: %i[area_servico banheiro_empregada dormitorio_empregada lavanderia cozinha sala quarto banheiro],
      address: %i[CEP logradouro numero complemento bairro cidade estado],
      floor: %i[ardosia carpete ceramica granito madeira marmore porcelanato pvc taco tijolinho vinilico],
      infrastructure: %i[ar_condicionado deposito elevador jardim_inverno portao_eletronico sistema_seguranca mobilia vagas_cobertas vagas_descobertas],
      finality: %i[comercial residencial rural terreno temporada industrial lazer outros],
      category: %i[apartamento casa chacara fazenda flat kitnet loja sala sobrado terreno],
      intention: %i[venda aluguel temporada],
      price: %i[valor_venda condominio iptu valor_aluguel valor_temporada],
      location: %i[latitude longitude]
    )
  end
end
