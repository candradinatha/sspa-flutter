class Duration {
  int id;
  int hour;
  int minute;
  String duration;
  int price;

  Duration({
    required this.id,
    required this.hour,
    required this.minute,
    required this.duration,
    required this.price
  });
}

class PackageData {
  int id;
  String name;
  String description;
  String image;
  int startPrice;
  List<Duration> duration;

  PackageData({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.startPrice,
    required this.duration
  });
}

var packages = [
  PackageData(
      id: 23,
      name: "Massage at Hotel",
      description: "Layanan Luxury Solusi Spa untuk pelanggan yang sedang menginap di Hotel, dengan Treatment minimal layanan 2 jam",
      image: "https:\/\/mobile.solusispa.com\/storage\/images\/services\/default\/71SvunZkUZ8eiapR1AwJMvuHBzGegdyNdwcqzvva.png",
      startPrice: 220000,
      duration: [
        Duration(
            id: 113,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 220000
        )
      ]
  ),
  PackageData(
      id: 13,
      name: "Post Natal Treatment",
      description: "Paket perawatan khusus kepada Ibu pasca melahirkan sampai 40 hari",
      image: "https:\/\/mobile.solusispa.com\/storage\/images\/services\/default\/z9K8NZXluIn6cZeSPLNMvgAPbb8ZcvojUq6Itln1.jpg",
      startPrice: 175000,
      duration: [
        Duration(
            id: 59,
            hour: 1,
            minute: 30,
            duration: "1 Jam 30 Menit",
            price: 175000
        ),
        Duration(
            id: 60,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 220000
        )
      ]
  ),
  PackageData(
      id: 9,
      name: "Baby Massage",
      description: "Perawatan khusus untuk bayi anda agar tidur lebih nyenyak",
      image: "https:\/\/mobile.solusispa.com\/storage\/images\/services\/default\/FgL7hadRD58YcdvL2WrI2yQtYeO2Xcv8ZjBz9h3t.jpg",
      startPrice: 175000,
      duration: [
        Duration(
            id: 29,
            hour: 1,
            minute: 30,
            duration: "1 Jam 30 Menit",
            price: 175000
        ),
        Duration(
            id: 61,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 220000
        )
      ]
  ),
  PackageData(
      id: 6,
      name: "Traditional Mom & Baby",
      description: "Paket perawatan pijat traditional khusus untuk Ibu setelah melahirkan dan bayinya",
      image: "https:\/\/mobile.solusispa.com\/storage\/images\/services\/default\/tvbsuDXBNLYWQ8k0uLS9nOX254mnAx5A9QhRTsjq.jpg",
      startPrice: 220000,
      duration: [
        Duration(
            id: 26,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 220000
        ),
        Duration(
            id: 27,
            hour: 2,
            minute: 30,
            duration: "2 Jam 30 Menit",
            price: 280000
        ),
        Duration(
            id: 100,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 220000
        )
      ]
  ),
  PackageData(
      id: 16,
      name: "Reflexology & Combination",
      description: "Kombinasi reflexology dengan :\r\n1. Pijat tradisional**\r\n2. Totok wajah**\r\n3. Kerokan**\r\n4. Lulur  (jika lulur dari kami penambahan biaya Rp 20.000 dari tarif)**\r\n\r\n**pilih salah satu",
      image: "https:\/\/mobile.solusispa.com\/storage\/images\/services\/default\/35p8k9ds44WW9cN5H8PSYIj2hhbJTWCROJf5Fad4.jpg",
      startPrice: 225000,
      duration: [
        Duration(
            id: 75,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 225000
        ),
        Duration(
            id: 76,
            hour: 2,
            minute: 30,
            duration: "2 Jam 30 Menit",
            price: 280000
        ),
        Duration(
            id: 86,
            hour: 4,
            minute: 0,
            duration: "4 Jam",
            price: 450000
        ),
        Duration(
            id: 87,
            hour: 4,
            minute: 30,
            duration: "4 Jam 30 Menit",
            price: 500000
        ),
      ]
  ),
  PackageData(
      id: 14,
      name: "Sprain Massage",
      description: "Perawatan Khusus untuk otot atau persendian yang mengalami pembengkakan atau rasa sakit akibat keseleo karena terjatuh atau olahraga. Perawatan ini hanya dilakukan oleh terapis yang memiliki keahlian",
      image: "https:\/\/mobile.solusispa.com\/storage\/images\/services\/default\/hGBN21PSAaVji5IrtJRbOhQPFDPpINRlUaNw8Du1.jpg",
      startPrice: 220000,
      duration: [
        Duration(
            id: 62,
            hour: 1,
            minute: 30,
            duration: "1 Jam 30 Menit",
            price: 220000
        ),
        Duration(
            id: 63,
            hour: 2,
            minute: 0,
            duration: "2 Jam",
            price: 275000
        )
      ]
  ),
];

