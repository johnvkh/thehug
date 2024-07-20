import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class YumMenu extends StatefulWidget {
  const YumMenu({super.key});

  @override
  State<YumMenu> createState() => _YumMenuState();
}

class _YumMenuState extends State<YumMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ຍຳຄໍຫມູຢ້າງ",
      price: "69.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumKhoMuYang.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ຍຳງົວເຜົາ",
      price: "65.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumNguaPhao.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ຍຳທະເລລວມ",
      price: "95.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumLomThaLe.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ຍຳປາມຶກ",
      price: "85.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumPaMuc.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ຍຳຢໍ່",
      price: "55.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumYor.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ຍຳວຸ້ນເສັ້ນໃສ່",
      price: "69.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumVunSen.PNG",
    ),
    ProductModel(
      productId: "7",
      productName: "ຍຳວຸ້ນເສັ້ນ ທະເລລວມ",
      price: "85.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumVunSenThaLe.PNG",
    ),
    ProductModel(
      productId: "8",
      productName: "ຍຳສະຫລັດລາວ",
      price: "65.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumSalatLao.jpg",
    ),
    ProductModel(
      productId: "9",
      productName: "ຍຳຫອຍນາງລົມຊົງເຄຶ່ອງ",
      price: "79.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumHoiNangLomSongKhuang.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຍຳຫອຍແຄງ",
      price: "85.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumHoiKheng.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ຍຳເລັບມືນາງ",
      price: "59.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumLepMuNang.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ຍຳແນມຫມູ",
      price: "45.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/yumNemMuSot.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ຍຳໄຂ່ຍ່ຽວມ້າ",
      price: "59.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumKhaiYeuMa.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ຍຳໄສ້ຕັນ",
      price: "59.000 ກີບ",
      productType: tumMenuType,
      image: "assets/images/YumMenu/YumSaiTan.jpg",
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
            "ເມນູຍຳ",
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
                    height: size.height * 0.15,
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
                              height: size.height * 0.09,
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
