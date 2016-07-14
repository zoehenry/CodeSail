class VotersController < ApplicationController
  def index

  end

  def create
    voter_hash = params.delete('voter')
    v = Voter.new
    v.first_name = voter_hash['first_name']
    v.last_name = voter_hash['last_name']
    v.state = voter_hash['state']

    lookup_hash = {
      "California" => "6/6/2016",
      "Oregon" => "1/1/2016",
      "Washington" => "1/1/2016"
    }

    svd = StateVoteDate.where(state: v.state.titleize, election_date: lookup_hash[v.state.titleize]).first_or_initialize

    if !svd.persisted?
      svd.save
    end

    v.state_vote_date_id = svd.id

    v.save
    
    redirect_to voter_path(v.id)

  end

  def new
    @voter = Voter.new
  end

  def edit

  end

  def show
    id = params[:id]
    @voter = Voter.find(id)
  end

  def update

  end

  def destroy

  end
end
