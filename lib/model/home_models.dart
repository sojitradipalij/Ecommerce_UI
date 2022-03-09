class OffCard {
  final String offtext;
  final String dealday;
  final String refcode;
  final String image;

  OffCard(
      {required this.offtext,
      required this.dealday,
      required this.refcode,
      required this.image});
}

class NewArrivals {
  final String pname;
  final String pdes;
  final String pprice;
  final String image;

  NewArrivals({
    required this.pname,
    required this.image,
    required this.pdes,
    required this.pprice,
  });
}

class PopularCard {
  final String name;
  final String des;
  final String price;
  final String image;

  PopularCard({
    required this.name,
    required this.image,
    required this.des,
    required this.price,
  });
}

class OnBordingCard {
  final String tag;
  final String subtag;
  final String image;

  OnBordingCard({
    required this.tag,
    required this.image,
    required this.subtag,
  });
}

class CategoryCard {
  final String cname;
  final String cdes;
  final String cprice;
  final String image;

  CategoryCard({
    required this.cname,
    required this.image,
    required this.cdes,
    required this.cprice,
  });
}
