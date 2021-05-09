class Clothes{
  String Name;
  int Price;
Clothes({
    this.Name,
  this.Price,
        });
 Clothes.fromJson(Map <String,dynamic> json){
    Name=json['Name'];
    Price=json['Price'];
}
}
