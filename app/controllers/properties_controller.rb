class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  # GET /properties or /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1 or /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
    
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
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

  # PATCH/PUT /properties/1 or /properties/1.json
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

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_property
    @property = Property.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_params
    params.require(:property).permit(
      :title,
      :description,
      :published,
      :highlighted,
      :user_id,
      :footage => [:area_do_terreno, :area_construida, :area_total],
      :services => [:dormitorio_empregada, :area_servico, :energia_eletrica, :banheiro_empregada],
      :leisure => [:adega, :campo_futebol, :churrasqueira, :piscina, :jardim],
      :social => [:pet, :escritorio, :sacada, :quartos, :lavabos, :salas, :cozinha, :jardim],
      :intimate => [:quartos, :suites, :banheiros, :banheira],
      :cabinet => [:area_servico, :banheiro_empregada, :dormitorio_empregada, :lavanderia, :cozinha, :sala, :quarto, :banheiro],
      :address => [:CEP, :Logradouro, :Número, :Complemento, :Bairro, :Cidade, :Estado],
      :floor => [:ardosia, :carpete, :ceramica, :granito, :madeira, :marmore, :porcelanato, :pvc, :taco, :tijolinho, :vinilico],
      :infrastructure => [:ar_condicionado, :deposito, :elevador, :jardim_inverno, :portao_eletronico, :sistema_seguranca, :mobilia, :vagas_cobertas, :vagas_descobertas],
      :finality => [:comercial, :residencial, :rural, :terreno, :temporada, :industrial, :lazer, :outros],
      :category => [:apartamento, :casa, :chacara, :fazenda, :flat, :kitnet, :loja, :sala, :sobrado, :terreno, :outros],
      :intention => [:venda, :aluguel, :temporada, :permuta, :outros],
      :price => [:valor_venda, :condominio, :iptu, :valor_aluguel, :valor_temporada],
      :location => [:latitude, :longitude],
    )
  end
end
# params.require(:property).permit(footage: {}, services: {}, leisure: {}, social: {}, intimate: {}, cabinet: {}, address: {}, primary_date: {}, floor: {}, infrastructure: {}, finality: {}, category: {}, intention: {}, price: {}, location: {}, :published :highlighted, :user_id)
# params.require(:property).permit(:footage => {}, :services => {}, :leisure, :social, :intimate, :cabinet, :address, :primary_date, :floor, :infrastructure, :finality, :category, :intention, :price, :location, :published, :highlighted, :user_id)
