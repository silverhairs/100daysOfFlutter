import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Future getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
        this.latitude = position.latitude;
        this.longitude = position.longitude; 
  }
}