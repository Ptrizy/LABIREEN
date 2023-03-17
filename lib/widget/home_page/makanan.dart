class Makanan {
  String imgUrl;
  String namaMakanan;
  String stok;
  String harga;

  Makanan(this.imgUrl, this.namaMakanan, this.stok, this.harga);

  static List<Makanan> generateBuRidok() {
    return [
      Makanan('assets/tahutelor.png', 'Tahu Telor', '200', '12.000'),
      Makanan('assets/pecel.png', 'Pecel', '200', '10.000'),
      Makanan('assets/tahutek.png', 'Tahu Tek', '200', '8.000'),
      Makanan('assets/gadogado.png', 'Gado Gado', '200', '12.000'),
      Makanan('assets/rawon.png', 'Rawon', '200', '15.000'),
      Makanan('assets/sotoayam.png', 'Soto Ayam', '200', '12.000')
    ];
  }

  static List<Makanan> generateLalapanMbakEli() {
    return [
      Makanan('assets/ayam_lingkar.png', 'Ayam Goreng', '250', '12.000'),
      Makanan('assets/belutcrispy.png', 'Belut Crispy', '250', '14.000'),
      Makanan('assets/ayamcrispy.png', 'Ayam Crispy', '250', '12.000'),
      Makanan('assets/usus.png', 'Usus', '250', '10.000'),
      Makanan('assets/atiayam.PNG', 'Ati Ayam', '250', '10.000'),
      Makanan('assets/ayam_lingkar.png', 'Lele Crispy', '250', '12.000'),
      Makanan('assets/ayam_lingkar.png', 'Mujaer Crispy', '250', '14.000'),
      Makanan('assets/ayam_lingkar.png', 'Jamur Crispy', '250', '10.000'),
      Makanan('assets/ayam_lingkar.png', 'Telor Crispy', '250', '9.000'),
      Makanan('assets/ayam_lingkar.png', 'Tahu/tempe', '250', '8.000'),
      Makanan('assets/ayam_lingkar.png', 'Tahu/tempe/terong', '250', '9.000'),
    ];
  }

  static List<Makanan> generateAmazingMie() {
    return [
      Makanan(
        'assets/miesingle.png',
        'Mie Goreng Single',
        '100',
        '6.000',
      ),
      Makanan(
        'assets/miesingle.png',
        'Mie Goreng Double',
        '100',
        '10.000',
      ),
      Makanan(
        'assets/miekuah.png',
        'Mie Kuah Single',
        '100',
        '6.000',
      ),
      Makanan(
        'assets/miekuah.png',
        'Mie Kuah Double',
        '100',
        '10.000',
      ),
      Makanan(
        'assets/popmie.png',
        'Pop Mie',
        '100',
        '8.000',
      )
    ];
  }

  static List<Makanan> generateWarungMimin() {
    return [
      Makanan(
        'assets/nasisayurtempe.png',
        'Nasi Sayur Tempe',
        '200',
        '12.000',
      ),
      Makanan(
        'assets/nasisayurayam.png',
        'Nasi Sayur Ayam',
        '200',
        '12.000',
      ),
      Makanan(
        'assets/nasisayurikan.png',
        'Nasi Sayur Ikan',
        '200',
        '14.000',
      ),
      Makanan(
        'assets/nasisayurtelor.png',
        'Nasi Sayur Telor',
        '200',
        '10.000',
      ),
      Makanan(
        'assets/nasisayurjamur.png',
        'Nasi Sayur Jamur',
        '200',
        '12.000',
      ),
      Makanan(
        'assets/nasisayurparu.png',
        'Nasi Sayur Paru',
        '200',
        '12.000',
      ),
      Makanan(
        'assets/nasisayurusus.png',
        'Nasi Sayur Usus',
        '200',
        '14.000',
      ),
    ];
  }
}
