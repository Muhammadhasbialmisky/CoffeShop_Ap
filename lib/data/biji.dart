import 'package:myfirstflutter_app/model/biji.dart';

class BijiData{
  static var bijiitem = [
    BijiModel(
namabiji: 'Arabika',
gambarbiji: 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//99/MTA-8850914/kopi_bali_kintamani_biji_kopi_arabika_bali_kintamani_1kg_-biji-bubuk-_arabica_coffee_full01_odm73l5r.jpg',
hargabiji: '10 K'
    ),
     BijiModel(
namabiji: 'Robusta',
gambarbiji: 'https://www.bhinneka.com/blog/wp-content/uploads/2021/12/kopi-robusta-500x500.jpg',
hargabiji: '20 K'
    ),
     BijiModel(
namabiji: 'Arabika',
gambarbiji: 'https://awsimages.detik.net.id/community/media/visual/2021/06/27/biji-kopi-liberika-6_43.jpeg?w=1200',
hargabiji: '15 K'
    ),
     BijiModel(
namabiji: 'Arabika',
gambarbiji: 'https://down-id.img.susercontent.com/file/id-11134207-7r98o-lkt2zr2lo03z1b_tn',
hargabiji: '10 K'
    ),
  ];
   static var itemCount = bijiitem.length;

  static BijiModel getbijiitem(int index) {
    return bijiitem[index];
  }
}