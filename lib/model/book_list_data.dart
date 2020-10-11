class BookListData {
  BookListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
    this.id=1,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int id;
  int perNight;

  static List<BookListData> hotelList = <BookListData>[
    BookListData(
      imagePath: 'assets/images/restepeden.jpg',
      titleTxt: 'Klasik',
      subTxt: 'Tolstoy',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
      id:1,
    ),
    BookListData(
      imagePath: 'assets/images/resbina.jpg',
      titleTxt: 'Edebiyat',
      subTxt: 'Namık Kemal',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 200,
      id:2,

    ),
    BookListData(
      imagePath: 'assets/images/resgece.jpg',
      titleTxt: 'Bilim',
      subTxt: 'Einstein',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 60,
      id:3,

    ),
    BookListData(
      imagePath: 'assets/images/teknokent.jpg',
      titleTxt: 'Tarih',
      subTxt: 'İlber Ortaylı',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 170,
      id:4,

    ),
    BookListData(
      imagePath: 'assets/images/kampus.jpg',
      titleTxt: 'Sanat',
      subTxt: 'Kimdorlon',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      perNight: 200,
      id:5,

    ),
  ];
}
