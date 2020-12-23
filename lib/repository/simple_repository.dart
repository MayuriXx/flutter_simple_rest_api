import 'dart:convert';

import 'package:flutter_simple_rest_api/components/app/repository.dart';
import 'package:flutter_simple_rest_api/data/remote/dto/teams_dto.dart';
import 'package:flutter_simple_rest_api/data/remote/simple/simple_service.dart';
import 'package:flutter_simple_rest_api/model/mTeam.dart';
import 'package:flutter_simple_rest_api/model/mTeams.dart';

part 'simple_repository.impl.dart';

abstract class SimpleRepository extends Repository {

  Future<mTeams> getAllTeams();

  static SimpleRepository create() => _$SimpleRepository();
}