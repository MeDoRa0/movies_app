import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/core/error/failuers.dart';

abstract class BaseUseCase<Type, Parameters> {
  Future<Either<Failures, Type>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
