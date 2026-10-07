import 'package:application_project/models/product_models.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController{

  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "MacBook Air M4",
      harga: "Rp 18.999.000",
      deskripsi:
      "MacBook Air dengan chip M4 memiliki performa cepat, desain tipis dan ringan, serta daya tahan baterai yang cocok untuk belajar, programming, dan pekerjaan sehari-hari.",
      image: "images/macbook_r.jpg",
      reviews: "856",
      rating: "4.9",
      namaToko: "Apple Official Store",
    ),

    ProdukModel(
      namaProduk: "iPad Pro M4",
      harga: "Rp 19.499.000",
      deskripsi:
      "iPad Pro dengan chip M4 menawarkan performa tinggi dengan layar berkualitas. Cocok untuk belajar, menggambar, editing, hingga kebutuhan produktivitas.",
      image: "images/ipad_r.webp",
      reviews: "734",
      rating: "4.8",
      namaToko: "iBox Official Store",
    ),

    ProdukModel(
      namaProduk: "Xiaomi 15 Ultra",
      harga: "Rp 16.999.000",
      deskripsi:
      "Xiaomi 15 Ultra menghadirkan performa flagship, kamera berkualitas tinggi, layar dengan tampilan tajam, serta baterai yang mendukung aktivitas sehari-hari.",
      image: "images/xiomi_r.jpg",
      reviews: "923",
      rating: "4.8",
      namaToko: "Xiaomi Official Store",
    ),

    ProdukModel(
      namaProduk: "Nintendo Switch 2",
      harga: "Rp 8.999.000",
      deskripsi:
      "Nintendo Switch 2 merupakan konsol gaming yang dapat digunakan secara handheld maupun terhubung ke TV. Cocok untuk bermain game bersama keluarga dan teman.",
      image: "images/nintendo_r.jpg",
      reviews: "645",
      rating: "4.9",
      namaToko: "Nintendo Official Store",
    ),

    ProdukModel(
      namaProduk: "Logitech G Pro X Superlight",
      harga: "Rp 1.899.000",
      deskripsi:
      "Mouse gaming ringan dengan sensor presisi tinggi dan desain ergonomis. Cocok untuk gamer yang membutuhkan pergerakan cepat dan akurat.",
      image: "images/logitech_r.jpg",
      reviews: "512",
      rating: "4.8",
      namaToko: "Logitech Official Store",
    ),

    ProdukModel(
      namaProduk: "AirPods Pro 2",
      harga: "Rp 3.499.000",
      deskripsi:
      "AirPods Pro 2 menawarkan kualitas audio yang jernih, Active Noise Cancellation, desain nyaman, dan koneksi yang mudah dengan perangkat Apple.",
      image: "images/airpods_r.jpg",
      reviews: "1204",
      rating: "4.9",
      namaToko: "Apple Official Store",
    ),

    ProdukModel(
      namaProduk: "Samsung Galaxy Tab S10",
      harga: "Rp 11.999.000",
      deskripsi:
      "Samsung Galaxy Tab S10 memiliki layar luas dan tajam serta performa yang responsif. Cocok untuk belajar, menonton film, mencatat, dan bekerja.",
      image: "images/samsung_r.jpg",
      reviews: "687",
      rating: "4.8",
      namaToko: "Samsung Official Store",
    ),
  ];



}