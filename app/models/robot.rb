class Robot < ApplicationRecord
  scope :fire, -> { where(on_fire: true) }
  scope :rotors_more_than, lambda {|number| where('number_of_rotors>?', number) }
  scope :rotors_less_than, lambda {|number| where('number_of_rotors<?', number) }
  scope :color, lambda {|color| where(color: color) }

  scope :recycle, -> { where('number_of_rotors<? or number_of_rotors>? or
                              color=? or ( has_wheels=? and has_tracks=? ) or
                              ( has_wheels=? and rusty=? ) or
                              ( has_sentience=? and loose_screws=?) or
                              on_fire=?',
                              3,8,'blue', true, true, true, true, true, true, true)
                      }

  scope :factory_second, -> { where('( rusty=? and loose_screws=?) or
                                      paint_scratched=?', true, true, true)
                            }

  scope :factory_qa, -> { where('( rusty=? and loose_screws=?) or paint_scratched=?', true, true, true) }
end
