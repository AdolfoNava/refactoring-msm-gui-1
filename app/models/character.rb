# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
    def movie
        mov_id = self.movie_id
        played_in = Movie.where({:id => mov_id}).at(0)
        return played_in
    end
end
