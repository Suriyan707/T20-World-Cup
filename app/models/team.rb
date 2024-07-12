class Team < ApplicationRecord
    self.table_name = "teams"
    has_many :playes
end
