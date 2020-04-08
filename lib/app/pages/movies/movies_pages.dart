import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterapp/app/pages/base_state.dart';
import 'package:flutterapp/app/viewmodels/movies_view_model.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends ViewModelState<MoviesPage, MoviesViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TesteLista"),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: viewModel.list.length,
          itemBuilder: (_, index) {
            return Text(viewModel.list[index].title);
          },
        );
      }),
    );
    ;
  }
}
