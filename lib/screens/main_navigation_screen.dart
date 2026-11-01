import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/core_providers.dart';
import '../widgets/placeholder_tab.dart';

/// Coque de navigation : 4 onglets (ordre dans la vidéo, de droite à gauche en
/// arabe : Emploi du temps, Classes, Fiches, Paramètres).
class MainNavigationScreen extends ConsumerWidget {
  const MainNavigationScreen({super.key});

  static const _tabs = <({String key, IconData icon, IconData selected})>[
    (key: 'nav_timetable', icon: Icons.schedule_outlined, selected: Icons.schedule),
    (key: 'nav_classes', icon: Icons.groups_outlined, selected: Icons.groups),
    (key: 'nav_sheets', icon: Icons.folder_outlined, selected: Icons.folder),
    (key: 'nav_settings', icon: Icons.settings_outlined, selected: Icons.settings),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navIndexProvider);
    final tr = ref.watch(trProvider);
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [for (final t in _tabs) PlaceholderTab(titleKey: t.key)],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (i) =>
            ref.read(navIndexProvider.notifier).state = i,
        destinations: [
          for (final t in _tabs)
            NavigationDestination(
              icon: Icon(t.icon),
              selectedIcon: Icon(t.selected),
              label: tr(t.key),
            ),
        ],
      ),
    );
  }
}
