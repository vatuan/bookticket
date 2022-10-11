import 'package:bookticket/widgets/thick_container.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketCard({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.8,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Showing the blue part of the card/ticket
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                  color: Color(0xFF526799)),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['from']['code'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(2),
                          Text(
                            ticket['from']['name'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              ThickContainer(),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 2),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 2),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 2),
                              ),
                              RotatedBox(
                                quarterTurns: -3,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 2),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 2),
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white, letterSpacing: 2),
                              ),
                              ThickContainer(),
                              Gap(2),
                            ],
                          ),
                          Text(
                            ticket['flying_time'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['to']['code'],
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(2),
                          Text(
                            ticket['to']['name'],
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Showing the orange part of the card/ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: const DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getWidth(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket['date'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          'Date',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          ticket['departure_time'],
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          'Depature time',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '${ticket['number']}',
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          'Number',
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
