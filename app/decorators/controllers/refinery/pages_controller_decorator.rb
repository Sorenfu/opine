Refinery::PagesController.class_eval do

  before_action :find_polls, :only => [:home]

  protected

  def find_polls
    @skip_header = true
    @polls = Poll.active.order(:order, :created_at).limit(5).to_a
  end

end