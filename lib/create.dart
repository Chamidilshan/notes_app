import 'package:flutter/material.dart';
import 'package:notes_app/services/api.dart';

class CreateData extends StatefulWidget {
  const CreateData({Key? key}) : super(key: key);

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  var nameController = TextEditingController();
  var priceController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Data'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter name'
              ),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                  hintText: 'Enter price'
              ),
            ),
            TextField(
              controller: descController,
              decoration: InputDecoration(
                  hintText: 'Enter description'
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  var data = {
                    "pname": nameController.text,
                    "pprice": priceController.text,
                    "pdesc": descController.text
                  };

                  Api.addProduct(data);
                },
                child: Text('Create data')
            )
          ],
        ),
      ),
    );
  }
}
