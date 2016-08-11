class StaticPagesController < ApplicationController
  def home
    @positions=[]
    Patient.all.each do |patient|
      if not patient.positions.empty?
        @positions.push patient.positions.last
      end
    end
  end


end
