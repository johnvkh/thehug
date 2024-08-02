import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class TumMenu extends StatefulWidget {
  const TumMenu({super.key});

  @override
  State<TumMenu> createState() => _TumMenuState();
}

class _TumMenuState extends State<TumMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ຕຳຕ່ອນ",
      price: "65.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/Tumton.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ຕຳຖາດ",
      price: "89.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumThat.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ຕຳທະເລລວມ",
      price: "95.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/Tumlomthale.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ຕຳເຂົ້າປຸ້ນ",
      price: "35.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumKhaoPun.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ຕຳເລັບມືນາງ",
      price: "59.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumLepMuNang.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ຕຳແຊວມ້ອນ",
      price: "95.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumSamon.jpg",
    ),
    ProductModel(
      productId: "7",
      productName: "ຕຳຫມາກຖົ່ວ",
      price: "35.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumMakThoa.jpg",
    ),
    ProductModel(
      productId: "8",
      productName: "ຕຳຫມາກຫຸ່ງ",
      price: "35.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumMakHung.jpg",
    ),
    ProductModel(
      productId: "9",
      productName: "ຕຳກຸ້ງສົດ",
      price: "79.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumKungSod.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຕຳຫມາກແຕງ",
      price: "35.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumTeng.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ຕຳເສັ້ນລ້ອນ",
      price: "50.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/tumSenlon.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ຕຳຫມີ່ໄວໄວ",
      price: "55.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumMeeyy.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ຕຳປາມຶກ",
      price: "85.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/tumpamuc.jpg",
    ),
    ProductModel(
      productId: "14",
      productName: "ຕຳຫມີ່ຂາວ",
      price: "55.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumMeKhao.jpg",
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
            "ເມນູຕຳ",
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
                          padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 1),
                          child: TextWidget(
                            productModel.productName.toString(),
                            Colors.black,
                            12,
                            FontWeight.normal,
                            TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 1),
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
