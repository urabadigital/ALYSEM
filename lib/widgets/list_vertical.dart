import 'package:alysem/models/my_investor.dart';
import 'package:alysem/utils/ui.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ListInvestorsWidget extends StatefulWidget {
  final MyInvestor investor;
  const ListInvestorsWidget({Key? key, required this.investor}) : super(key: key);

  @override
  State<ListInvestorsWidget> createState() => _ListInvestorsWidgetState();
}

class _ListInvestorsWidgetState extends State<ListInvestorsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 3),
                  blurRadius: 5)
              ]
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10), child: Image.asset(
                    widget.investor.image,
                    height: 63,
                    width: 63,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.investor.title,
                                style: const TextStyle(fontWeight: FontWeight.bold)
                            ),
                            const Text(
                              'Asegurado',
                              style: TextStyle(color: Color(0xffB08C60), fontWeight: FontWeight.bold, fontSize: 12)),

                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Inicio',
                                          style: TextStyle(
                                          color: Color(0xffB08C60),
                                          fontSize: 11)
                                        ),
                                        Text(
                                          DateFormat("dd/MM/yy").format(widget.investor.start).toString(),
                                          style: const TextStyle(
                                          color: Color(0xff94A16F),
                                          fontSize: 12)
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 3),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Finaliza',
                                          style: TextStyle(
                                          color: Color(0xffB08C60),
                                          fontSize: 11)
                                        ),
                                        Text(
                                          DateFormat("dd/MM/yy").format(widget.investor.end).toString(),
                                          //'02/12/22',
                                          style: const TextStyle(
                                          color: Color(0xff94A16F),
                                          fontSize: 12)
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Rendimiento',
                                          style: TextStyle(color: Color(0xffB08C60), fontSize: 11)
                                      ),
                                      Text('Invertido',
                                          style: TextStyle(color: Color(0xffB08C60), fontSize: 11)
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 3),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('${widget.investor.rendimiento}%',
                                          style: const TextStyle(color: Color(0xff94A16F), fontSize: 11, fontWeight: FontWeight.w600)
                                      ),
                                      Text(Ui.convertPrice(widget.investor.inversion),
                                          style: const TextStyle(color: Color(0xff94A16F), fontSize: 11, fontWeight: FontWeight.w600)
                                      ),
                                  ],
                                ),
                              ],
                            )
                          )
                        )
                      ],
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}