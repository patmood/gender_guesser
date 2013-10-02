class BodyStat < ActiveRecord::Base

  def self.guess_gender(height, weight)
    if profile = BodyStat.find_by_height(height)
      male = (weight - profile.male_weight).abs
      female = (weight - profile.female_weight).abs
      male < female ? "male" : "female"
    else
      nil
    end
  end

end
