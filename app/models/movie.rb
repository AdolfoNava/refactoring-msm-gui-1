# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
    def director
        current_director_id = self.director_id
        
        called_director = Director.where({:id => current_director_id})

        return called_director.at(0)
    end
end
