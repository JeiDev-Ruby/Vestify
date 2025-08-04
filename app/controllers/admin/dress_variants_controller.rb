class Admin::DressVariantsController < ApplicationController
  before_action :set_admin_dress_variant, only: %i[ show edit update destroy ]

  # GET /admin/dress_variants or /admin/dress_variants.json
  def index
    @admin_dress_variants = Admin::DressVariant.all
  end

  # GET /admin/dress_variants/1 or /admin/dress_variants/1.json
  def show
  end

  # GET /admin/dress_variants/new
  def new
    @admin_dress_variant = Admin::DressVariant.new
  end

  # GET /admin/dress_variants/1/edit
  def edit
  end

  # POST /admin/dress_variants or /admin/dress_variants.json
  def create
    @admin_dress_variant = Admin::DressVariant.new(admin_dress_variant_params)

    respond_to do |format|
      if @admin_dress_variant.save
        format.html { redirect_to @admin_dress_variant, notice: "Dress variant was successfully created." }
        format.json { render :show, status: :created, location: @admin_dress_variant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_dress_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/dress_variants/1 or /admin/dress_variants/1.json
  def update
    respond_to do |format|
      if @admin_dress_variant.update(admin_dress_variant_params)
        format.html { redirect_to @admin_dress_variant, notice: "Dress variant was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_dress_variant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_dress_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/dress_variants/1 or /admin/dress_variants/1.json
  def destroy
    @admin_dress_variant.destroy!

    respond_to do |format|
      format.html { redirect_to admin_dress_variants_path, status: :see_other, notice: "Dress variant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dress_variant
      @admin_dress_variant = Admin::DressVariant.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_dress_variant_params
      params.expect(admin_dress_variant: [ :dress_id, :sku, :size_id, :color, :condition, :status, :daily_rate ])
    end
end
