import 'package:flutter/material.dart';
import 'package:flutter_simple_rest_api/components/app/lifecycle.dart';
import 'package:flutter_simple_rest_api/components/app/viewmodel.dart';
import 'package:flutter_simple_rest_api/model/mTeam.dart';
import 'package:flutter_simple_rest_api/model/mTeams.dart';
import 'package:flutter_simple_rest_api/usecase/get_all_teams.dart';
import 'package:provider/provider.dart';

class TeamsViewModel extends ViewModel {
  BuildContext _context;
  List<mTeams> teams = [];
  void load(BuildContext context, List args) async {
    _context = context;
    setLifecycle(OnLoad());
    final getAllTeams = Provider.of<GetAllTeams>(context);
    this.teams = await getAllTeams.call(args);
    setLifecycle(OnLoaded());
  }
}
