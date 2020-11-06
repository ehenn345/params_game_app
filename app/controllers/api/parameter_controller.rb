class Api::ParameterController < ApplicationController
  def all_caps
    p "all caps"
    p params["name"].upcase
    render 'capsfolder.json.jb'
  end
  
end
