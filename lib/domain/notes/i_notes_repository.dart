import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'note_failure.dart';

import 'note.dart';

abstract class INoteRepository {
  //watch notes

  //watch incomplete notes

  //C Read UD

  Stream<Either<NoteFailure, KtList<Note>>> watchAll();
  Stream<Either<NoteFailure, KtList<Note>>> watchIncomplete();
  Future<Either<NoteFailure, Unit>> create(Note note);
  Future<Either<NoteFailure, Unit>> update(Note note);
  Future<Either<NoteFailure, Unit>> delete(Note note);
}
