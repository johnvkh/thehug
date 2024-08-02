import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class PingPaKhaoMenu extends StatefulWidget {
  const PingPaKhaoMenu({super.key});

  @override
  State<PingPaKhaoMenu> createState() => _PingPaKhaoMenuState();
}

class _PingPaKhaoMenuState extends State<PingPaKhaoMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ປີ້ງກຸ້ງສົດ",
      price: "95.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingKungSod.PNG",
    ),
    ProductModel(
      productId: "2",
      productName: "ປີ້ງທະເລລວມ",
      price: "120.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingLuamThale.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ປີ້ງປາຫມຶກສົດ",
      price: "89.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingPamuc.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ປີ້ງຫອຍຫວານ",
      price: "85.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingHoiVan.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ປີ້ງຫອຍແຄງ",
      price: "85.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingHoiKheng.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ປີ້ງເຫັດ ທາປາແດກ",
      price: "45.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingHetThaPaDek.jpg",
    ),
    ProductModel(
      productId: "7",
      productName: "ປີ້ງໄສ້",
      price: "59.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PingSai.jpg",
    ),
    ProductModel(
      productId: "8",
      productName: "ປູອັດວາຊາບິ",
      price: "39.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PuAtPaSaBi.jpg",
    ),
    ProductModel(
      productId: "9",
      productName: "ປາຊາບະລົມຄວັນ",
      price: "75.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PaSaBaLomKhoan.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຕົ້ມແຊບຕີນໄກ່",
      price: "69.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/KoiTomMenu/tomSepTinKai.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ປານິນປ້ຽວຫວານ",
      price: "90.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PaNinPieuVan.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ປານິນຫນຶ້ງຫມາກນາວ",
      price: "85.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PaNinNungMakNao.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ປາມຶກຊຸບແປ້ງທອດ",
      price: "85.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PaMucSoupPengThot.jpg",
    ),
    ProductModel(
      productId: "14",
      productName: "ປາມຶກຫມາກນາວ",
      price: "75.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PaMucMakNao.jpg",
    ),
    ProductModel(
      productId: "15",
      productName: "ປາແຊວມ້ອນ",
      price: "95.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/PaSaMon.jpg",
    ),
    ProductModel(
      productId: "16",
      productName: "ປາແຊວມ້ອນແຊ່ນ້ຳປາ",
      price: "95.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/SaMonSeNamPa.png",
    ),
    ProductModel(
      productId: "17",
      productName: "ເຂົ້າຈ້າວ (ຈານ)",
      price: "13.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/KhaoJan.png",
    ),
    ProductModel(
      productId: "18",
      productName: "ເຂົ້າຈ້າວ (ຫມໍ້)",
      price: "45.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/KhaoMor.jpg",
    ),
    ProductModel(
      productId: "19",
      productName: "ເຂົ້າຜັດ (ຫມູ,ໄກ່,ງົວ) (ນ້ອຍ)",
      price: "45.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/KhaoPatMouKaiNguaNoi.jpg",
    ),
    ProductModel(
      productId: "20",
      productName: "ເຂົ້າຜັດ (ຫມູ,ໄກ່,ງົວ) (ໃຫຍ່)",
      price: "75.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/KhaoPatMouKaiNguaYai.jpg",
    ),
    ProductModel(
      productId: "21",
      productName: "ເຂົ້າຜັດທະເລລວມ (ນ້ອຍ)",
      price: "49.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/KhaoPhatLuamThaLeNoi.jpg",
    ),
    ProductModel(
      productId: "22",
      productName: "ເຂົ້າຫນຽວ (ເຂົ້າໄກ່ນ້ອຍ)",
      price: "13.000 ກີບ",
      productType: pingPaKhaoMenuType,
      image: "assets/images/PingPaKhaoMenu/Khaotip.jpg",
    ),


  ];


  bool loadProcessBar = true;
  List<ProductModel> listProduct = [];

  @override
  void initState() {
    // TODO: implement initState
    loadInfo();
    super.initState();
  }

  Future loadInfo() async {
    setState(() {
      listProduct = _listProduct;
      loadProcessBar = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return loadProcessBar == true
        ? Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  "ເມນູປີ້ງ - ປາ - ເຂົ້າ",
                  Colors.black87,
                  20,
                  FontWeight.bold,
                  TextAlign.start,
                ),
                const SizedBox(height: 5),
                ResponsiveStaggeredGridList(
                  desiredItemWidth: size.width * 0.235,
                  children: List.generate(
                    listProduct.length,
                    (index) {
                      ProductModel productModel = listProduct[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: size.width * 0.235,
                          height: boxHeight,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(240, 243, 245, 1),
                            border: Border.all(
                              color: primaryColor,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(
                                    productModel.image.toString(),
                                    fit: BoxFit.cover,
                                    width: size.width * 0.235,
                                    height: boxImage,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                                child: TextWidget(
                                  productModel.productName.toString(),
                                  Colors.black,
                                  12,
                                  FontWeight.normal,
                                  TextAlign.start,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                                child: TextWidget(
                                  productModel.price.toString(),
                                  Colors.redAccent,
                                  12,
                                  FontWeight.normal,
                                  TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        : LoadDialog(context);
  }
}
