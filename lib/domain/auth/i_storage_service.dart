import 'dart:io';

import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IStorageService {
  Future<Either<AuthFailure, Unit>> sendImage(
      {required File image, required String folder, required String fileName});

  Future<Either<AuthFailure, ImageUrl>> getDownloadURL();
}
