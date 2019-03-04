require 'pry'

my_songs = {
"Go Go GO" => '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/reactive-subroutine-8984/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  song_number = 1
  my_songs.each do |song, path|
    puts "#{song_number}. #{song}"
    song_number += 1
  end
end


def play(my_songs)
  user_response = 0
  choice_number = -1
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  choice = get_choice_number(songs, user_response)
  if choice != -1
    open songs[choice]
  else
    puts "Invalid input, please try again"
  end
end

def get_choice_number(my_songs, user_response)
  if user_response.to_i > 0 && user_response.to_i < songs.length
    song_number = 1
    songs.each do |song_name, path|
      if user_response == song_number
        return song_name
      end
      song_number += 1
    end
  else
    songs.each do |song_name, path|
      if song_name == user_response
        return song_name
      end
    end
  end
  #if we've made it this far, the choice was invalid.  Return -1.
  -1
end


def exit_jukebox
    puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  user_response = 0
  puts "Please enter a command:"
  help
  until user_response == "exit"
    user_response = gets.chomp
    case user_response
    when "list"
      list(my_songs)
    when "help"
      help
    when "play"
      play(my_songs)
    when "exit"
      exit_jukebox
    else
      puts "Invalid input.  Please try again."
    end
    puts "Please enter a command:"
  end
end

run(my_songs)
