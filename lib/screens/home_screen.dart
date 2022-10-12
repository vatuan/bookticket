import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/double_text_widget.dart';
import 'package:bookticket/widgets/hotel_card.dart';
import 'package:bookticket/widgets/ticket_card.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            // padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            // padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good morning',
                            style: Styles.headLineStyle3,
                          ),
                          const Gap(3),
                          Text(
                            'Book Tickets',
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: AppLayout.getHeight(50),
                        width: AppLayout.getWidth(50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              )
                            ],
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/logo_travel.png'))),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6F0),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey.shade500,
                      ),
                      const Gap(10),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const AppDoubleText(
                      bigText: 'Upcoming Flights', smallText: 'View all'),
                ),
                const Gap(15),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: ticketList
                            .map((oneTicket) => TicketCard(ticket: oneTicket))
                            .toList()),
                  ),
                ),
                const Gap(15),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                  child: const AppDoubleText(
                      bigText: 'Hotels', smallText: 'View all'),
                ),
                const Gap(15),
                Container(
                  margin: EdgeInsets.only(left: AppLayout.getWidth(20)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList
                            .map((singleHotel) => HotelCard(
                                  hotel: singleHotel,
                                ))
                            .toList()),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
