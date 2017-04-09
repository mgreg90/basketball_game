# scott was here

# ORIGINAL CODE

# team structure: hash for team includes team info
# also includes array of players
# each player is a hash with info and attributes

# Default Values
boomshakalaka_sound = 'Sounds/Boomshakalaka.wav'
no_good_sound = 'Sounds/No_Good.wav'
razzle_dazzle_sound = 'Sounds/Razzle_Dazzle.wav'
three_pointer_sound = 'Sounds/Three_Pointer.wav'
pass_sound = 'Sounds/Pass.wav'
background_sound = 'Sounds/background.wav'
pid = spawn("play -q #{background_sound} repeat 100")

# Begin game restart loop
while true
  def_length = 1
  def_team1 = "Heat"
  separator = "--------------------------------------------" + '-' * 40 + \
  "------------------------------\n\n"
  title_screen = """
            ,@@@@@   @@@*   @@@@@@.    @@@@@,  @@@@@@@@@@@@@#       .@@@@@@@@%
            ,@@@@%  @@@@%   @@@@@@@    @@@@@,  @@@@@@@@@@@@@@@      @@@@@@@@@@
            ,@       #@@%   @@@@@@@&   @@@@@,  @@@@@@    @@@@@&     @@@@@@@@@@.
            ,*        @@%   @@@@@@@@   @@@@@,  @@@@@@    @@@@@@    ,@@@@@%@@@@@
            /      @@ %@%   @@@@@@@@@  @@@@@,  @@@@@@    @@@@@#    @@@@@, @@@@@
            ,*     ,@# @%   @@@@@(@@@, @@@@@,  @@@@@@@@@@@@@@@     @@@@@  @@@@@,
            ,       @   *   @@@@@,@@@@ @@@@@,  @@@@@@@@@@@@,      @@@@@@  @@@@@@
            ,@      #   .   @@@@@,,@@@*@@@@@,  @@@@@@@@@@@@@@@.   @@@@@@  %@@@@@
            ,@@@     @@@%   @@@@@, @@@@@@@@@,  @@@@@@    &@@@@@   @@@@@*   @@@@@@
            ,@@@@    ,@@%   @@@@@,  @@@@@@@@,  @@@@@@    ,@@@@@, @@@@@@@@@@@@@@@@
            ,@@@@@@*  @@%   @@@@@,  @@@@@@@@,  @@@@@@    ,@@@@@, @@@@@@@@@@@@@@@@
            ,@@@@@@@@  @%   @@@@@,   @@@@@@@,  @@@@@@,,,@@@@@@@ *@@@@@%    %@@@@@@
            ,@@@@@@@@%.@%   @@@@@,   &@@@@@@,  @@@@@@@@@@@@@@@  @@@@@@.    ,@@@@@@
             @@@@@@@@% @    @@@@@,    @@@@@@,  @@@@@@@@@@@@@    @@@@@@      @@@@@@#



                                          #@@@@@@@(
                                       @@@@@@@@@@@@@@@@@
                                     @@@@@@@@@@@*  #@@@@@@*
                                   @@@@@# @@      .@  .@@@@@
                                  @@@@@@     @&      @* @@@@@
                                 ,@@   @       *@     ,@ @@@@,
            **&&@@@@@@@@@@@%*       @% %         ,@    %#,@@@@ @@@@@@@@@@@@@@@*
           @@@@@@@@@@@@@@@@@@@#  %@@@   @          @#   @@@@@@ @@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@   @*    @   @           @  @@@@@. @@@@@@@@@@@@@@@@@@@@@
           .@@@@@@@@@@@@@@@   @@   &@@@     @#         @ @@@@# @@@@@@@@@@@@@@@@@@@@@@#
           @&          @@  #@&  @@@   #@@@     &@@    .@@@@@#           @@@@@@@@@@@@@%
                    ,  #@@  @@   @  @@@@#       #@@@@@@@@   *%,    .%@@@@@@@@@@@@@@
            @@@@@@@  #@@@@@#  @@@*     @@@@@@@@@@@@@@@*     %@@@@@@@@@@@@@@@@@@@@#
            @@@@@* .@@@@@   @@@      ,,.   *@@@@@#    %     %@@@@@@@@@@@@@@@@@%
             @@@@  @@@@@@ #@@   @.    @@@@@@@@    @@@@@@     *@@@@@@@@@@@@@@@@@@@@
             @@  @@@@@@@@@*  @@@@@@&  @@@@@@@@@   @@@@@@     #&%.,,.,*@@@@@@@@@@@@@@
                       #  .@@@@@@@@@# @@@@@@@@@@  @@@@@@                @@@@@@@@@@@@@
           @@&.           *@@@@@@@@@@@@ @@@@@@@@@@@.(@@@@@  @@@&,       ,@@@@@@@@@@@@@@
           @* @@@@@@@#  @@@@@@@@@@@@@% @@@@@@  @@@@@@@@@@. @@@@@@@@@@@@@@@@@@@@@@@@@@@
           @*@@@@@@@@ @@@@@@@@@@@@@@@  @@@@@@,  @@@@@@@@@, *@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@,   @@@@@@@@#  @@@@@@@@@@@@@@@@@@@@@@&
           #@@@@@@@@@@@@@@@@@&        @@@@@@%    ,@@@@@@%    ,&@@@@@@@@@@@@@&\n\n\n\n
  """

  # Create first team - Heat
  miami_heat = {
    city: "Miami",
    name: "Heat",
    short_name: "Heat",
    poss: false,
    team_points: 0,
    players: [
      dwyane_wade = {
        first_name: "Dwyane",
        last_name: "Wade",
        has_ball: false,
        selector: "w",
        shooting: (1.0/3),
        driving: 0.8,
        pg: true,
        points: 0
      },
      chris_bosh = {
        first_name: "Chris",
        last_name: "Bosh",
        has_ball: false,
        selector: "b",
        shooting: (1.3/3.0),
        driving: 0.65,
        pg: false,
        points: 0
      },
      joe_johnson = {
        first_name: "Joe",
        last_name: "Johnson",
        has_ball: false,
        selector: "j",
        shooting: (1.6/3),
        driving: 0.5,
        pg: false,
        points: 0
      }
    ]
  }
  # Create second team - Cavs
  cleveland_cavaliers = {
    city: "Cleveland",
    name: "Cavaliers",
    short_name: "Cavs",
    poss: false,
    team_points: 0,
    players: [
      lebron_james = {
        first_name: "LeBron",
        last_name: "James",
        has_ball: false,
        selector: "j",
        shooting: (1.0/3),
        driving: 0.8,
        pg: false,
        points: 0
      },
      kyrie_irving = {
        first_name: "Kyrie",
        last_name: "Irving",
        has_ball: false,
        selector: "i",
        shooting: (1.3/3),
        driving: 0.65,
        pg: true,
        points: 0
      },
      kevin_love = {
        first_name: "Kevin",
        last_name: "Love",
        has_ball: false,
        selector: "l",
        shooting: (1.6/3),
        driving: 0.5,
        pg: false,
        points: 0
      }
    ]
  }

  teams = [miami_heat, cleveland_cavaliers]

  #p miami_heat[:players][:johnson][:first_name]
  #p cleveland_cavaliers[:players][:james][:first_name]

  # Create game loop so that game returns to home screen after a game
  # Game begins here - Welcome players
  puts "\n\n\n\n  W e l c o m e  t o . . .\n\n\n\n\n"
  puts title_screen

  # Get options from user
  puts "\t\t\t\tpress ENTER to continue\n\n\n\n"
  gets
  puts "\n\n\n\n\n\tO p t i o n s\n\n\n"
  # Get quarter length
  print "Choose quarter length (1-12): "
  length = gets.chomp.to_i
  puts "\n" + separator
  # if user gives an unacceptable quarter length default to 4
  if length == 0 || length > 12 || length < 1 then
    puts "\nThat's not an acceptable value!\nQuarters default to 4 minutes."
    length = def_length
  end

  # Get player one's team
  puts "Player one choose a team!\n\n"
  teams.each { |team|
    print team[:city] + " " + team[:name] +": (type #{team[:short_name]}"
    puts " to choose)"
    team[:players].each do |player|
      puts "\t" + player[:first_name] + " " + player[:last_name]
    end
    puts ""
  }
  print "Choose team: "
  team1 = gets.chomp.strip.downcase.capitalize
  puts ""
  puts separator

  # Test if user one chose a team correctly
  usable_answer = false

  teams.each do |team|
    if team1 == team[:short_name] then
      usable_answer = true
    end
  end

  unless usable_answer then
    puts "\nThat's not an acceptable answer!"
    puts "Default team chosen. (#{def_team1})\n\n"
    team1 = def_team1
  end

  # Set default for team2 to be the opposite of team1
  if team1 == "Cavs" then
    def_team2 = "Heat"
  else
    def_team2 = "Cavs"
  end
  team2 = def_team2


  # Get player two's team
  # puts "\nPlayer two choose a team!\n\n"
  # teams.each { |team|
  #   print team[:city] + " " + team[:name] +": (type #{team[:short_name]}"
  #   puts " to choose)"
  #   team[:players].each do |player|
  #     puts "\t" + player[:first_name] + " " + player[:last_name]
  #   end
  #   puts ""
  # }
  # print "Choose team: "
  # team2 = gets.chomp.downcase.capitalize
  #
  # # Test if user two chose a team correctly
  # usable_answer = false
  #
  # teams.each do |team|
  #   if team2 == team[:short_name] then
  #     usable_answer = true
  #   end
  # end
  #
  # unless usable_answer then
  #   puts "\nThat's not an acceptable answer!"
  #   puts "Default team chosen. (#{def_team2})\n\n"
  #   team2 = def_team2
  # end
  #
  # Give game starting info
  # puts ""
  # puts separator
  puts "Player 1 is The #{team1}!"
  puts "Player 2 is The #{team2}!"
  if length == 1 then
    m = "minute"
  else
    m = "minutes"
  end
  puts "Each quarter will be #{length} #{m}!"
  puts "Let's play ball!\n\n"
  puts "    (Press ENTER to continue)"
  gets
  puts separator
  # We got our teams! Wow that was harder than I thought it'd be!
  # Let's set our game variables
  quarter = 1
  team1_score = 0
  team2_score = 0
  #clock_min = length
  #clock_sec = 0
  clock = length * 60
  shot_clock = 24
  game_on = true
  acceptable_answers = ['p', 's', 'd']

  # Here we go! Game on!
  if rand > 0.5 then
    poss = "Heat"
    teams[0][:poss] = true
  else
    poss = "Cavs"
    teams[1][:poss] = true
  end
  poss1 = poss # poss1 is used to handle end-of-qtr possession changes.
  puts "The #{poss} win the tip-off!\n\n"

  # Which player has the ball?
  teams.each do |team|
    if team[:short_name] == poss then
      player_rand = rand(3)
      @has_ball = team[:players][player_rand][:first_name] + " " \
      + team[:players][player_rand][:last_name]
      team[:players][player_rand][:has_ball] = true
      #puts has_ball[:first_name] + " " + has_ball[:last_name] + " has the ball!"
    end
  end

  shot_clock_reset = false

  while game_on
    # Describe the situation
    print "#{poss} ball! #{@has_ball} "
    puts "has the rock!"
    print "#{(clock / 60).to_i}:#{'%02d' % (clock % 60)} on the clock! "
    puts "#{'%.01f' % shot_clock} seconds on the shot clock!"
    puts "\t#{team1}: #{team1_score}  |  #{team2}: #{team2_score}"
    puts "\t      Quarter #{quarter}\n\n"

    move = nil
    while !acceptable_answers.include?(move)
      print "Would you like to (p)ass, (s)hoot, or (d)rive? "
      move = gets.chomp.strip.downcase
      if !acceptable_answers.include?(move)
        puts "\nI don't understand."
      end
    end

    case move
      # Instructions if user chooses to pass
    when 'p'
      puts "\nThese are your teammates: "
      teams.each do |team|
        if team[:poss] then
          @acceptable_answers_teammates = []
          team[:players].each do |player|
            unless player[:has_ball]
              @acceptable_answers_teammates.push(player[:last_name][0].downcase)
              player[:has_ball] = true
              print "\t#{player[:first_name]}"
              puts " (#{player[:last_name][0]})#{player[:last_name][1, player[:last_name].length-1]}"
            end
          end
        end
      end
      pass_to = '   '
      while !@acceptable_answers_teammates.include?(pass_to)
        print "Who would you like to pass to? "
        pass_to = gets.chomp.downcase.strip
        puts "\nI don't understand." if !@acceptable_answers_teammates.include?(pass_to)
      end
      print "\n#{@has_ball} passes to "
      teams.each do |team|
        if team[:poss] then
          team[:players].each do |player|
            if player[:selector] == pass_to then
              player[:has_ball] = true
              @has_ball = "#{player[:first_name]} #{player[:last_name]}"
            else
              player[:has_ball] = false
            end
          end
        end
      end
      puts "#{@has_ball}."
      pid = fork{ exec 'play','-q',pass_sound}
      puts "\n" + separator

      # Instructions for if user chooses to shoot
    when 's'
      puts "\n#{@has_ball} shoots from three-point range!"
      teams.each do |team|
        if team[:short_name] != poss then
          @other_team = team[:city]
        end
      end
      teams.each do |team|
        if team[:poss] then
          team[:players].each do |player|
            if player[:has_ball] then
              shot_rand = rand
              # D E B U G  S E C T I O N
              # p "shot_rand: " + shot_rand.to_s
              # p "player[:shooting]: " + player[:shooting].to_s
              # D E B U G  S E C T I O N
              if shot_rand <= player[:shooting] then
                puts "He hits it! Three points for #{team[:city]}!"
                pid = fork{ exec 'play','-q', three_pointer_sound}
                player[:points] += 3
                team[:team_points] += 3
                if team1 == poss then
                  team1_score += 3
                elsif team2 == poss then
                  team2_score += 3
                end
              else
                puts "No good! Rebound goes to #{@other_team}!"
                pid = fork{ exec 'play','-q', no_good_sound}
              end
            end
          end
        end
      end
      puts "\n" + separator
      shot_clock_reset = true
      # Change possession / give ball to pg
      teams.each do |team|
        if team[:poss] then
          team[:poss] = false
          team[:players].each do |player|
            player[:has_ball] = false
          end
        else
          team[:poss] = true
          poss = team[:short_name]
          team[:players].each do |player|
            if player[:pg] then
              @has_ball = "#{player[:first_name]} #{player[:last_name]}"
              player[:has_ball] = true
            else
              player[:has_ball] = false
            end
          end
        end
      end
      # Instructions for if user chooses to drive
    when 'd'
      puts "\n#{@has_ball} crosses over! He's going to the basket!"
      teams.each do |team|
        if team[:short_name] != poss then
          @other_team = team[:city]
        end
      end
      teams.each do |team|
        if team[:poss] then
          team[:players].each do |player|
            if player[:has_ball] then
              shot_rand = rand
              # D E B U G  S E C T I O N
              # p "shot_rand: " + shot_rand.to_s
              # p "player[:driving]: " + player[:driving].to_s
              # D E B U G  S E C T I O N
              if shot_rand <= player[:driving] then
                if rand < 0.2 then
                  puts "He jams it home! Boom-shakalaka!"
                  pid = fork{ exec 'play','-q', boomshakalaka_sound}
                  puts "Two points for #{team[:city]}!"
                else
                  puts "He lays it in! Two points for #{team[:city]}!"
                  pid = fork{ exec 'play','-q', razzle_dazzle_sound}
                end
                player[:points] += 2
                team[:team_points] += 2
                if team1 == poss then
                  team1_score += 2
                elsif team2 == poss then
                  team2_score += 2
                end
              else
                puts "No good! Rebound goes to #{@other_team}!"
                pid = fork{ exec 'play','-q', no_good_sound}
              end
            end
          end
        end
      end
      puts "\n" + separator
      shot_clock_reset = true
      # Change possession / give ball to pg
      teams.each do |team|
        if team[:poss] then
          team[:poss] = false
          team[:players].each do |player|
            player[:has_ball] = false
          end
        else
          team[:poss] = true
          poss = team[:short_name]
          team[:players].each do |player|
            if player[:pg] then
              player[:has_ball] = true
              @has_ball = "#{player[:first_name]} #{player[:last_name]}"
            else
              player[:has_ball] = false
            end
          end
        end
      end
    end
    # Player action per turn section over
    # Clock management per turn section here
    if shot_clock < clock && shot_clock < 8 then
      clock -= shot_clock
    else
      clock -= 7.9
    end
    shot_clock -= 7.9
    # Quarter clock handling goes here
    if clock <= 0 && quarter < 4 then
      clock = length * 60
      shot_clock = 24
      quarter += 1
      # Gather halftime stats
      quarter_team_names = []
      quarter_team_points = []
      quarter_player_pts = []
      quarter_player_names = []
      y = 0
      teams.each do |team|
        quarter_team_names.push(team[:city] + " " + team[:name])
        quarter_team_points.push(team[:team_points])
        x = 0
        temp_array = []
        temp_array2 = []
        team[:players].each do |player|
          temp_array.push(player[:points])
          temp_array2.push("#{player[:first_name]} #{player[:last_name]}")
          # quarter_player_pts[x].push(player[:points])
          # quarter_player_names[x].push(player[:first_name] + " " \
          # + player[:last_name])
          x += 1
          y += 1 if x == 3
        end
        quarter_player_pts.push(temp_array)
        quarter_player_names.push(temp_array2)
      end
      x = 0
      # while x <= 1
      #   y = quarter_player_points[x].index(quarter_player_points[x].max)
      #   quarter_player_pts[x] = quarter_player_pts[x][y]
      #   quarter_player_names[x] = quarter_player_names[x][y]
      #   x += 1
      # end

      # Grammar
      case quarter
      when 2
        q = "s t"
      when 3
        q = "n d"
      when 4
        q = "r d"
      end

      puts "Clock expired! End of quarter!\n\n"
      puts separator
      if quarter == 3
        puts "\t\t\tH a l f t i m e  R e p o r t\n\n\n"
      else
        puts "\t\t\tE n d  o f  #{quarter - 1} #{q}  Q u a r t e r\n\n\n"
      end
      puts "\t#{quarter_team_names[0]}\t\t\t\t#{quarter_team_names[1]}\n"
      if quarter_team_names[0][0] = "M" then
        spaces1 = 5
        spaces2 = 9
      else
        spaces1 = 9
        spaces2 = 5
      end
      print "\t" + (" " * spaces1) + "#{quarter_team_points[0]}\t"
      puts "\t\t\t\t" + (" " * spaces2) + "#{quarter_team_points[1]}\n\n"
      x = 0
      while x < 3
        print "\t#{quarter_player_names[0][x]}:\t#{quarter_player_pts[0][x]}\t\t"
        puts "\t#{quarter_player_names[1][x]}:\t#{quarter_player_pts[1][x]}"
        x += 1
      end
      print "\n\n" + separator

      if quarter == 2 or quarter == 3 then
        teams.each do |team|
          if team[:short_name] == poss1 then
            team[:poss] = false
            team[:players].each do |player|
              player[:has_ball] = false
            end
          else
            team[:poss] = true
            poss = team[:short_name]
            team[:players].each do |player|
              if player[:pg] then
                player[:has_ball] = true
                @has_ball = "#{player[:first_name]} #{player[:last_name]}"
              else
                player[:has_ball] = false
              end
            end
          end
        end
      elsif quarter == 4
        teams.each do |team|
          if team[:short_name] == poss1 then
            team[:poss] = true
            poss = team[:short_name]
            team[:players].each do |player|
              if player[:pg] then
                player[:has_ball] = true
                @has_ball = "#{player[:first_name]} #{player[:last_name]}"
              else
                player[:has_ball] = false
              end
            end
          else
            team[:poss] = false
            team[:players].each do |player|
              player[:has_ball] = false
            end
          end
        end
      else
        if rand > 0.5 then
          poss = "Heat"
          teams[0][:poss] = true
          teams[0][:players].each do |player|
            if player[:pg] then
              player[:has_ball] = true
              @has_ball = "#{player[:first_name]} #{player[:last_name]}"
            else
              player[:has_ball] = false
            end
          end
          teams[1][:poss] = false
          teams[1][:players].each do |player|
            player[:has_ball] = false
          end
        else
          poss = "Cavs"
          teams[1][:poss] = true
          teams[1][:players].each do |player|
            if player[:pg] then
              player[:has_ball] = true
              @has_ball = "#{player[:first_name]} #{player[:last_name]}"
            else
              player[:has_ball] = false
            end
          end
          teams[0][:poss] = false
          teams[0][:players].each do |player|
            player[:has_ball] = false
          end
        end
      end
    elsif clock <= 0 && quarter >= 4 then
      puts "Clock expired!\n\n"
      if team1_score > team2_score then
        puts "\t\t\tThe #{team1} win!"
        puts "\t\t\t   #{team1_score} - #{team2_score}\n"
        game_on = false
      elsif team2_score > team1_score then
        puts "\t\t\tThe #{team2} win!"
        puts "\t\t\t   #{team2_score} - #{team1_score}\n"
        game_on = false
      else
        puts "\t    O v e r t i m e !\n\n"
        puts "\t   #{team1}: #{team1_score}  |  #{team2}: #{team2_score}\n\n"
        puts separator
        quarter += 1
        clock = (length * 60) / 2
        shot_clock = 24
        # print "#{(clock / 60).to_i}:#{'%02d' % (clock % 60)} on the clock! "
        # puts "#{'%.01f' % shot_clock} seconds on the shot clock!"
      end
      # Shot clock handling goes here
    elsif shot_clock <= 0 then
      puts "Shot clock violation! That's a turnover!"
      shot_clock = 24
      if poss == "Heat" then
        poss = "Cavs"
        miami_heat[:poss] = false
        miami_heat[:players].each do |player|
          player[:has_ball] = false
        end
        cleveland_cavaliers[:poss] = true
        cleveland_cavaliers[:players].each do |player|
          if player[:pg] == true
            player[:has_ball] = true
            @has_ball = "#{player[:first_name]} #{player[:last_name]}"
          else
            player[:has_ball] = false
          end
        end
      else
        poss = "Heat"
        miami_heat[:poss] = true
        miami_heat[:players].each do |player|
          if player[:pg] == true then
            player[:has_ball] = true
            @has_ball = "#{player[:first_name]} #{player[:last_name]}"
          else
            player[:has_ball] = false
          end
        end
        cleveland_cavaliers[:poss] = false
        cleveland_cavaliers[:players].each do |player|
          player[:has_ball] = false
        end
      end

    end
    shot_clock = 24 if shot_clock_reset
    shot_clock_reset = false
    game_on = false if clock <= 0 && quarter >= 4



    # D E B U G  S E C T I O N
    # puts separator
    # puts "debug section"
    # p "@has_ball: " + @has_ball
    # teams.each do |team|
    #   team[:players].each do |player|
    #     p ":has_ball: " + player[:last_name] if player[:has_ball]
    #   end
    # end
    # p "poss: " + poss
    # teams.each do |team|
    #   p ":poss: " + team[:short_name] if team[:poss]
    # end
    # puts separator

  end


  x = 0
  while x < 3
    print "\t#{quarter_player_names[0][x]}:\t#{quarter_player_pts[0][x]}\t\t"
    puts "\t#{quarter_player_names[1][x]}:\t#{quarter_player_pts[1][x]}"
    x += 1
  end
  puts "\n\t\t    Press ENTER to return to home screen"
  print "\n\n" + separator
  gets
end
