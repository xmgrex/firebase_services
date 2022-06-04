import 'package:cloud_firestore/cloud_firestore.dart';

class Readers {

  DocumentReference document({required String path}) {
    return FirebaseFirestore.instance.doc(path);
  }

  CollectionReference collection({required String path}) {
    return FirebaseFirestore.instance.collection(path);
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getDocument({
    required String path,
  }) async {
    final reference = FirebaseFirestore.instance.doc(path);
    print('path: $path');
    return await reference.get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getCollection({
    required String path,
  }) async {
    final reference = FirebaseFirestore.instance.collection(path);
    print('path: $path');
    return await reference.get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getCollectionLimited({
    required String path,
    required int limit,
  }) async {
    final reference = FirebaseFirestore.instance.collection(path).limit(limit);
    print('path: $path');
    return await reference.get();
  }
}
