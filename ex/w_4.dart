/*
There is a base class called Media and it has a method called play() that prints

 “Playing media...”.
You need to create a derived class called Song that inherits from the Media class
and adds an additional attribute called artist (string). 
 
The Song class should override the play() method to print the artist name along with the media play message like

“Playing song by $artist...'”.
In main() create one instance of Media and one of Song. Call their play() methods that print proper messages.
*/

class Media {
  void play() {
    print("Playing media...");
  }
}

class Song extends Media {
  String artist;
  Song(this.artist);
  @override
  void play() {
    print("Playing song by $artist...");
  }
}

void main() {
  Media media = Media();
  media.play();

  Song song = Song("Sajjad Rahman");
  song.play();
}
