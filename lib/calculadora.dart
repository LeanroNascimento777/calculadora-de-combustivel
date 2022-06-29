import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  Calc({Key? key}) : super(key: key);
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController _controlEtanol = TextEditingController();
  TextEditingController _controlGasolina = TextEditingController();
  String _resultado = 'Resultado';

  void _calcular() {
    var etanol = double.tryParse(_controlEtanol.text);
    var gasolina = double.tryParse(_controlGasolina.text);

    if (etanol == null || gasolina == null) {
      _resultado =
          " Não foi possível calcular o resultado, tente colocar (.) no lugar de (,).";
    } else {
      var result = (etanol / gasolina > 0.7);
      if (result) {
        _resultado = "Neste posto é melhor abastecer com ETANOL!!";
      } else {
        _resultado = 'Neste posto o melhor é abastecer com GASOLINA';
      }
    }
    setState(() {
      _resultado;
    });
  }

  @override
  Widgetbuild(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou Etanol?'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: <Widget>[
            Image.asset(
              'images/010101.png',
              height: 90,
            ),
            Text(
              'Nos fazemos as contas pra voce ECONOMIZAR',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.redAccent[100],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço do Etanol: ',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              controller: _controlEtanol,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço do Gasolina: ',
                labelStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              controller: _controlGasolina,
            ),
            RaisedButton(
              color: Colors.orange[400],
              child: Text(
                'CALCULAR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              onPressed: _calcular,
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _resultado,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
