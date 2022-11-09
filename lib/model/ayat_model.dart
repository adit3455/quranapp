class Ayat {
  int? id;
  int? surah;
  int? nomor;
  String? ar;
  String? tr;
  String? idn;

  Ayat({this.id, this.surah, this.nomor, this.ar, this.tr, this.idn});

  factory Ayat.fromJson(Map<String, dynamic> data) {
    return Ayat(
      id: data['id'],
      surah: data['surah'],
      nomor: data['nomor'],
      ar: data['ar'],
      tr: data['tr'],
      idn: data['idn'],
    );
  }
}
