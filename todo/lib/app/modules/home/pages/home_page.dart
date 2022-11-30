import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String texto = "";
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                tileColor: Colors.grey,
                title: Center(child: Text('${todoList[index]}')),
                trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      removeTask(index);
                    }));
          }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialogAdicionar(context);
        },
        tooltip: 'Adicionar',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _showDialogAdicionar(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(children: [
            Column(children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Descrição'),
                onChanged: (value) {
                  texto = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  //setState(() {
                  ///  texto;
                  //});
                  addNewTask(texto);
                  Navigator.pop(context);
                },
                child: const Text('Adicionar'),
              ),
            ]),
          ]);
        });
  }

  void addNewTask(String descricao) {
    setState(() {
      todoList.add(descricao);
    });
  }

  void removeTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }
}
