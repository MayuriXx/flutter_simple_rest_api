import 'package:flutter/material.dart';
import 'package:flutter_simple_rest_api/components/app/view.dart';
import 'package:flutter_simple_rest_api/view/teams_viewmodel.dart';

class TeamsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return View<TeamsViewModel>(
      args: [],
      builderView: (context, model, child) => _buildView(context, model),
    );
  }
}

Widget _buildView(BuildContext context, TeamsViewModel model) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Test"),
    ),
    body: Center(
      child: Text("Premier lancement"),
    ),
  );
}
