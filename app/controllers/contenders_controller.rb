class ContendersController < ApplicationController
  # GET /contenders
  # GET /contenders.json
  def index
    @contenders = Contender.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contenders }
    end
  end

  # GET /contenders/1
  # GET /contenders/1.json
  def show
    @contender = Contender.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contender }
    end
  end

  # GET /contenders/new
  # GET /contenders/new.json
  def new
    @contender = Contender.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contender }
    end
  end

  # GET /contenders/1/edit
  def edit
    @contender = Contender.find(params[:id])
  end

  # POST /contenders
  # POST /contenders.json
  def create
    @contender = Contender.new(params[:contender])

    respond_to do |format|
      if @contender.save
        format.html { redirect_to @contender, notice: 'Contender was successfully created.' }
        format.json { render json: @contender, status: :created, location: @contender }
      else
        format.html { render action: "new" }
        format.json { render json: @contender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contenders/1
  # PUT /contenders/1.json
  def update
    @contender = Contender.find(params[:id])

    respond_to do |format|
      if @contender.update_attributes(params[:contender])
        format.html { redirect_to @contender, notice: 'Contender was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @contender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contenders/1
  # DELETE /contenders/1.json
  def destroy
    @contender = Contender.find(params[:id])
    @contender.destroy

    respond_to do |format|
      format.html { redirect_to contenders_url }
      format.json { head :ok }
    end
  end
end
