class SuratSelanjutnya {
  int? id;
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;
  String? tempatTurun;
  String? arti;
  String? deskripsi;
  String? audio;

  SuratSelanjutnya({
    this.id,
    this.nomor,
    this.nama,
    this.namaLatin,
    this.jumlahAyat,
    this.tempatTurun,
    this.arti,
    this.deskripsi,
    this.audio,
  });

  factory SuratSelanjutnya.fromJson(Map<String, dynamic> data) {
    return SuratSelanjutnya(
      id: data['id'],
      nomor: data['nomor'],
      nama: data['nama'],
      namaLatin: data['nama_latin'],
      jumlahAyat: data['jumlah_ayat'],
      tempatTurun: data['tempat_turun'],
      arti: data['arti'],
      deskripsi: data['deskripsi'],
      audio: data['audio'],
    );
  }
}
