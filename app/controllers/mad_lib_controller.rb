class MadLibController < ApplicationController
  # field :type, type: Boolean
  def index
    @mad_lib = []
  end

  def new

  end


  def create
    @params = params
    @variable = "hey I'm doing the right thing yay"
    @verb = params[:verb]
    @type = params[:type]
    render :video_game
  end

  def video_game
    @adjective = params[:adjective]

  end

  def create_space
    @time = params[:time]
    render :girls_in_space
  end


  def verb

  end

  def lib_param
    params.require(:mad_lib).permit()
  end

# if we had a model things would look kinda like this:

# def create
#   @mad_lib = MadLib.new(lib_param)
#
#   if @mad_lib.save
#     redirect_to :action => 'list'
#   else
#     @mad_libs = MadLib.all
#     render :action => 'new'
#   end
# end

end
