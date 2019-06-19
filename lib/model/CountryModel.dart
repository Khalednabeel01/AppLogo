class CountryModel{
  String id, name;


  CountryModel.fromJson(obj) {
    this.id = obj['id'].toString();
    this.name = obj['name'].toString();

  }

  static List<CountryModel> fromJsonList(jsonList) {
    return jsonList.map<CountryModel>((obj) => CountryModel.fromJson(obj)).toList();
  }
  static List<String> fromJsonListStr(jsonList) {
    return jsonList.map<String>((obj) => CountryModel.fromJson(obj)).toList();
  }
}