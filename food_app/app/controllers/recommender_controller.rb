class RecommenderController < ApplicationController
  def index
  end

  def recommend_me
    mood = params['mood']
    svc = RecommenderService.new(mood)
    @recommendations = svc.recommend #expect recomenndations to be an array of restaurant objects
    # UserNotifier.send_signup_email.deliver_now
  end
end
