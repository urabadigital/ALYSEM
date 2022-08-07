import 'package:flutter/material.dart';

import 'package:alysem/utils/ui.dart';
import '../models/granel.dart';

class ListHorizontalWidget extends StatefulWidget {
  final Granel granel;
  final double marginLeft;

  const ListHorizontalWidget({Key? key, required this.granel, required this.marginLeft}) : super(key: key);

  @override
  State<ListHorizontalWidget> createState() => _ListHorizontalWidgetState();
}

class _ListHorizontalWidgetState extends State<ListHorizontalWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Container(
          height: 380,
          width: 268,
          margin: EdgeInsetsDirectional.only(start: widget.marginLeft, end: 20, bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Stack(
              children:[
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                      child: Image.asset(
                        height: 158,
                        width: 268,
                        widget.granel.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(widget.granel.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 16
                              )
                            ),
                            Text('Faltan ${widget.granel.caduca} días', style: const TextStyle(color: Color(0xff6c7d5e), fontSize: 11, fontWeight: FontWeight.bold)),
                          ],
                        )
                    ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/calendar.png'),
                                    Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text('Retorno', style: TextStyle(fontSize: 10, color: Color(0xff6c7d5e))),
                                          Text('${widget.granel.retorno} días', style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff6c7d5e))),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset('assets/images/arrow-down.png'),
                                    Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text('Minimo inversión', style: TextStyle(fontSize: 10, color: Color(0xff6c7d5e))),
                                          Text(Ui.convertPrice(widget.granel.minimoInversion), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff6c7d5e))),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/discount.png'),
                                      Padding(padding: const EdgeInsets.only(left: 7),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('Rendimiento', style: TextStyle(fontSize: 10, color: Color(0xff6c7d5e))),
                                            Text('Asegurado ${widget.granel.rendimiento}%', style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff6c7d5e))),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/meta-money.png'),
                                      Padding(padding: const EdgeInsets.only(left: 7),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text('Meta inversión', style: TextStyle(fontSize: 10, color: Color(0xff6c7d5e))),
                                            Text(Ui.convertPrice(widget.granel.metaInversion), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xff6c7d5e))),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                              ),
                            ]
                          )
                      ),
                      const SizedBox(height: 15),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: LinearProgressIndicator(value: Ui.convertPercent(widget.granel.invertido, widget.granel.metaInversion),
                          minHeight: 7,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                          color: const Color(0xffB08C60),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text('Invertido:', style: TextStyle(color: Color(0xff94a16f), fontSize: 12)),
                                Text(Ui.convertPrice(widget.granel.invertido), style: const TextStyle(color: Color(0xff94a16f),fontSize: 12, fontWeight: FontWeight.bold))
                              ],
                            ),
                            Row(
                              children: [
                                const Text('Faltan:', style: TextStyle(color: Color(0xff94a16f), fontSize: 12)),
                                Text(Ui.convertPrice(Ui.convertAmount(widget.granel.invertido, widget.granel.metaInversion)).toString(), style: const TextStyle(color: Color(0xff94a16f),fontSize: 12, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: MaterialButton(
                          onPressed: () {},
                          elevation: 0,
                          color: const Color(0xff94a16f),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: SizedBox(
                              width: size,
                              child: const Text('Invertir', textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                Positioned(
                    top: 8,
                    right: 8,
                    child: SizedBox(
                      height: 30,
                      width: 35,
                      child: MaterialButton(
                        elevation: 0,
                        padding: EdgeInsets.zero,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        onPressed: () {},
                        child: Image.asset('assets/images/chart.png'),
                      )
                    )
                )
              ]
          )
      );
  }
}