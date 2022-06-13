import 'package:cloud_firestore/cloud_firestore.dart';

class Mudjahid {
  String id;
  String nom;
  String image;
  String description;

  Mudjahid({
    required this.id,
    required this.nom,
    required this.image,
    required this.description,
  });

  // Generate model from snapshot
  factory Mudjahid.fromSnapshot(DocumentSnapshot snapshot) {
    return Mudjahid(
      id: snapshot.id,
      nom: snapshot.get("nom") ?? "",
      image: snapshot.get("image") ?? "",
      description: snapshot.get("description") ?? "",
    );
  }

  
}
