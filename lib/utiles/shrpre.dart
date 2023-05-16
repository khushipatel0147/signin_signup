import 'package:shared_preferences/shared_preferences.dart';

class Shr
{
  Future<void> create({String? pass, String? email, String? login})
  async {
    SharedPreferences shr =await SharedPreferences.getInstance();
    shr.setString('e1', email!);
    shr.setString('p1', pass!);
    shr.setString('l1',login!);
  }
  Future<Map<String, String?>> read()
  async {
    SharedPreferences shr=await SharedPreferences.getInstance();
    String? email=shr.getString('e1');
    String? pass=shr.getString('p1');
    String? login=shr.getString('l1');

    return {"email":email,"pass":pass,"l1":login};

  }

  Future<void> intro()
  async {
    SharedPreferences shrHelper= await SharedPreferences.getInstance();
    bool? visit=await shrHelper.setBool('v1', true);
  }
  Future<bool?> readline()
  async {
    SharedPreferences shrHelper= await SharedPreferences.getInstance();
    bool? visit = shrHelper.getBool('v1');
    return visit;
  }
}