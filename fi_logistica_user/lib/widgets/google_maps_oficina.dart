import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMpasOficina extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GoogleMpasOficina();
  }

}

class _GoogleMpasOficina extends State<GoogleMpasOficina>{

  GoogleMapController mapController;
  final LatLng _center = const LatLng(-12.117461, -77.028384);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  //esto es para poner un marcador
  List<Marker> allMarkers = [];
  @override
  void initState() {
    super.initState();
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker'),
        draggable: false,
        position: LatLng(-12.117461, -77.028384)));
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.13; //esto es la altura del container
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[

        Container(
          height: screenHeight,
          width: screenWidth,
          child: GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 16.0,
            ),
            markers: Set.from(allMarkers),
          ),
        ),

        FittedBox(
          child: Align(alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 15,
                          offset: Offset.zero,
                          color: Colors.grey.withOpacity(0.5))
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      width: 65,
                      height: 65,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/icono_logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Fi Logística",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFFcf7500)),
                        ),
                        Text(
                          "Calle Pershing 188 \nMiraflores - Lima",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF6E6E6E)),
                        ),
                        Text(
                          "+51 982011463",
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF6E6E6E)),
                        )
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 70,
                      height: 70,
                      child: Icon(
                        Icons.location_on,
                        size: 60,
                        color: Colors.red[800],
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),

      ],
    );
  }

}