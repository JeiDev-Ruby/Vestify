class Admin::DocumentsController < ApplicationController
  before_action :set_admin_document, only: %i[ show edit update destroy ]

  # GET /admin/documents or /admin/documents.json
  def index
    @admin_documents = Admin::Document.all
  end

  # GET /admin/documents/1 or /admin/documents/1.json
  def show
  end

  # GET /admin/documents/new
  def new
    @admin_document = Admin::Document.new
  end

  # GET /admin/documents/1/edit
  def edit
  end

  # POST /admin/documents or /admin/documents.json
  def create
    @admin_document = Admin::Document.new(admin_document_params)

    respond_to do |format|
      if @admin_document.save
        format.html { redirect_to @admin_document, notice: "Document was successfully created." }
        format.json { render :show, status: :created, location: @admin_document }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/documents/1 or /admin/documents/1.json
  def update
    respond_to do |format|
      if @admin_document.update(admin_document_params)
        format.html { redirect_to @admin_document, notice: "Document was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_document }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/documents/1 or /admin/documents/1.json
  def destroy
    @admin_document.destroy!

    respond_to do |format|
      format.html { redirect_to admin_documents_path, status: :see_other, notice: "Document was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_document
      @admin_document = Admin::Document.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def admin_document_params
      params.expect(admin_document: [ :rental_id, :document_type, :file_url ])
    end
end
