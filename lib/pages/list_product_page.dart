
import 'package:application_project/controller/list_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});

  final ListProductController controller =
      Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyProducts"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => RefreshIndicator(
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            edgeOffset: 0,
            backgroundColor: Colors.blue,
            color: Colors.white,
            displacement: 30,
            onRefresh: controller.refreshProduk,
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: controller.produkList.length,
              itemBuilder: (context, index) {
                final produk = controller.produkList[index];

                return Dismissible(
                  key: ValueKey(
                    '${produk.namaProduk}-$index',
                  ),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 10),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) {
                    controller.produkList.removeAt(index);

                    Get.snackbar(
                      "Produk Dihapus",
                      "Produk berhasil dihapus",
                    );
                  },
                  child: Card(
                    elevation: 3,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes.detailProduct,
                          arguments: {
                            'namaProduk': produk.namaProduk.toString(),
                            'harga': produk.harga.toString(),
                            'deskripsi': produk.deskripsi.toString(),
                            'image': produk.image.toString(),
                            'reviews': produk.reviews.toString(),
                            'rating': produk.rating.toString(),
                            'namaToko': produk.namaToko.toString(),
                          },
                        );
                      },
                      onLongPress: () async {
                        final pilihan = await showMenu<String>(
                          context: context,
                          position: const RelativeRect.fromLTRB(
                            200,
                            200,
                            0,
                            0,
                          ),
                          items: const [
                            PopupMenuItem<String>(
                              value: 'detail',
                              child: Text('Detail Produk'),
                            ),
                            PopupMenuItem<String>(
                              value: 'delete',
                              child: Text('Delete Produk'),
                            ),
                          ],
                        );

                        switch (pilihan) {
                          case 'detail':
                            Get.toNamed(
                              Routes.detailProduct,
                              arguments: {
                                'namaProduk': produk.namaProduk.toString(),
                                'harga': produk.harga.toString(),
                                'deskripsi': produk.deskripsi.toString(),
                                'image': produk.image.toString(),
                                'reviews': produk.reviews.toString(),
                                'rating': produk.rating.toString(),
                                'namaToko': produk.namaToko.toString(),
                              },
                            );
                            break;

                          case 'delete':
                            controller.produkList.removeAt(index);

                            Get.snackbar(
                              "Produk Dihapus",
                              "Produk berhasil dihapus",
                            );
                            break;

                          case null:
                            break;
                        }
                      },
                      child: ListTile(
                        leading: SizedBox(
                          width: 45,
                          height: 45,
                          child: Image.asset(
                            produk.image,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.image_not_supported,
                              );
                            },
                          ),
                        ),
                        title: Text(produk.namaProduk),
                        subtitle: Text(produk.harga),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
