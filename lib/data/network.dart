import 'package:http/http.dart' as http; //http 라이브러리
import 'dart:convert'; //넘어온 json데이터를 디코딩해주는 라이브러리

class Network {
  final String url;

  Network(this.url);

  Future<dynamic> getJsonData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      //스테이터스 코드가 200일때 (서버수신이 양호 할 때) 실행한다.
      String jsonData = response.body;
      //jsonDecode의 타입은 dynamic이기 때문에 변수는 var로 설정해주어야 한다.
      var parsingData = jsonDecode(jsonData);
      return parsingData;
    }
  }
}
