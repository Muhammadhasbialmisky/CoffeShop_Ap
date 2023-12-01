import 'package:myfirstflutter_app/model/gelasmodel.dart';

class GelasData{
  static var gelasitem = [
    GelasModel(
      namagelas: 'espressocup',
      gambargelas: 'https://jenggala.com/wp-content/uploads/2019/12/A02CO2790-3190.jpg',
    )
  ];
   static var itemCount = gelasitem.length;

  static GelasModel getgelasitem(int index) {
    return gelasitem[index];
  }
}