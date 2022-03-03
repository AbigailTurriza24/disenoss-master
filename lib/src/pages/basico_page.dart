import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
final estiloSubTitulo = TextStyle(fontSize: 20.0, color: Colors.grey);




//Inicial
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column( 
         children: <Widget>[

         _crearImagem(),
         _crearTitulo(),
         _crearAcciones(), 
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),
         _crearTexto(),


        

        ],),
      )
    );
  }
  Widget _crearImagem(){

    return Container(
      width: double.infinity,
      child: Image(image: AssetImage('assets/imagen_1.webp'),
              height: 200.0,
              fit: BoxFit.cover,

          
            ),
    );
  } 

  Widget _crearTitulo(){

    return SafeArea(
      child: Container(
               padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
               child: Row(
                 children: <Widget> [
    
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text('Lago en lugar frio', style: estiloTitulo),
                        SizedBox( height: 7.0),
                        Text('Lago en las montañas', style: estiloSubTitulo),
                      ],
                    ),
                  ),
    
                  Icon(Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle( fontSize: 20.0)),
    
    
    
                 ],
                ),
             ),
    );

  }

  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget> [ 

      _accion(Icons.call, 'CALL'),
      _accion(Icons.near_me, 'ROUTE'),
      _accion(Icons.share, 'SHARE'),


      ],
    );


  }

  Widget _accion(IconData icon, String texto){

    return Column(
          children:<Widget> [
            Icon(icon, color: Colors.blue, size: 40.0 ),
            SizedBox(height: 5.0,),
            Text( texto, style: TextStyle(fontSize: 15.0, color: Colors.blue,))
          ],
        );
  }

  Widget _crearTexto(){

    return SafeArea(
      
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0,),
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        textAlign: TextAlign.justify,
      
      
      ),
    ),
    );

  }

}