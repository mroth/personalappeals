class BattlesController < ApplicationController
  # GET /battles
  # GET /battles.json
  def index
    @battles = Battle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @battles }
    end
  end

  # GET /battles/1
  # GET /battles/1.json
  def show
    @battle = Battle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @battle }
    end
  end

  # GET /battles/new
  # GET /battles/new.json
  def new
    @battle = Battle.new
    # the below should work in both sqlite and pg via http://oldwiki.rubyonrails.org/rails/pages/HowtoSelectRandomRecords
    @contenders = Contender.find(:all, :order => 'RANDOM()', :limit => 2)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @battle }
    end
  end

  # GET /battles/1/edit
  def edit
    @battle = Battle.find(params[:id])
  end

  # POST /battles
  # POST /battles.json
  def create
    @battle = Battle.new(params[:battle])
    @battle.voter = request.remote_ip

    respond_to do |format|
      if @battle.save
        # format.html { redirect_to new_battle_url, notice: 'Battle was successfully created.' }
        format.html { redirect_to new_battle_url, flash: {:last_battle_id => @battle.id, :last_winner_id => @battle.winner_id, :last_loser_id => @battle.loser_id} }
        format.json { render json: @battle, status: :created, location: @battle }
      else
        format.html { render action: "new" }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /battles/1
  # PUT /battles/1.json
  def update
    @battle = Battle.find(params[:id])

    respond_to do |format|
      if @battle.update_attributes(params[:battle])
        format.html { redirect_to @battle, notice: 'Battle was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battles/1
  # DELETE /battles/1.json
  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy

    respond_to do |format|
      format.html { redirect_to battles_url }
      format.json { head :ok }
    end
  end
end
