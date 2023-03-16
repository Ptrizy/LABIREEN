import 'makanan.dart';

class Menu {
  Menu({required this.kategori});

  Map<String, List<Makanan>> kategori;

  static generateMenu() {
    return Menu(kategori: {
      'Bu Ridok': Makanan.generateBuRidok(),
      'Lalapan Mbak Eli': Makanan.generateLalapanMbakEli(),
      'Amazing Mie': Makanan.generateAmazingMie(),
      'Warung Mimin': Makanan.generateWarungMimin(),
    });
  }
}
