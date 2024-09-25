class Player {
  final int id;
  final String nama;
  final String klub;
  final String gambar;

  Player({required this.id, required this.nama, required this.klub, required this.gambar});

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      nama: json['nama'],
      klub: json['klub'],
      gambar: json['gambar'],
    );
  }
}
