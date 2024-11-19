import 'package:flutter/material.dart';
import 'package:train_ticket_buying_app/module/shoppingbag/view/shopping_bag_view.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../shoppingbag/view/shopping_bag_view.dart';
import '../../ticket/view/ticket_view.dart';
import '../../settings/view/settings_view.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            ShoppingBagView(),
            const TicketView(),
            const SettingsView(),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex,
              onTap: (newIndex) => controller.updateIndex(newIndex),
              showSelectedLabels: false,
              elevation: 0.0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 36.0),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag, size: 36.0),
                  label: "Shopping Bag",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.airplane_ticket, size: 36.0),
                  label: "Ticket",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings, size: 36.0),
                  label: "Settings",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
