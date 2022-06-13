import 'package:cloud_firestore/cloud_firestore.dart';

class HelperFS {
  Future<DocumentReference?> getDocument(
    String docid,
    String collection,
  ) async {
    try {
      DocumentReference doc =
          await FirebaseFirestore.instance.collection(collection).doc(docid);
      return doc;
    } catch (e) {
      // If any error
      return null;
    }
  }
}
