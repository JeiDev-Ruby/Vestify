class Admin::DressesController < ApplicationController
  before_action :set_admin_dress, only: %i[ show edit update destroy ]

  # GET /admin/dresses or /admin/dresses.json
  def index
    @admin_dresses = Admin::Dress.all
  end

  # GET /admin/dresses/1 or /admin/dresses/1.json
  def show
  end

  # GET /admin/dresses/new
  def new
    @admin_dress = Admin::Dress.new
  end

  # GET /admin/dresses/1/edit
  def edit
  end

  # POST /admin/dresses or /admin/dresses.json
  def create
    @admin_dress = Admin::Dress.new(admin_dress_params)

    respond_to do |format|
      if @admin_dress.save
        format.html { redirect_to @admin_dress, notice: "Dress was successfully created." }
        format.json { render :show, status: :created, location: @admin_dress }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/dresses/1 or /admin/dresses/1.json
  def update
    respond_to do |format|
      if @admin_dress.update(admin_dress_params)
        format.html { redirect_to @admin_dress, notice: "Dress was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_dress }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/dresses/1 or /admin/dresses/1.json
  def destroy
    @admin_dress.destroy!

    respond_to do |format|
      format.html { redirect_to admin_dresses_path, status: :see_other, notice: "Dress was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dress
      @admin_dress = Admin::Dress.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_dress_params
      params.expect(admin_dress: [ :name, :description, :image_url, :category_id ])
    end
end
