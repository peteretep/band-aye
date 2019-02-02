class GigsController < ApplicationController
  load_and_authorize_resource
  before_action :set_gig, only: [:show, :edit, :update, :destroy, :signup]

  # GET /gigs
  # GET /gigs.json
  def index

    @past_gigs = Gig.where(when: Time.now - 1.year..Time.now )
    @future_gigs = Gig.where(when: Time.now..Time.now + 2.years)
  end

  # GET /gigs/1
  # GET /gigs/1.json
  def show
    # byebug
  end

  # GET /gigs/new
  def new
    @gig_admins = Member.where(gig_admin: true)
    @gig = Gig.new
  end

  # GET /gigs/1/edit
  def edit
    @gig_admins = Member.where(gig_admin: true)
  end

  # POST /gigs
  # POST /gigs.json
  def create
    @gig = Gig.new(gig_params)
    @gig.gig_admin = Member.find(gig_params[:gig_admin_id])
    respond_to do |format|
      if @gig.save
        format.html { redirect_to @gig, notice: 'Gig was successfully created.' }
        format.json { render :show, status: :created, location: @gig }
      else
        format.html { render :new }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gigs/1
  # PATCH/PUT /gigs/1.json
  def update
    respond_to do |format|
      if @gig.update(gig_params)
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig }
      else
        format.html { render :edit }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigs/1
  # DELETE /gigs/1.json
  def destroy
    @gig.destroy
    respond_to do |format|
      format.html { redirect_to gigs_url, notice: 'Gig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def signup
    @gig.players << @current_member unless @gig.players.include? @current_member
    respond_to do |format|
      format.html { redirect_to @gig, notice: 'Thanks for signing up!' }
      format.json { render :show, status: :ok, location: @gig }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gig
    @gig = Gig.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def gig_params
    params.require(:gig).permit(:title, :where, :when, :band_contact,
                                :gig_admin_id, :confirmed, :about, :signup)
  end
end
