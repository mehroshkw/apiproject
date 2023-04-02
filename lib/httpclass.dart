import 'package:apiproject/model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<QRcode?> getQRcode() async {
    var url = Uri.parse(
        "https://btrlaravel.stepinnsolution.com/api/getbarcode_results/89601785");
    try {
      var res = await http.get(url);
      if (res.statusCode == 200) {
        var data = qRcodeFromJson(res.body);
        return data;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
