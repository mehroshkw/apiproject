import 'package:apiproject/httpclass.dart';
import 'package:apiproject/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  ApiServices client = ApiServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<QRcode?>(
        future: client.getQRcode(),
        builder: (context, snapshot) {
          var der = snapshot.data;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${der!.data!.description}'),
              Text('${der.data!.price}'),
              Text('${der.data!.salePrice}'),
              Text('${der.data!.barcode}'),
              Text('${der.data!.image}'),
              Text('${der.data!.pages}'),
            ],
          );
        },
      ),
    );
  }
}
