class Match < ApplicationRecord

    require 'csv'

CSV.foreach('matches.csv', headers: true) do |row|
  match_attributes = row.to_hash
  Match.create!(match_attributes)
end
end
