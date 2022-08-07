import 'package:alysem/repository/repository.dart';
import 'package:flutter/material.dart';

import 'package:alysem/models/my_investor.dart';
import '../models/granel.dart';

import 'package:alysem/widgets/list_horizontal.dart';
import 'package:alysem/widgets/list_vertical.dart';
import 'package:alysem/utils/ui.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Granel> granels = Repository.getMockedGranels();
  final List<MyInvestor> investors = Repository.getMockedInvestors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Ui.bottomNavigationBar(context),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {},
            icon: Image.asset('assets/images/search.png'),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
            width: 35,
            height: 35,
            child: Image.asset('assets/images/logo.png'),
            ),
          const SizedBox(width: 10),
          Text(widget.title,
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 25
              )
            ),
          ]
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: Image.asset('assets/images/notification.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Ui.rowStatistic(image: 'assets/images/wallet.png', price: '29.000', description: 'Balance general'),
                const SizedBox(height: 40, child: VerticalDivider(width: 10, thickness: 0.5, color: Colors.grey)),
                Ui.rowStatistic(image: 'assets/images/money.png', price: '90.000', description: 'Retorno Inversion'),
                const SizedBox(height: 40, child: VerticalDivider(width: 10, thickness: 0.5, color: Colors.grey)),
                Ui.rowStatistic(price: '6', description: 'Inversiones activas'),
                ]
              ),
            ),
            const SizedBox(height: 10, child: Divider(height: 10, thickness: 0.5, color: Colors.grey)),
            Ui.rowTitle(title: 'Oportunidades de inversión', buttontitle: 'Ver todas'),
            SizedBox(
              height: 380,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: granels.length,
                itemBuilder: (BuildContext context, int index) {
                  final granel = granels[index];
                  double marginLeft = 0.0;
                  (index == 0) ? marginLeft = 20 : marginLeft = 0.0;
                    return ListHorizontalWidget(granel: granel, marginLeft: marginLeft);
                },
              )
            ),
            Ui.rowTitle(title: 'Mis inversiones', buttontitle: 'Ver todas'),
            SizedBox(
            child: ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: investors.length,
                itemBuilder: (BuildContext context, int index) {
                  final investor = investors[index];
                   return ListInvestorsWidget(investor: investor);
                }
              ),
            ),
          ],
        ),
      ),  
    );
  }
}