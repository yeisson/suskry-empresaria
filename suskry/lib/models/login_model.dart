import "package:http/http.dart" as http;

class LoginModel {
  
  getToken() async {
    var request = http.MultipartRequest('POST', Uri.parse('http://34.69.20.1:8000/business/login'));
    request.fields.addAll({
      'email': 'mel.jxl@gmail.com',
      'password': '123456789'
    });


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return await response.stream.bytesToString();
    }
    else {
      print(response.reasonPhrase);
    }
  }

}