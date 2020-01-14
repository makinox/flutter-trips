import 'package:firebase_storage/firebase_storage.dart';
import 'package:trips/Place/repository/firebase_storage_api.dart';

class FirebaseStorageRepository {

  final _firebaseStorageApi = FirebaseStorageAPI();

  Future<StorageUploadTask> uploadFile(path, image) => _firebaseStorageApi.uploadFile(path, image);
}