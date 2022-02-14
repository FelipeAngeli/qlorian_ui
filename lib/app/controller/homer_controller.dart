import 'package:qlorian/app/model/coutry_model.dart';

class HomerController {
  final countryList = <Country>[
    Country(
      pais: "África do Sul",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/23px-Flag_of_South_Africa.svg.png",
    ),
    Country(
      pais: "Alemanha",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/23px-Flag_of_Germany.svg.png",
    ),
    Country(
      pais: "Angola",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Flag_of_Angola.svg/23px-Flag_of_Angola.svg.png",
    ),
    Country(
      pais: "Argentina",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/23px-Flag_of_Argentina.svg.png",
    ),
    Country(
      pais: "Austrália",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Australia.svg/23px-Flag_of_Australia.svg.png",
    ),
    Country(
      pais: "Bélgica",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Flag_of_Belgium_%28civil%29.svg/23px-Flag_of_Belgium_%28civil%29.svg.png",
    ),
    Country(
      pais: "Bolívia",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Flag_of_Bolivia.svg/22px-Flag_of_Bolivia.svg.png",
    ),
    Country(
      pais: "Brasil",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/22px-Flag_of_Brazil.svg.png",
    ),
    Country(
      pais: "Canadá",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/23px-Flag_of_Canada_%28Pantone%29.svg.png",
    ),
    Country(
      pais: "Chile",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Flag_of_Chile.svg/23px-Flag_of_Chile.svg.png",
    ),
    Country(
      pais: "Coreia do Norte",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/23px-Flag_of_South_Korea.svg.png",
    ),
    Country(
      pais: "Costa Rica",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_Costa_Rica.svg/23px-Flag_of_Costa_Rica.svg.png",
    ),
    Country(
      pais: "Espanha",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Spain.svg/23px-Flag_of_Spain.svg.png",
    ),
    Country(
      pais: "Estados Unidos",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/23px-Flag_of_the_United_States.svg.png",
    ),
    Country(
      pais: "Geórgia",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Flag_of_Georgia.svg/23px-Flag_of_Georgia.svg.png",
    ),
    Country(
      pais: "Islândia",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/21px-Flag_of_Iceland.svg.png",
    ),
    Country(
      pais: "Itália",
      bandeira:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/23px-Flag_of_Italy.svg.png",
    ),
  ];
  Country? initial;

  setInitial(Country value) {
    initial = value;
  }
}
