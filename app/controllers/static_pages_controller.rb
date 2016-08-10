class StaticPagesController < ApplicationController
  def home
    @positions=[]
    Patient.all.each do |patient|
      @positions.push Position.where(patient: patient).last
    end
  end
end
