import 'package:get/get.dart';
import 'package:movieapp/model/movie.dart';

class ControllerCard extends GetxController {
  RxList<MoviesModel> listOfMovies = [
   MoviesModel(
      title: "Spider-Man: No Way Home",
      imageAd: "assets/spiderman.png",
      genre: "Action/Adventure",
      iMBd: '8.6',
      time: '2h 28m',
      director: 'Jon Watts',
      writer: 'Chris McKenna',
      description:
          " pahlawan super fiktif dari Marvel Comics yang diciptakan oleh penulis Stan Lee dan artis Steve Ditko. Ia pertama muncul dalam Amazing Fantasy #15 (Agustus 1962). Ia telah menjadi salah satu pahlawan super yang paling terkenal di dunia.",
    ),
    MoviesModel(
      title: "The Batman",
      imageAd: "assets/batman.png",
      genre: "Action/Crime/Drama",
      iMBd: '8.4',
      time: '2h 56m',
      director: 'Maat Reeves',
      writer: 'Maat Reeves/Peter Chaig/Bill Finger',
      description:
          "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
    ),
    MoviesModel(
      title: "Squad Games",
      imageAd: "assets/squad-game.png",
      genre: "Adventure/Action",
      iMBd: '6.7',
      time: '1h 56m',
      director: 'Ruben Fleischer',
      writer: 'Amy Hennig',
      description:
          "Treasure hunter Victor Sully Sullivan recruits street-smart Nathan Drake to help him recover a 500-year-old lost fortune amassed by explorer Ferdinand Magellan. What starts out as a heist soon becomes a globe-trotting, white-knuckle race to reach the prize before the ruthless Santiago Moncada can get his hands on it. If Sully and Nate can decipher the clues and solve one of the world's oldest mysteries, they stand to find \$5 billion in treasure -- but only if they can learn to work together.",
    ),
    MoviesModel(
      title: "Clams",
      imageAd: "assets/clams.png",
      genre: "Romance/Comedy",
      iMBd: '6.1',
      time: '1h 52m',
      director: 'Kat Coiro',
      writer: 'John Rogres',
      description:
          "Pop superstar Kat Valdez is about to get married before an audience of her loyal fans. However, seconds before the ceremony, she learns about her fiance's cheating ways and has a meltdown on stage. In a moment of inspired insanity, Kat locks eyes with a total stranger in the crowd and marries him on the spot. As forces conspire to separate the unlikely newlyweds, they must soon decide if two people from such different worlds can find true love together.",
    ),
    MoviesModel(
      title: "Enola",
      imageAd: "assets/enola.png",
      genre: "Sci-fi/Adventure",
      iMBd: '5.3',
      time: '2h 10m',
      director: 'Roland Emmerich',
      writer: 'Roland Emmerich',
      description:
          "The world stands on the brink of annihilation when a mysterious force knocks the moon from its orbit and sends it hurtling toward a collision course with Earth. With only weeks before impact, NASA executive Jocinda Jo Fowler teams up with a man from her past and a conspiracy theorist for an impossible mission into space to save humanity.",
    ),
  ].obs;

  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
