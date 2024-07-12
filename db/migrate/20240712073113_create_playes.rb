class CreatePlayes < ActiveRecord::Migration[7.1]
  def change
    create_table :playes do |t|
      t.string :name
      t.integer :age
      t.string :position
      t.references :teams, null: false

      INSERT INTO playes (name, age, position, team_id) VALUES 
     {('Player 8', 26, 'Goalkeeper', 4),
      ('Player 9', 23, 'Forward', 5),
      ('Player 10', 28, 'Midfielder', 5),
      ('Player 11', 31, 'Defender', 6),
      ('Player 12', 20, 'Goalkeeper', 6),
      ('Player 13', 22, 'Forward', 7),
      ('Player 14', 24, 'Midfielder', 7),
      ('Player 15', 26, 'Defender', 8),
      ('Player 16', 25, 'Goalkeeper', 8),
      ('Player 17', 29, 'Forward', 9),
      ('Player 18', 27, 'Midfielder', 9),
      ('Player 19', 21, 'Defender', 10),
      ('Player 20', 30, 'Goalkeeper', 10),
      ('Player 21', 23, 'Forward', 1),
      ('Player 22', 25, 'Midfielder', 2),
      ('Player 23', 28, 'Defender', 3),
      ('Player 24', 31, 'Goalkeeper', 4),
      ('Player 25', 20, 'Forward', 5),
      ('Player 26', 22, 'Midfielder', 6),
      ('Player 27', 27, 'Defender', 7),
      ('Player 28', 29, 'Goalkeeper', 8),
      ('Player 29', 24, 'Forward', 9),
      ('Player 30', 26, 'Midfielder', 10)};


      t.timestamps
    end
  end
end
