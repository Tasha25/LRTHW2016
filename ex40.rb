class Song #creates a class

  def initialize(lyrics)
    @lyrics = lyrics # this will be in any Song object you create
  end

  def sing_me_a_song() #creates a method for the song class.
    @lyrics.each {|line| puts line } #for each line in lyrics print out
  end

  def change(new_lyrics)
    lyrics = new_lyrics
  end
end


happy_bday = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])

natasha_song = Song.new(["I love myself", "I enjoy archery", "I will create my future."])
puts natasha_song.change("Sing a better song")



# arr_song = ["All I do is win", "Win win", "Nothing more or less"]

# song_with_variable = Song.new(arr_song)

# happy_bday.sing_me_a_song()

# bulls_on_parade.sing_me_a_song()

# natasha_song.sing_me_a_song()

# song_with_variable.sing_me_a_song()

# song_with_variable.loud


