import 'package:quranapps/model/suratselanjutnya_model.dart';
import 'ayat_model.dart';

class SurahModel {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;
  String? audio;
  bool? status;
  List<Ayat>? ayat;
  SuratSelanjutnya? suratSelanjutnya;
  bool? suratSebelumnya;

  SurahModel({
    this.nomor,
    this.nama,
    this.namaLatin,
    this.jumlahAyat,
    this.tempatTurun,
    this.arti,
    this.deskripsi,
    this.audio,
    this.status,
    this.ayat,
    this.suratSelanjutnya,
    this.suratSebelumnya,
  });

  SurahModel.fromJson(Map<String, dynamic> data) {
    nomor = data['nomor'];
    nama = data['nama'];
    namaLatin = data['nama_latin'];
    jumlahAyat = data['jumlah_ayat'];
    tempatTurun = data['tempat_turun'];
    arti = data['arti'];
    deskripsi = data['deskripsi'];
    audio = data['audio'];
    status = data['status'];
    if (data['ayat'] != null) {
      ayat = <Ayat>[];
      data['ayat'].forEach((v) {
        ayat!.add(Ayat.fromJson(v));
      });
    }
    suratSelanjutnya = data['surat_selanjutnya'] != null
        ? SuratSelanjutnya.fromJson(data['surat_selanjutnya'])
        : null;
    suratSebelumnya = data['surat_sebelumnya'];
  }
}
