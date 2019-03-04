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
    binding.pry
    puts "#{song_number}. #{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  #this method is the same as in jukebox.rb
end

def run(my_songs)
  #this method is the same as in jukebox.rb
end

list(my_songs)
