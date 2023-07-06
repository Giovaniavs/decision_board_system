import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openredu_mobile_flutter/src/auth/splash_screen/domain/splash_screen_usecase.dart';

class LoadCsvScreen extends StatefulWidget {
  final SplashScreenUseCase _splashScreenUseCase;
  const LoadCsvScreen({
    super.key,
    required SplashScreenUseCase splashScreenUseCase,
  }) : _splashScreenUseCase = splashScreenUseCase;

  @override
  State<LoadCsvScreen> createState() => _LoadCsvScreenState();
}

class _LoadCsvScreenState extends State<LoadCsvScreen> {
  List<List<dynamic>> _data = [];

  void _loadCSV() async {
    final rawData =
        await rootBundle.loadString("assets/csv/reclamacoesCSV.csv");
    List<List<dynamic>> listData = const CsvToListConverter().convert(rawData);
    setState(
      () {
        _data = listData;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leitor de CSV"),
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.auto_graph_sharp),
            tooltip: 'Open shopping cart',
            onPressed: () {
              if (_data.isNotEmpty) {
                _data.removeAt(0);
              }
              widget._splashScreenUseCase.add(
                GoToChartsScreen(
                  data: _data,
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (_, index) {
          return Card(
            margin: const EdgeInsets.all(3),
            color: index == 0 ? Colors.amber : Colors.white,
            child: Column(
              children: [
                Text(_data[index][1].toString()),
                Text(_data[index][2].toString()),
                Text(_data[index][3].toString()),
                Text(_data[index][4].toString()),
                Text(_data[index][5].toString()),
                Text(_data[index][6].toString()),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadCSV,
        child: const Icon(Icons.add),
      ),
    );
  }
}
