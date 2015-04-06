class AlluserblogsController < ApplicationController

  def index
    @userblogs = Userblog.all
    
  end

end
