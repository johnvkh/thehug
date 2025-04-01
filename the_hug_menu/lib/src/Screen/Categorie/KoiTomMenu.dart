// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../ComponentsUtils/DialogPopupWidget.dart';
import '../../Model/ProductModel.dart';
import '../../Utility/Constants.dart';
import '../../Utility/WidgetUtility.dart';

class KoiTomMenu extends StatefulWidget {
  const KoiTomMenu({super.key});

  @override
  State<KoiTomMenu> createState() => _KoiTomMenuState();
}

class _KoiTomMenuState extends State<KoiTomMenu> {
  final List<ProductModel> _listProduct = [
    ProductModel(
      productId: "1",
      productName: "ກຸ້ງເຕັ້ນ",
      price: "45.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/kungTen.jpg",
    ),
    ProductModel(
      productId: "2",
      productName: "ກຸ້ງແຊ່ນ້ຳປາ",
      price: "75.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/kungxenampa.jpg",
    ),
    ProductModel(
      productId: "3",
      productName: "ກ້ອຍປານິນ",
      price: "85.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/koi_pa_nin.jpg",
    ),
    ProductModel(
      productId: "4",
      productName: "ກ້ອຍປານ້ຳຂອງ",
      price: "95.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/koipanamkhong.jpg",
    ),
    ProductModel(
      productId: "5",
      productName: "ກ້ອຍປາແຊວມ້ອນ",
      price: "95.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/koi_samon.jpg",
    ),
    ProductModel(
      productId: "6",
      productName: "ຕົ້ມຍຳທະເລລວມ",
      price: "95.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/tom_yum_lom_thale.jpg",
    ),
    ProductModel(
      productId: "7",
      productName: "ຕົ້ມສົ້ມປານິນ",
      price: "95.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/tomsompanin.jpg",
    ),
    ProductModel(
      productId: "8",
      productName: "ຕົ້ມສົ້ມປານ້ຳຂອງ",
      price: "95.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/tomsompaNamKhong.jpg",
    ),
    ProductModel(
      productId: "9",
      productName: "ຕົ້ມແຊບດູກຂ້າງຫມູ",
      price: "75.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/tomSepKadukKhang.jpg",
    ),
    ProductModel(
      productId: "10",
      productName: "ຕົ້ມແຊບຕີນໄກ່",
      price: "69.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/tomSepTinKai.jpg",
    ),
    ProductModel(
      productId: "11",
      productName: "ຕົ້ມຍຳກຸ້ງ",
      price: "85.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/Tomyumkung.jpg",
    ),
    ProductModel(
      productId: "12",
      productName: "ແກ້ງເຫັດລວມ",
      price: "69.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/kenghet.jpg",
    ),
    ProductModel(
      productId: "13",
      productName: "ແກງເປັດ",
      price: "75.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/kengPet.jpg",
    ),
    ProductModel(
      productId: "14",
      productName: "ແກງຈືດສາລ່າຍ",
      price: "69.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/kengChutSalai.jpg",
    ),
    ProductModel(
      productId: "15",
      productName: "ລວກກຸ້ງສົດ",
      price: "75.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luokKung.jpg",
    ),
    ProductModel(
      productId: "16",
      productName: "ລວກງົວເຜົາ",
      price: "85.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luakNgua.jpg",
    ),
    ProductModel(
      productId: "17",
      productName: "ລວກທະເລລວມ",
      price: "120.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luakThaLeLum.jpg",
    ),
    ProductModel(
      productId: "18",
      productName: "ລວກປາມຶກ",
      price: "85.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luakpaMuc.jpg",
    ),
    ProductModel(
      productId: "19",
      productName: "ລວກປາຫນັງ",
      price: "90.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/LuakPaNang.jpg",
    ),
    ProductModel(
      productId: "20",
      productName: "ລວກຫອຍຫວານ",
      price: "85.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luakhoivan.jpg",
    ),
    ProductModel(
      productId: "21",
      productName: "ລວກຫອຍແຄງ",
      price: "95.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luakHoiKheng.jpg",
    ),
    ProductModel(
      productId: "21",
      productName: "ລວກຫອຍໂປ້",
      price: "45.000 ກີບ",
      productType: koitomMenuType,
      image: "assets/images/KoiTomMenu/luakHoiPo.jpg",
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
                  "ເມນູກ້ອຍ - ຕົ້ມ - ລວກ",
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
