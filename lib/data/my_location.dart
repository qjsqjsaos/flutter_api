import 'package:geolocator/geolocator.dart';

class MyLocation {
  late double latitude2; //초기화를 뒤로 미뤄준다는 의미이다.
  late double longitude2;

  Future<void> getMyCurrentLocation() async {
    //현재 나의 위치를 알아내는 플러그인
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude2 = position.latitude;
      longitude2 = position.longitude;
      print(latitude2);
      print(longitude2);
    } catch (e) {
      print('There was a problem with the internet connection');
    }
  }
}
