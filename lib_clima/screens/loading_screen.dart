import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/screens/location_screen.dart';

const apiKey = 'c6874fd802d17e9f476d545e60aa53a9';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude, longitude;
  @override
  void initState() {
    super.initState();
    print('initState called');
    getLocationData();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate called');
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?q=lat=$latitude&lon=$longitude&appid=$apiKey');
    var weatherData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LocationScreen();
      }),
    );
  }

  //
  // void getLocation() async {
  //   print('getLocation called');
  //   try {
  //     Position position = await Geolocator()
  //         .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  //     print('before print in geoLocation');
  //     print(position);
  //   } catch (e) {
  //     print(e);
  //   }
  //   // Future<Position> position = Geolocator()
  //   //     .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  //   // print(position); //prints Future<Position>
  // }

  @override
  Widget build(BuildContext context) {
    print(
        'build called'); //will be created again and again whenever build is called
    // print('print after build called');
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            getLocationData();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
