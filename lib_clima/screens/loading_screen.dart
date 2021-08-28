import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = 'c6874fd802d17e9f476d545e60aa53a9';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
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
    // print(location.latitude);
    // print(location.longitude);

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    // print(weatherData);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationWeather: weatherData,
        );
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
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
