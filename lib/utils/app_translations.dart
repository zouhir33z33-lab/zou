/// Traductions de l'application. Phase 4 : seulement les textes de la navigation
/// et de l'écran de démarrage. Les libellés arabes proviennent de la vidéo ;
/// les libellés FR/EN de navigation sont à valider (non visibles dans la vidéo).
class AppTranslations {
  static const Map<String, Map<String, String>> _t = {
    'ar': {
      'nav_timetable': 'التوقيت',
      'nav_classes': 'الأقسام',
      'nav_sheets': 'الجذاذات',
      'nav_settings': 'الإعدادات',
      'welcome_title': 'مرحباً بك في EPS Assistant',
      'confirm_start': 'تأكيد وبدء الاستخدام',
      'coming_soon': 'قيد البناء في المرحلة التالية',
    },
    'fr': {
      'nav_timetable': 'Emploi du temps',
      'nav_classes': 'Classes',
      'nav_sheets': 'Fiches',
      'nav_settings': 'Paramètres',
      'welcome_title': 'Bienvenue dans EPS Assistant',
      'confirm_start': 'Confirmer et commencer',
      'coming_soon': 'À construire dans la phase suivante',
    },
    'en': {
      'nav_timetable': 'Timetable',
      'nav_classes': 'Classes',
      'nav_sheets': 'Sheets',
      'nav_settings': 'Settings',
      'welcome_title': 'Welcome to EPS Assistant',
      'confirm_start': 'Confirm and start',
      'coming_soon': 'To be built in the next phase',
    },
  };

  static String tr(String lang, String key) =>
      _t[lang]?[key] ?? _t['fr']?[key] ?? key;
}
