import 'package:myfirstflutter_app/model/kopimodel.dart';


class KopiData {
  static var kopiitem = [
    KopiModel(
      namakopi: 'Cappucino',
      asalkopi: 'Italia',
      detailkopi:
          'cappucino adalah salah satu jenis favorit kopi pilihan di indonesia khususnya di restoran ',
      gambarkopi: 'https://img.kurio.network/sg4J2e5k0VYYDrrtdpMCEhfVUhI=/411x231/filters:quality(80)/https://kurio-img.kurioapps.com/19/05/28/50de339f-7e20-4738-b9a4-a2ba49991add.jpg',
      webkopi:
          'https://api.omela.com/storage/1325/conversions/e68bad0655a2c75490ac4e1be59eaace-large.png',
    ),
    KopiModel(
      namakopi: 'Aabika',
      asalkopi: 'AmerikaSelatan',
      detailkopi:
          'Arabika dikenal dengan rasa yang kompleks, asam yang menyegarkan, dan aroma yang khas.  ',
      gambarkopi:
          'https://awsimages.detik.net.id/community/media/visual/2022/06/25/fakta-biji-kopi-arabika-2.jpeg?w=1200',
      webkopi:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffood.detik.com%2Finfo-kuliner%2Fd-6146642%2F5-fakta-menarik-biji-kopi-arabika-sudah-ada-sejak-abad-ke-9&psig=AOvVaw0KwKjClYv69ZRdKv7ZHFlo&ust=1700707153193000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCICO-qKT2IIDFQAAAAAdAAAAABAI',
    ),
    KopiModel(
      namakopi: 'Robusta',
      asalkopi: 'Afrika',
      detailkopi:
          'Robusta memiliki cita rasa yang lebih kuat dan pahit dibanding Arabika. Kandungan kafeinnya lebih tinggi, memberikan kekuatan dan kekentalan. ',
      gambarkopi:
          'https://www.blibli.com/friends-backend/wp-content/uploads/2023/02/B200133-cover-Apa-Itu-Kopi-Robusta-scaled.jpg',
      webkopi:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.blibli.com%2Ffriends%2Fblog%2Fapa-itu-kopi-robusta-yuk-cari-tahu%2F&psig=AOvVaw03oRLCc2iOyBrtGTpdZPg4&ust=1700707261061000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLC-nNaT2IIDFQAAAAAdAAAAABAE',
    ),
    KopiModel(
      namakopi: 'Liberika',
      asalkopi: 'Liberia',
      detailkopi:
          'Liberika memiliki citarasa yang unik, dengan sentuhan buah-buahan dan rasa yang lebih berani.  ',
      gambarkopi:
          'https://awsimages.detik.net.id/community/media/visual/2021/06/27/biji-kopi-liberika-6_43.jpeg?w=1200',
      webkopi:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.detik.com%2Fjatim%2Fkuliner%2Fd-6362740%2Fliberica-kopi-langka-yang-bijinya-segede-kurma-dan-beraroma-nangka&psig=AOvVaw0rMF9KL2O2bCkebYcSlA_V&ust=1700707381398000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNj5xY-U2IIDFQAAAAAdAAAAABAE',
    ),
  ];
  static var itemCount = kopiitem.length;

  static KopiModel getkopiitem(int index) {
    return kopiitem[index];
  }
}
