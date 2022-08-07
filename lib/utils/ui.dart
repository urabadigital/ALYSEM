import 'package:flutter/material.dart';

class Ui {

  static String convertPrice(double price, {double? discount, String? discountType, int asFixed = 0}) {
      if(discountType == 'amount') {
        price = price - discount!;
      }else if(discountType == 'percent') {
        price = price - ((discount! / 100) * price);
      }
    return '\$ '
        '${(price).toStringAsFixed(asFixed).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}';
  }

  static double convertPercent(double invertido, double meta) {
    var percent = (invertido * 100) / meta;
    percent = percent * 0.01;
    return percent.clamp(0, 100);
  }

  static double convertAmount(double inversion, double meta) {
    var amount = meta - inversion;
    return amount;
  }

static BottomNavigationBar bottomNavigationBar(BuildContext context) {
  return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      iconSize: 22,
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedIconTheme: const IconThemeData(size: 28),
      unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
      //currentIndex: widget.currentTab,
      onTap: (int i) {
        // this._selectTab(i);
      },
      // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/profile.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/repeat.png'),
          label: '',
        ),
        BottomNavigationBarItem(
            label: '',
            icon: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset('assets/images/logo.png'),
            )),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/pause.png'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/images/wallet.png'),
          label: '',
        ),
      ],
    );
  }

static Row rowStatistic({String? image, required String price, required String description}) {
  return Row(
      children: [
        image == null ? const SizedBox() : Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(image),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
            children: [
              Text(price, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff6c7d5e))),
              Text(description, style: const TextStyle(fontSize: 9, color: Color(0xff6c7d5e))),
            ],
          ),
        ),
      ],
    );
  }

  static Padding rowTitle({required String title, required String buttontitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 16)
            ),
            MaterialButton(
              onPressed: () {},
              elevation: 0,
              shape: const StadiumBorder(),
              child: Text(buttontitle, style: const TextStyle(color: Color(0xff6c7d5e)))),
          ],
        )
    );
  }
}