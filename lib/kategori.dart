import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class KategoriPage extends StatefulWidget {
  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  @override
  Widget build(BuildContext context) {
    iconTag(Icon icon, String tag) {
      return IconButton(
          icon: icon,
          onPressed: () {
            FToast(context).showToast(
              toastDuration: Duration(milliseconds: 2000),
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.grey,
                ),
                child: Text('Anda memilih kategori ' + tag),
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Kategori Page')),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.red, width: 3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('General'),
                  Container(height: 1.5, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconTag(Icon(Icons.attach_money), 'General'),
                      iconTag(Icon(Icons.card_travel), 'General'),
                      iconTag(Icon(Icons.local_hospital), 'General'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red, width: 3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Entertainment'),
                  Container(height: 1.5, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconTag(Icon(Icons.fastfood), 'Entertainment'),
                      iconTag(Icon(Icons.hotel), 'Entertainment'),
                      iconTag(Icon(Icons.local_grocery_store), 'Entertainment'),
                      iconTag(Icon(Icons.local_movies), 'Entertainment'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red, width: 3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Transportasi'),
                  Container(height: 1.5, color: Colors.grey),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconTag(Icon(Icons.directions_bike), 'Transportasi'),
                      iconTag(Icon(Icons.motorcycle), 'Transportasi'),
                      iconTag(Icon(Icons.directions_car), 'Transportasi'),
                      iconTag(Icon(Icons.local_shipping), 'Transportasi'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconTag(Icon(Icons.directions_bus), 'Transportasi'),
                      iconTag(Icon(Icons.directions_boat), 'Transportasi'),
                      iconTag(Icon(Icons.train), 'Transportasi'),
                      iconTag(Icon(Icons.airplanemode_active), 'Transportasi'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
