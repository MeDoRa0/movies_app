import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  final String message;

  const Failures(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class ServerFailures extends Failures {
  const ServerFailures(super.message);
}

class DataBaseFailures extends Failures {
  const DataBaseFailures(super.message);
}
