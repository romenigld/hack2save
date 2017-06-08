class PageController < ApplicationController
  def index
    @jobs = Job.paginate(page: params[:page]).order('created_at desc')
  end
end
