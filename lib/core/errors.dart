import 'failures.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a valueFailure  at an unrecoverable point.';
    return Error.safeToString('$explanation Failure was :$valueFailure');
  }
}
