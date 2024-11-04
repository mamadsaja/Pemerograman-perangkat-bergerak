import 'package:flutter/material.dart';

class Buttonscreen extends StatefulWidget {
  const Buttonscreen({super.key});

  @override
  State<Buttonscreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<Buttonscreen>{
  String _selectedItem = "Option 1";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber[700]   
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text('pesan berhasil'),
                      action: SnackBarAction(label: 'Detail', onPressed: () {},
                      ),
                    )
                  );
                }, 
                child: const Text(
                  'text button',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                ),
                onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return AlertDialog(
                      title: Text('hapus data'),
                      content: Text('Apakah anda yakin untuk menghapusnya'),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: const Text('NO')
                        ),
                        TextButton(onPressed: () {}, child: const Text('yes')
                        ),
                      ],
                    );  
                  },
                  );
                }, 
                child: const Text(
                  'elevated button',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )
                )
              ),
              SizedBox(height: 10,),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green[600],
                ),
                onPressed: () {
                  showDialog(context: context, builder: (context) {
                    return SimpleDialog(
                      title: const Text('Pilih Metode'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('BCA'),
                        ),
                      ],
                    );
                  },);
                }, 
              child: const Text(
                'outline button',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,)
              )
            ),
            IconButton(onPressed: () {}, 
            icon: Icon(Icons.thumbs_up_down)
            ),
            DropdownButton<String>(
              value: _selectedItem,
              items: const [
              DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
              DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
              DropdownMenuItem(value: 'Option 3', child: Text('Option 3')),
            ], 
            onChanged: (value) {
              setState(() {
                _selectedItem = value!;
              });
            }, 
            )
            ],

          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}