import '../models/granel.dart';
import '../models/my_investor.dart';

class Repository {

static List<Granel> getMockedGranels() {
    return [
      Granel(
        title: "Frijoles Rojos",
        image: "assets/images/frijoles.png",
        caduca: "14",
        retorno: "90",
        rendimiento: "7",
        minimoInversion: 10000,
        metaInversion: 500000,
        invertido: 300000,
      ),
      Granel(
        title: "Chile",
        image: "assets/images/chile.png",
        caduca: "14",
        retorno: "120",
        rendimiento: "9",
        minimoInversion: 15000,
        metaInversion: 380000,
        invertido: 300000,
      ),
      Granel(
        title: "Almendras",
        image: "assets/images/granel3.png",
        caduca: "20",
        retorno: "120",
        rendimiento: "10",
        minimoInversion: 20000,
        metaInversion: 550000,
        invertido: 250000,
      ),
      Granel(
        title: "Frutos secos",
        image: "assets/images/granel4.jpg",
        caduca: "30",
        retorno: "120",
        rendimiento: "5",
        minimoInversion: 15000,
        metaInversion: 380000,
        invertido: 300000,
      ),
      Granel(
        title: "Semillas",
        image: "assets/images/granel5.png",
        caduca: "7",
        retorno: "120",
        rendimiento: "6",
        minimoInversion: 15000,
        metaInversion: 380000,
        invertido: 300000,
      ),
    ];
  }

  static List<MyInvestor> getMockedInvestors() {
    return [
      MyInvestor(
        title: 'Frijoles negros',
        image: 'assets/images/frijoles negros.png',
        start: DateTime(2022, 8, 2),
        end: DateTime(2022, 12, 2),
        rendimiento: 7.3,
        inversion: 21500
      ),
      MyInvestor(
        title: 'Frijoles blancos',
        image: 'assets/images/frijoles blancos.png',
        start: DateTime(2022, 8, 2),
        end: DateTime(2022, 12, 2),
        rendimiento: 7.3,
        inversion: 21500
      ),
      MyInvestor(
        title: 'Frutos secos',
        image: 'assets/images/frutos secos.jpg',
        start: DateTime(2022, 8, 2),
        end: DateTime(2022, 12, 2),
        rendimiento: 7.3,
        inversion: 21500
      ),
      MyInvestor(
        title: 'Frutos Rojos',
        image: 'assets/images/frutos rojos.jpg',
        start: DateTime(2022, 8, 2),
        end: DateTime(2022, 12, 2),
        rendimiento: 7.3,
        inversion: 21500
      ),
      MyInvestor(
        title: 'Semillas',
        image: 'assets/images/semillas.jpg',
        start: DateTime(2022, 8, 2),
        end: DateTime(2022, 12, 2),
        rendimiento: 7.3,
        inversion: 21500
      ),
    ];
  }

}