import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:multi_store/domain/auth/auth_failure.dart';
import 'package:multi_store/domain/auth/i_storage_service.dart';
import 'package:multi_store/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorageService)
class ImageStorageService implements IStorageService {
  final FirebaseStorage firebaseStorage;
  late Reference reference;

  ImageStorageService({required this.firebaseStorage});

  @override
  Future<Either<AuthFailure, Unit>> sendImage(
      {required File image,
      required String folder,
      required String fileName}) async {
    reference = firebaseStorage.ref('$folder/$fileName.jpg');
    final upload = await reference.putFile(image);
    if (upload.state == TaskState.error) {
      return left(const AuthFailure.serverError());
    } else {
      return right(unit);
    }
  }

  @override
  Future<Either<AuthFailure, ImageUrl>> getDownloadURL() async {
    try {
      final url = await reference.getDownloadURL();
      return right(ImageUrl(url));
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
