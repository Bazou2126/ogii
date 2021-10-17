import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:phpmysqlcrud/main.dart';

class AddEditPage extends StatefulWidget {
  final List list;
  final int index;
  AddEditPage({this.list,this.index});
  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {

  TextEditingController prenom = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController nomPere = TextEditingController();
  TextEditingController prenomMere = TextEditingController();
  TextEditingController nomMere = TextEditingController();
  TextEditingController neLe = TextEditingController();
  TextEditingController ville = TextEditingController();
  TextEditingController profession = TextEditingController();
  TextEditingController domicile = TextEditingController();
  TextEditingController taille = TextEditingController();
  TextEditingController teint = TextEditingController();
  TextEditingController cheveux = TextEditingController();
  TextEditingController signesParticuliers = TextEditingController();

  bool editMode = false;


  addUpdateData(){
    if(editMode){
      var url = 'http://192.168.1.104/php-mysql-flutter-crud/edit.php';
      http.post(url,body: {
        'id' : widget.list[widget.index]['id'],
        'prenom' : prenom.text,
        'nom' : nom.text,
        'nomPere' : nomPere.text,
        'prenomMere' : prenomMere.text,
        'nomMere' : nomMere.text,
        'neLe' : neLe.text,
        'ville' : ville.text,
        'profession' : profession.text,
        'domicile' : domicile.text,
        'taille' : taille.text,
        'teint' : teint.text,
        'cheveux' : cheveux.text,
        'signesParticuliers' : signesParticuliers.text,
      });
    }else{
      var url = 'http://192.168.1.104/php-mysql-flutter-crud/add.php';
      http.post(url,body: {
        'prenom' : prenom.text,
        'nom' : nom.text,
        'nomPere' : nomPere.text,
        'prenomMere' : prenomMere.text,
        'nomMere' : nomMere.text,
        'neLe' : neLe.text,
        'ville' : ville.text,
        'profession' : profession.text,
        'domicile' : domicile.text,
        'taille' : taille.text,
        'teint' : teint.text,
        'cheveux' : cheveux.text,
        'signesParticuliers' : signesParticuliers.text,
      });
    }

  }


  @override
  void initState() {
    super.initState();
    if(widget.index != null){
      editMode = true;
      prenom.text = widget.list[widget.index]['prenom'];
      nom.text = widget.list[widget.index]['nom'];
      nomPere.text = widget.list[widget.index]['nomPere'];
      prenomMere.text = widget.list[widget.index]['prenomMere'];
      nomMere.text = widget.list[widget.index]['nomMere'];
      neLe.text = widget.list[widget.index]['neLe'];
      ville.text = widget.list[widget.index]['ville'];
      profession.text = widget.list[widget.index]['profession'];
      domicile.text = widget.list[widget.index]['domicile'];
      taille.text = widget.list[widget.index]['taille'];
      teint.text = widget.list[widget.index]['teint'];
      cheveux.text = widget.list[widget.index]['cheveux'];
      signesParticuliers.text = widget.list[widget.index]['signesParticuliers'];
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(editMode ? 'Update' :'Add Data'),),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: prenom,
              decoration: InputDecoration(
                labelText: 'Prenom',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nom,
              decoration: InputDecoration(
                labelText: 'Nom',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nomPere,
              decoration: InputDecoration(
                labelText: 'Nom Pere',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: prenomMere,
              decoration: InputDecoration(
                labelText: 'Prenom Mere',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nomMere,
              decoration: InputDecoration(
                labelText: 'Nom Mere',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: neLe,
              decoration: InputDecoration(
                labelText: 'Né le',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ville,
              decoration: InputDecoration(
                labelText: 'Ville',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: profession,
              decoration: InputDecoration(
                labelText: 'Profession',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: domicile,
              decoration: InputDecoration(
                labelText: 'Domicile',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: taille,
              decoration: InputDecoration(
                labelText: 'Taille',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: teint,
              decoration: InputDecoration(
                labelText: 'Teint',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: cheveux,
              decoration: InputDecoration(
                labelText: 'Cheveux',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: signesParticuliers,
              decoration: InputDecoration(
                labelText: 'Signes Particuliers',
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: (){
                setState(() {
                  addUpdateData();
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),),);
                debugPrint('Clicked RaisedButton Button');
              },
              color: Colors.blue,
              child: Text(editMode ? 'Update' :'Save',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
