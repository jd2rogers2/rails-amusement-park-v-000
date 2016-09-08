 class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride
    if user.tickets < attraction.tickets && user.height < attraction.min_height
      "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif user.tickets < attraction.tickets
      "Sorry. You do not have enough tickets the #{attraction.name}."
    elsif user.height < attraction.min_height
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    else
      tix = user.tickets -= attraction.tickets
      bleh = user.nausea += attraction.nausea_rating
      smiles = user.happiness += attraction.happiness_rating
      user.update(tickets: tix, nausea: bleh, happiness: smiles)
    end
  end
end
