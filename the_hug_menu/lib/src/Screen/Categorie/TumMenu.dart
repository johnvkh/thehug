import 'package:flutter/material.dart';

import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';

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
      price: "69.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/Tumton.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ຕຳຖາດ",
      price: "95.000 ກີບ",
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
      price: "55.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumLepMuNang.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ຕຳແຊວມ້ອນ",
      price: "85.000 ກີບ",
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
      price: "75.000 ກີບ",
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
      productId: "10",
      productName: "ຕຳຫມາກແຕງ",
      price: "35.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumTeng.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ຕຳຫມີ່ໄວໄວ",
      price: "55.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/TumMenu/TumMeeyy.jpg",
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
    return const Placeholder();
  }
}
