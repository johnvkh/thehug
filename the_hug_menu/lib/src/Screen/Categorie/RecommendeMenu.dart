// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class RecommendeMenu extends StatefulWidget {
  const RecommendeMenu({super.key});

  @override
  State<RecommendeMenu> createState() => _RecommendeMenuState();
}

class _RecommendeMenuState extends State<RecommendeMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ຍຳປາແຊວມ້ອນ",
      price: "95.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/Yumsamon.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ຍຳໂຕ່ງ",
      price: "65.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/YumTong.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ຕຳຫອຍແຄງ",
      price: "89.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/Tumhoikheng.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ທອດປີກໄກ່",
      price: "59.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/ThotPickKai.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ປີ້ງຄໍຫມູຢ້າງ",
      price: "59.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/khormuyang.jpeg",
    ),
    ProductModel(
      productId: "6",
      productName: "ປີ້ງເສືອຮ້ອງໄຫ້",
      price: "69.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/pingsuahonghai.jpeg",
    ),
    ProductModel(
      productId: "7",
      productName: "ຜັດຫອຍແຄງ",
      price: "89.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/PhatHoiKheng.jpg",
    ),
    ProductModel(
      productId: "8",
      productName: "ເຂົ້າຜັດທະເລລວມ (ໃຫຍ່)",
      price: "90.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/khaophatthaleYai.PNG",
    ),
    ProductModel(
      productId: "9",
      productName: "ເຫັດເຂັມຊຸບແປ້ງທອດ",
      price: "49.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/HetKhemSupPengThot.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຫອຍນາງລົມ (ໂຕ)",
      price: "45.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/HoiNangLom.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ປານິນລາດພິກ",
      price: "95.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/PhaNinLatPick.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ຊອຍຈຸ",
      price: "85.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/SoiJu.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ງົວປີ່ນ",
      price: "70.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/NgaoPin.png",
    ),
    ProductModel(
      productId: "14",
      productName: "ອົບງົວ",
      price: "55.000 ກີບ",
      productType: recommendeMenuType,
      image: "assets/images/recommande/Opngoa.png",
    ),
  ];
  bool loadProcessBar = true;
  List<ProductModel> listProduct=[];
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
            "ເມນູແນະນຳ",
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
