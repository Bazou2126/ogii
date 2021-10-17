import 'package:flutter/material.dart';

class ListCarteView extends StatefulWidget {
  static String rootName = "/list_carte";

  const ListCarteView({Key key}) : super(key: key);

  @override
  _ListCarteViewState createState() => _ListCarteViewState();
}

class _ListCarteViewState extends State<ListCarteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste des demandes"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: new BoxDecoration(color: Colors.indigo[100]),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DemandeTraite(
                      user: widget.user,
                    ),
                  ),
                );
              },
              leading: Icon(Icons.hourglass_bottom_rounded, size: 35),
              title: Text(
                'List Cartes',
                style: TextStyle(fontSize: 28.0),
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                size: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
