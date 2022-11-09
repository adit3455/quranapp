import 'package:flutter/material.dart';
import 'package:quranapps/model/surah_model.dart';
import 'package:quranapps/services/api_handler.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        centerTitle: true,
        leading: const SizedBox(),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pushNamed('/surah'),
              icon: const Icon(Icons.arrow_right))
        ],
      ),
      body: FutureBuilder<SurahModel>(
        future: APIHandler.getData(),
        builder: (context, snapshot) {
          return GridView.builder(
            itemCount: snapshot.data?.ayat?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Text("${snapshot.data?.ayat?[index].nomor}");
            },
          );
        },
      ),
    );
  }
}
