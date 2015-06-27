class HomeController < ApplicationController
  def index
    @mathematica_package=MathematicaPackage.new
  end
end
