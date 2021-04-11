class Mens_info{
  final String Name;
  final int Price;
  Mens_info({this.Name,this.Price});
  factory Mens_info.fromJson(Map<String,dynamic> json){
    return new Mens_info(
      Name: json['Name'],
      Price: json['Price']
    );
  }


}