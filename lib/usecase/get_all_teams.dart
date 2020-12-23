import 'package:flutter_simple_rest_api/components/app/usecase.dart';
import 'package:flutter_simple_rest_api/model/mTeams.dart';
import 'package:flutter_simple_rest_api/repository/simple_repository.dart';

class GetAllTeams extends UseCase<mTeams> {
  final SimpleRepository repository;

  GetAllTeams(this.repository);

  @override
  Future<mTeams> call([List args = const <dynamic>[]]) {
    return repository.getAllTeams();
  }
}
