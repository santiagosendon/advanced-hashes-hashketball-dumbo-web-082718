 def game_hash  
  
  hashketball_game = {
 :home => {
 :team_name => 'Brooklyn Nets',
 :colors => ['black', 'white'],
 :players => [
{player_name: 'Alan Anderson', number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
 {player_name: 'Reggie Evans', number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
 {player_name: 'Brook Lopez', number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
 {player_name: 'Mason Plumlee', number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
  {player_name: 'Jason Terry', number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
 ]},
 
  :away => {
  :team_name => 'Charlotte Hornets',
  :colors => ['turquoise', 'purple'],
  :players => [
  {player_name: 'Jeff Adrien', number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
 {player_name: 'Bismak Biyombo', number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
  {player_name: 'DeSagna Diop', number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
  {player_name: 'Ben Gordon', number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
 {player_name: 'Brendan Haywood', number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
  ]
 }
  }
end
 # self reminder .values returns an array of a hash/Key!!
 # has_value? Returns true if the given value is present for the key in hash.

 def num_points_scored(player_name)
  game_hash.values.each do |team|  
  team[:players].each do |player|
  return player[:points] if player.has_value?(player_name)
end
end
end
 
 def shoe_size(player_name)
  game_hash.values.each do |team_info|  
  team_info[:players].each do |player|
  return player[:shoe] if player.has_value?(player_name)
end
end
end
 
 def team_colors(team)
 game_hash.values.each do |team_info|
  if team_info.has_value?(team)
  return team_info[:colors].map(&:capitalize) #<- turns a_proc_object into a block and calls 
end
end
end
 
 def team_names
  game_hash.values.map {|value| value[:team_name]}
 end
 
 def player_numbers(team)
 game_hash.values.each do |team_info|
 if team_info.has_value?(team)
 return team_info[:players].map { |player| player[:number]}
end
end
end

 def player_stats(player_name)
game_hash.values.each do |team_info|
 team_info[:players].each do |player|
 if player.has_value?(player_name)
 player.delete(:player_name) 
  return player
end
end
end
end
 
 def big_shoe_rebounds
 biggest_shoe = 0
  player_rebounds = 0
  game_hash.values.each do |team_info|
 team_info[:players].each do |player|
 if player[:shoe] > biggest_shoe
 biggest_shoe = player[:shoe] 
 player_rebounds = player[:rebounds] 
end
end
end
 
  return player_rebounds
end
 
 def most_points_scored
 most_points = 0
  points_mvp = ""
  game_hash.values.each do |team_info|
team_info[:players].each do |player|
if player[:points] > most_points
 most_points = player[:points] 
 points_mvp = player[:player_name] 
end
end
end
 return  points_owner
end
 
 def winning_team
 top_team = {}
  game_hash.values.each do |team_info|
 team_points = 0
  team_info[:players].each do |player|
  team_points += player[:points]
end
  top_team[team_info[:team_name]] = team_points   
end                           # .key Returns a new array populated with the keys from the hash   
  top_team.key(top_team.values.max)   
end
 
 def player_with_longest_name
  longest_name = []
  game_hash.values.each do |team_info|
  team_info[:players].each do |player|
  longest_name << player[:player_name]
end
end
                                    method max_by Importance_1
Ruby latest stable (v1_9_3_392) - 0 notes - Class: Enumerable
1_8_6_287
1_8_7_72
1_8_7_330
1_9_1_378
(-21)
1_9_2_180
(38)
1_9_3_125
1_9_3_392
What's this?
Related methods
Instance methods (52)
Importance_4_sm all?
Importance_2_sm any?
Importance_3_sm chunk
Importance_2_sm collect
Importance_1_sm collect_concat
Importance_1_sm count
Importance_1_sm cycle
Importance_2_sm detect
Importance_1_sm drop
Importance_2_sm drop_while
Importance_2_sm each_cons
Importance_1_sm each_entry
Importance_2_sm each_slice
Importance_1_sm each_with_index
Importance_2_sm each_with_object
Importance_1_sm entries
Importance_2_sm enum_cons (<= v1_8_7_330)
Importance_2_sm enum_slice (<= v1_8_7_330)
Importance_2_sm enum_with_index (<= v1_8_7_330)
Importance_3_sm find
Importance_2_sm find_all
Importance_1_sm find_index
Importance_2_sm first
Importance_3_sm flat_map
Importance_1_sm grep
Importance_2_sm group_by
Importance_1_sm include?
Importance_5_sm inject
Importance_4_sm map
Importance_2_sm max
Importance_1_sm max_by
Importance_2_sm member?
Importance_2_sm min
Importance_1_sm min_by
Importance_1_sm minmax
Importance_1_sm minmax_by
Importance_2_sm none?
Importance_2_sm one?
Importance_1_sm partition
Importance_2_sm reduce
Importance_2_sm reject
Importance_1_sm reverse_each
Importance_1_sm select
Importance_3_sm slice_before
Importance_1_sm sort
Importance_2_sm sort_by
Importance_1_sm take
Importance_1_sm take_while
Importance_1_sm to_a
Importance_0_sm to_json (<= v1_9_2_180)
Importance_1_sm to_set
Importance_2_sm zip
Icon_private_sm = private
Icon_protected_sm = protected

max_by() public
Returns the object in enum that gives the maximum value from the given block.
  longest_name.max_by{|name| name.length}
end                             
 
 def long_name_steals_a_ton?
  longest = {}
  game_hash.values.each do |team_info|
  team_info[:players].each do |player|
  longest[player[:player_name]] = player[:steals]
end
end
   max_steals = longest.values.max  # <- .max Returns the object in with the maximum value.
 longest[longest.key(max_steals)] == max_steals  
 end