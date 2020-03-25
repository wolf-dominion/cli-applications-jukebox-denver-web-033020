
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
=begin
def say_hello(name)
    "Hi #{name}!"
  end
  
  puts "Enter your name:"
  users_name = gets.strip
  
  puts say_hello(users_name)
=end

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
    puts "Please enter a song name or number:"
    songInput = gets.strip
    valid = 'no'
    songName = ''
    songs.each_with_index do |n, i|
        if ((songInput == n) || (songInput.to_i == i+1))
            return puts "Playing #{n}"
        end
    end
    
    if valid == 'no'
        puts "Invalid input, please try again"
    end
end

def list(songList)
    songList.each_with_index do |n, i|
        puts "#{i+1}. #{n}"
    end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    puts "Please enter a command:"
    userInput = ''
    while userInput != 'exit' do
        
        userInput = gets.strip

        if userInput == 'help'
            help
        end

        if userInput == 'play'
            play(songs)
        end

        if userInput == 'list'
            list(songs)
        end
    end
    if userInput == 'exit'
        exit_jukebox
    end
end