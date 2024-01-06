
class User{
  String? id;
  String Fname;
  String Lname;
  String Email;
  String Phone;
  String? Gender;
  String? Country;
  String? City;
  String? Role;
  String Username;
  String Password;


  User({
    this.id,
    required this.Fname,
    required this.Lname,
    required this.Email,
    required this.Phone,
    required this.Username,
    required this.Password,
    this.Gender,
    this.Country,
    this.City,
    this.Role,
    });


  Map<String,dynamic> toJsonMap()=>{
    "id": id,
    "firstname": Fname,
    "lastname": Lname,
    "email": Email,
    "Phone": Phone,
    "Gender": Gender,
    "Country": Country,
    "City": City,
    "Role": Role

  };






}