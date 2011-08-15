class ArchivementsController < ApplicationController
  # GET /archivements/1
  # GET /archivements/1.json
  def show
    @archivement = Archivement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @archivement }
    end
  end

  # GET /archivements/new
  # GET /archivements/new.json
  def new
    @archivement = Archivement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @archivement }
    end
  end

  # GET /archivements/1/edit
  def edit
    @archivement = Archivement.find(params[:id])
  end

  # POST /archivements
  # POST /archivements.json
  def create
    params[:archivement][:category]
    @archivement = Archivement.new(params[:archivement])

    respond_to do |format|
      if @archivement.save
        format.html { redirect_to @archivement, notice: 'Archivement was successfully created.' }
        format.json { render json: @archivement, status: :created, location: @archivement }
      else
        format.html { render action: "new" }
        format.json { render json: @archivement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /archivements/1
  # PUT /archivements/1.json
  def update
    @archivement = Archivement.find(params[:id])

    respond_to do |format|
      if @archivement.update_attributes(params[:archivement])
        format.html { redirect_to @archivement, notice: 'Archivement was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @archivement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivements/1
  # DELETE /archivements/1.json
  def destroy
    @archivement = Archivement.find(params[:id])
    @archivement.destroy

    respond_to do |format|
      format.html { redirect_to archivements_url }
      format.json { head :ok }
    end
  end
end
