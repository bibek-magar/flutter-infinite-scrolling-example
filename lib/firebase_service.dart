import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_app/model/room.dart';

abstract class IFirebaseService {
  void addData(String data);
  Future<List<Room>> getData();
  Future<List<Room>> getNextData(String lastDocID);
}

final firebaseService = Provider<IFirebaseService>(
  (ref) => FirebaseService(),
);

//Get from config
const limit = 8;

class FirebaseService extends IFirebaseService {
  FirebaseService();
  @override
  Future<List<Room>> getData() async {
    final collection = (await FirebaseFirestore.instance
            .collection('rooms')
            .limit(limit)
            .get())
        .docs;
    return processData(collection);
  }

  @override
  void addData(String data) async {
    await FirebaseFirestore.instance.collection('rooms').add({'data': data});
  }

  @override
  Future<List<Room>> getNextData(String lastDocID) async {
    final lastDoc = await FirebaseFirestore.instance
        .collection('rooms')
        .doc(lastDocID)
        .get();

    final collection = (await FirebaseFirestore.instance
            .collection('rooms')
            .startAfterDocument(lastDoc)
            .limit(limit)
            .get())
        .docs;
    return processData(collection);
  }

  Room processDataDocuments(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    final data = doc.data() ?? {};
    data['id'] = doc.id;
    return Room.fromJson(data);
  }

  Future<List<Room>> processData(
    List<QueryDocumentSnapshot<Map<String, dynamic>>> query,
  ) async {
    final res = query.map((doc) {
      final data = doc.data();
      data['id'] = doc.id;

      return Room.fromJson(data);
    });

    return res.toList();
  }
}
