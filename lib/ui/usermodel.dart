class Usermodel{
  String? email;
  String? password;
  String?  phonenumber;
  String? id;
  Usermodel({this.email,this.password,this.id,this.phonenumber});

  Map<String,dynamic> toMap() {
    return<String,dynamic>{
      "email":email,
      "password":password,
      "phonenumber":phonenumber,
      "id":id,

    };

  }
  factory Usermodel.fromMap(Map<String,dynamic>map){
    return Usermodel(
      email:map["email"]as String,
      password: map["Password"]as String,
      phonenumber: map["phonenumber"]as String,
      id: map["id"] != null ? map["id"] as String:null
    );
  }
 Usermodel Copywith({
  String? email,
  String?password,
  String? phonenumber,
  String? id,
 }){
  return Usermodel(
    email: email ?? this.email,
    password: password ?? this.password,
    phonenumber: phonenumber ??this.phonenumber,
    id:id ?? this.id,
  );
 }
  }