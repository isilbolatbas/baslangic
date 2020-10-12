
class Photo {
  final String forexbuying ;
  final String currencyname;

  Photo._({this.forexbuying, this.currencyname});
  Photo(this.forexbuying, this.currencyname);
  factory Photo.fromXML(Map<String, dynamic> xml) {

    return Photo._(
      currencyname: xml['CurrencyName'],
      forexbuying: xml['ForexBuying'],
    );



  }
}