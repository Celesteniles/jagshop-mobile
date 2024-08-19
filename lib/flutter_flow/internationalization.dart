import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? frText = '',
    String? enText = '',
  }) =>
      [frText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // searchPage
  {
    't8hygdzt': {
      'fr': '',
      'en': 'Address, city, state...',
    },
    '2zeaip6p': {
      'fr': 'Rechercher',
      'en': 'To research',
    },
    '1tsdg3g7': {
      'fr': 'JAG Shop',
      'en': '',
    },
    '4wu567c6': {
      'fr': 'Hello World',
      'en': '',
    },
    'u95pc3f0': {
      'fr': 'JAG Shop',
      'en': '',
    },
    'e75q1vmh': {
      'fr': 'JAG Shop',
      'en': '',
    },
    'bvib99uy': {
      'fr': 'Rechercher',
      'en': '',
    },
    'n1jaw407': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // chatMain
  {
    'n3e1742q': {
      'fr': 'Messages',
      'en': '',
    },
    'jvhip5rd': {
      'fr': '',
      'en': 'Cats',
    },
  },
  // chatDetails
  {
    '3ybl9gfj': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // propertyReview
  {
    'ex9fkc03': {
      'fr': '2,503',
      'en': '2,503',
    },
    'h1uvtoun': {
      'fr': '# of Ratings',
      'en': '# of Ratings',
    },
    '27cpk2s7': {
      'fr': '4.6',
      'en': '4.6',
    },
    '6y4kmpb8': {
      'fr': 'Avg. Rating',
      'en': 'Avg. Rating',
    },
    'v40kzn93': {
      'fr': 'Vacation Home',
      'en': 'Vacation Home',
    },
    'zxocya21': {
      'fr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    },
    'xwdvpvr2': {
      'fr': 'Reviews',
      'en': 'Reviews',
    },
    'or41e3t6': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // profilePage
  {
    'b4pdno87': {
      'fr': '[Username]',
      'en': '',
    },
    'bq05k0k2': {
      'fr': '[Email_Address]',
      'en': '',
    },
    '0egdg6nb': {
      'fr': 'Passer au monde sombre',
      'en': 'Switch to Dark Mode',
    },
    'r6tv1a1g': {
      'fr': 'Passer au mode clair',
      'en': 'Switch to Light Mode',
    },
    'phuz4dyd': {
      'fr': 'Détails du compte',
      'en': 'Account details',
    },
    'vrefpduo': {
      'fr': 'Modifier le profil',
      'en': 'modify the profile',
    },
    'sa9vgy7r': {
      'fr': 'Mode de paiement',
      'en': 'Payment method',
    },
    'nneb119f': {
      'fr': 'Changer le mot de passe',
      'en': 'Change password',
    },
    '8t8poj2v': {
      'fr': 'Paramètres',
      'en': 'Account details',
    },
    '0d8rnby4': {
      'fr': 'Devise',
      'en': 'My Properties',
    },
    '40til7yz': {
      'fr': 'XAF',
      'en': 'My Properties',
    },
    '242quyxp': {
      'fr': 'Langue',
      'en': 'My Properties',
    },
    'uuxw9xv1': {
      'fr': 'Politique de confidentialité',
      'en': 'My Bookings',
    },
    '3tt1jc39': {
      'fr': 'Conditions générales',
      'en': 'My Bookings',
    },
    '5zpds35d': {
      'fr': 'A propos de JAG Shop',
      'en': 'My Bookings',
    },
    'ko6lzcie': {
      'fr': 'Profil',
      'en': '',
    },
    'kj9o6y5h': {
      'fr': '',
      'en': 'Profile',
    },
  },
  // editProfile
  {
    '5g6b0ccj': {
      'fr': 'Changer le profil',
      'en': 'Change profile',
    },
    'guk9pvp2': {
      'fr': 'Nom complet',
      'en': 'Full Name',
    },
    'q7sjlwo5': {
      'fr': 'Your full name...',
      'en': 'Your full name...',
    },
    '6acnukpu': {
      'fr': '[display_name]',
      'en': '',
    },
    '68o9m76d': {
      'fr': 'Numéro de téléphone',
      'en': '',
    },
    '9vafq9pu': {
      'fr': 'Your full name...',
      'en': '',
    },
    '6590ro17': {
      'fr': '[display_name]',
      'en': '',
    },
    'qxbdvtko': {
      'fr': 'Adresse e-mail',
      'en': 'E-mail address',
    },
    'ztahepe8': {
      'fr': 'Your email..',
      'en': 'Your email..',
    },
    'fw41h6av': {
      'fr': '[display_name]',
      'en': '',
    },
    '4cv7f3uf': {
      'fr': 'Bio',
      'en': 'Organic',
    },
    '6s7qgww1': {
      'fr': 'A little about you...',
      'en': 'A little about you...',
    },
    'wow6q0q5': {
      'fr': '[bio]',
      'en': '',
    },
    'p6l0426i': {
      'fr': 'Sauvégarder',
      'en': 'To safeguard',
    },
    'mkyy49g0': {
      'fr': 'Modifier le profil',
      'en': '',
    },
    '10rb7h0w': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // changePassword
  {
    'cdlqiapl': {
      'fr': 'Email Address',
      'en': 'Email Address',
    },
    '72eyny88': {
      'fr': 'Your email..',
      'en': 'Your email..',
    },
    'nlrqyuem': {
      'fr': '[display_name]',
      'en': '',
    },
    'i1o7fnn9': {
      'fr':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
    },
    'kr8fn67w': {
      'fr': 'Réinitialiser le mot de passe',
      'en': 'Reset password',
    },
    'sejzyrs6': {
      'fr': 'Réinitialiser le mot de passe',
      'en': '',
    },
    'plrximvp': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // AuthUser
  {
    'fhwz2e69': {
      'fr': 'Inscription',
      'en': 'Registration',
    },
    'ef213x60': {
      'fr': 'Créer un compte',
      'en': 'Create an account',
    },
    'zwf4u28o': {
      'fr': 'Commençons par remplir le formulaire ci-dessous.',
      'en': 'Let\'s start by filling out the form below.',
    },
    'rkfrqkik': {
      'fr': 'E-mail',
      'en': 'E-mail',
    },
    'n106ih19': {
      'fr': 'Mot de passe',
      'en': 'Password',
    },
    'ij5gokof': {
      'fr': 'Commencer',
      'en': 'To start',
    },
    'bcutio99': {
      'fr': 'Ou s\'inscrire avec',
      'en': 'Or register with',
    },
    'inx4ieil': {
      'fr': 'Continuez avec Google',
      'en': 'Continue with Google',
    },
    'hwixrf88': {
      'fr': 'Continuez avec Apple',
      'en': 'Continue with Apple',
    },
    'iedll713': {
      'fr': 'Connexion',
      'en': 'Connection',
    },
    '8m5t2w0r': {
      'fr': 'Bienvenue',
      'en': 'Welcome',
    },
    '83w4kf05': {
      'fr':
          'Remplissez les informations ci-dessous afin d\'accéder à votre compte.',
      'en': 'Complete the information below to access your account.',
    },
    '2e374gwb': {
      'fr': 'E-mail',
      'en': 'E-mail',
    },
    'r8dp1cli': {
      'fr': 'Mot de passe',
      'en': 'Password',
    },
    'pjzye3fg': {
      'fr': 'Se connecter',
      'en': 'To log in',
    },
    'gtm7ynyx': {
      'fr': 'Ou se connecter avec',
      'en': 'Or log in with',
    },
    '9rqba733': {
      'fr': 'Continuez avec Google',
      'en': 'Continue with Google',
    },
    '22l2i2qq': {
      'fr': 'Continuez avec Apple',
      'en': 'Continue with Apple',
    },
    '6rie9096': {
      'fr': 'Forgot Password?',
      'en': 'Forgot Password?',
    },
    'ecfmxjcc': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // Home
  {
    'pvonrvpx': {
      'fr': 'Vêtements',
      'en': '',
    },
    '26z39fhi': {
      'fr': 'JAG ',
      'en': 'JAG',
    },
    'fy7yxyt5': {
      'fr': 'Shop',
      'en': 'Shop',
    },
    '5qmprxu9': {
      'fr': 'Rechercher',
      'en': 'To research',
    },
    '9h95xatc': {
      'fr': 'Hello World',
      'en': '',
    },
    'nh5emetf': {
      'fr': 'Partager',
      'en': 'Share',
    },
    'hj3ofbv1': {
      'fr': 'Partagez l\'application à vos amis',
      'en': 'Share the app to your friends',
    },
    '2cxy1oqp': {
      'fr': 'Noter l\'application',
      'en': 'Rate the app',
    },
    'glgaipvp': {
      'fr': 'Dites ce que vous pensez de cette application',
      'en': 'Say what you think about this app',
    },
    '58u7hxlp': {
      'fr': 'Contact',
      'en': 'Contact',
    },
    'lx4xssax': {
      'fr': 'Nous contacter',
      'en': 'Contact us',
    },
    'yxgbi4pn': {
      'fr': 'Se déconnecter',
      'en': 'Sign out',
    },
    '4g9lvli3': {
      'fr': 'Quitter la session',
      'en': 'Exit session',
    },
    'i43hr7zz': {
      'fr': 'A propos',
      'en': 'About',
    },
    'sn59xyz5': {
      'fr': '',
      'en': '',
    },
  },
  // FavoritePage
  {
    '7k15byb0': {
      'fr': 'Mes favoris',
      'en': '',
    },
  },
  // Cart
  {
    '9s76pz59': {
      'fr': 'Hello World',
      'en': '',
    },
    'i19acpzd': {
      'fr': 'XAF 2,000',
      'en': '',
    },
    'adnaxl2d': {
      'fr': '1',
      'en': '',
    },
    '7s4d8prp': {
      'fr': 'Sous-total',
      'en': '',
    },
    '0c88fz1q': {
      'fr': '1,200.00 FCFA',
      'en': '',
    },
    '3jejffy0': {
      'fr': 'Frais d\'expédition',
      'en': '',
    },
    'a9ddjjct': {
      'fr': '1,000.00 FCFA',
      'en': '',
    },
    'xig9vt1k': {
      'fr': 'TOTAL',
      'en': '',
    },
    's43da330': {
      'fr': 'Passer au paiement',
      'en': '',
    },
    '203y7c8l': {
      'fr': 'Aucun article trouvé',
      'en': '',
    },
    'ppdsw6kp': {
      'fr': 'Rechercher',
      'en': '',
    },
    'n9nq4umg': {
      'fr': 'Panier',
      'en': '',
    },
  },
  // CategoryPage
  {
    '3xjkm90e': {
      'fr': 'Home',
      'en': 'Home',
    },
  },
  // PaymentPage
  {
    'kdl6l86r': {
      'fr': 'Ajouter un coupon',
      'en': '',
    },
    'izjzs34g': {
      'fr': 'Ajouter',
      'en': '',
    },
    'njyztdpf': {
      'fr': 'Moyen de paiement',
      'en': '',
    },
    '20kdqoeo': {
      'fr': 'Choisir une méthode de paiement',
      'en': '',
    },
    'usnwf5bo': {
      'fr': 'Résumé de la commande',
      'en': '',
    },
    'h43jxkro': {
      'fr': 'Sous-total',
      'en': '',
    },
    'ua0godra': {
      'fr': 'Réduction',
      'en': '',
    },
    'w4bur4yu': {
      'fr': '(-) ',
      'en': '',
    },
    'zc9topn8': {
      'fr': 'TVA / Taxe (0.08%)',
      'en': '',
    },
    '2rv3xs7x': {
      'fr': '(+) ',
      'en': '',
    },
    'k2dml7vn': {
      'fr': 'Frais d\'expédition',
      'en': '',
    },
    'nrb570g9': {
      'fr': '(+) ',
      'en': '',
    },
    'r9n8jy3m': {
      'fr': 'J\'ai lu et j\'accepte la ',
      'en': '',
    },
    'v4p8f5ux': {
      'fr': 'Politique de confidentialité',
      'en': '',
    },
    'fnnd6g5j': {
      'fr': ' et les ',
      'en': '',
    },
    'pvk2a8a7': {
      'fr': 'conditions générales',
      'en': '',
    },
    'xym3axbn': {
      'fr': 'TOTAL GENERAL',
      'en': '',
    },
    'r840xmzf': {
      'fr': 'Confirmer la commande',
      'en': '',
    },
    '99ps8x44': {
      'fr': 'Paiement',
      'en': '',
    },
    '6s7h1zi1': {
      'fr': 'Home',
      'en': '',
    },
  },
  // DetailsPage
  {
    '8k6yw0ir': {
      'fr': 'DESCRIPTION',
      'en': '',
    },
    'hflvaxax': {
      'fr': 'Ce que les gens disent',
      'en': '',
    },
    'hosve8gv': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'u0k1ru0m': {
      'fr': 'Home',
      'en': '',
    },
  },
  // DetailsPageCopy
  {
    'wtdu23sw': {
      'fr': '4/5 Reviews',
      'en': '',
    },
    'hss9nlp6': {
      'fr': 'Avis',
      'en': '',
    },
    'zpg8s7go': {
      'fr': 'DESCRIPTION',
      'en': '',
    },
    'exysaqji': {
      'fr': 'Chat',
      'en': '',
    },
    'ctq7rf0m': {
      'fr': 'Ajouter au panier',
      'en': '',
    },
    'kvq0keaz': {
      'fr': 'Home',
      'en': '',
    },
  },
  // StorePage
  {
    'qbgrvn0w': {
      'fr': 'Catalogue',
      'en': '',
    },
    'fjpggxb3': {
      'fr': 'Tout voir',
      'en': '',
    },
    'hcehnpdu': {
      'fr': 'Partager l\'entreprise',
      'en': '',
    },
    '5bid95zr': {
      'fr': 'Signaler la boutique',
      'en': '',
    },
    'cifjq0qi': {
      'fr': 'Informations',
      'en': '',
    },
    'qr8qfn5l': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Onboarding
  {
    '0ukoptva': {
      'fr': 'Bienvenue !',
      'en': '',
    },
    'w5blnieq': {
      'fr': 'Achetez ou vendez depuis votre domicile',
      'en': '',
    },
    'a3hvu2w9': {
      'fr': 'Connexion',
      'en': '',
    },
    'dx8d9io3': {
      'fr': 'Créer un compte',
      'en': '',
    },
    '7xo60fe7': {
      'fr': 'Home',
      'en': '',
    },
  },
  // ModePaiementPage
  {
    '7ipsckgj': {
      'fr':
          'Enregistrez votre mode de paiement pour faciliter vos transactions.',
      'en': '',
    },
    'ckgwo2tg': {
      'fr': 'Ajouter un nouveau de paiement',
      'en': '',
    },
    '855rkth6': {
      'fr': 'Hello World',
      'en': '',
    },
    'hrarhpwk': {
      'fr': 'mathode',
      'en': '',
    },
    'fua6c037': {
      'fr': 'Mode de paiement',
      'en': '',
    },
    '2z7rsvpi': {
      'fr': 'Home',
      'en': '',
    },
  },
  // OnboardingCopy
  {
    'c6o0nfjl': {
      'fr': 'Search for Jobs',
      'en': '',
    },
    'bsvt5t5v': {
      'fr':
          'Search and find jobs in your industry for companies that are ready to hire the top talent!',
      'en': '',
    },
    '0pzl9alp': {
      'fr': 'Post Jobs Easily',
      'en': '',
    },
    '9o0veafl': {
      'fr':
          'Post jobs for your company easily and find the best talent looking for new opportunities immediately.',
      'en': '',
    },
    '8gg04wyo': {
      'fr': 'Find the Right Fit',
      'en': '',
    },
    'rr5xjofr': {
      'fr':
          'Search and find jobs in your industry for companies that are ready to hire the top talent!',
      'en': '',
    },
    'qnansle0': {
      'fr': 'Continue',
      'en': '',
    },
    '6629fe2q': {
      'fr': 'Home',
      'en': '',
    },
  },
  // LoginPage
  {
    'qj41azss': {
      'fr': 'E-mail ou numéro de téléphone',
      'en': '',
    },
    'le7jrtt7': {
      'fr': 'Mot de passe',
      'en': '',
    },
    'al36oz00': {
      'fr': 'Se connecter',
      'en': '',
    },
    'c31u32gd': {
      'fr': 'Mot de passe oublié ?',
      'en': '',
    },
    '0ms49zh2': {
      'fr': ' Réinitialiser',
      'en': '',
    },
    '1wb109kv': {
      'fr': 'Home',
      'en': '',
    },
  },
  // RegisterPage
  {
    'up99yq6k': {
      'fr': 'Finalisons la création de votre compte !',
      'en': '',
    },
    '0x8vumjl': {
      'fr': 'Entrez votre nom complet, e-mail et créez un mot de passe.',
      'en': '',
    },
    'hmok8m54': {
      'fr': 'Nom complet',
      'en': '',
    },
    'sgsuhw7p': {
      'fr': 'E-mail',
      'en': '',
    },
    '4vun15r6': {
      'fr': 'Mot de passe',
      'en': '',
    },
    'ldm9c08u': {
      'fr': 'Confirmation du mot de passe',
      'en': '',
    },
    'w7aqaopb': {
      'fr': 'J\'ai lu et j\'approuve les conditions',
      'en': '',
    },
    'h9y7q6s9': {
      'fr': 'S\'inscrire',
      'en': '',
    },
    'bgqbk616': {
      'fr': 'Home',
      'en': '',
    },
  },
  // PhoneVerifiedPage
  {
    'w2pggfl3': {
      'fr': 'Créer un compte',
      'en': '',
    },
    '3g697hry': {
      'fr':
          'Pour commencer à créer votre compte, entrez votre numéro de téléphone.',
      'en': '',
    },
    'mxqq8w1b': {
      'fr': '+242',
      'en': '',
    },
    'gz2l2n9r': {
      'fr': '',
      'en': '',
    },
    '3w4p11me': {
      'fr': 'Suivant',
      'en': '',
    },
    'knbr9qh9': {
      'fr':
          'Vous recevrez des notifications de notre part par texto à des fins de sécurité et authentification.',
      'en': '',
    },
    'uy2i68a7': {
      'fr': 'Home',
      'en': '',
    },
  },
  // bottomSheet
  {
    'l4qhcqxn': {
      'fr': 'Session Booked!',
      'en': 'Session Booked!',
    },
    'fjemm4l4': {
      'fr': 'You have successfully booked a session on:',
      'en': 'You have successfully booked a session on:',
    },
    'mvx5wfyx': {
      'fr': 'Mon, Dec 11 - 2021',
      'en': 'Mon, Dec 11 - 2021',
    },
  },
  // total
  {
    'y21qlgu8': {
      'fr': 'Order Total',
      'en': 'Order Total',
    },
    'hqvgfclj': {
      'fr':
          'Your order total is a summary of all items in your order minus any fees and taxes associated with your purchase.',
      'en':
          'Your order total is a summary of all items in your order minus any fees and taxes associated with your purchase.',
    },
    'sbg3vgek': {
      'fr': 'Okay',
      'en': 'Okay',
    },
  },
  // changePhoto
  {
    'ma2uoy7z': {
      'fr': 'Change Profile Photo',
      'en': 'Change Profile Photo',
    },
    'mrlovspv': {
      'fr': 'Upload Photo',
      'en': 'Upload Photo',
    },
    'o46jls4b': {
      'fr': 'Save Photo',
      'en': 'Save Photo',
    },
  },
  // reviewTrip
  {
    '6hlgtgbx': {
      'fr': 'Rate Your Trip',
      'en': 'Rate Your Trip',
    },
    'vdbsn9dd': {
      'fr': 'Let us know what you thought of the place below!',
      'en': 'Let us know what you thought of the place below!',
    },
    'lcq683xd': {
      'fr': 'How would you rate it?',
      'en': 'How would you miss it?',
    },
    '6kzh7y12': {
      'fr': 'Please leave a description of the place...',
      'en': 'Please leave a description of the place...',
    },
    'rc9n7lag': {
      'fr': 'Submit Review',
      'en': 'Submit Review',
    },
  },
  // changeMainPhoto
  {
    'ah5evgj5': {
      'fr': 'Changer la photo de profil',
      'en': 'Change profile picture',
    },
    'q9fupvbm': {
      'fr': 'Choisir l\'image',
      'en': 'Choose image',
    },
    '3s2daz4h': {
      'fr': 'Enrégistrer l\'image',
      'en': 'Save image',
    },
  },
  // cancelTrip
  {
    'f9flnmml': {
      'fr': 'Cancel Trip',
      'en': 'Cancel Trip',
    },
    '91bcki9i': {
      'fr':
          'If you want to cancel your tripl please leave a note below to send to the host.',
      'en':
          'If you want to cancel your tripl please leave a note below to send to the host.',
    },
    'xwn6mhqc': {
      'fr': 'Your reason for cancelling...',
      'en': 'Your reason for canceling...',
    },
    'f5wtn7fq': {
      'fr': 'Yes, Cancel Trip',
      'en': 'Yes, Cancel Trip',
    },
    'kxhliqzw': {
      'fr': 'Never Mind',
      'en': 'Never Mind',
    },
  },
  // cancelTripHOST
  {
    'z741yx7k': {
      'fr': 'Cancel Trip',
      'en': 'Cancel Trip',
    },
    '0ngsi99i': {
      'fr':
          'If you want to cancel your tripl please leave a note below to send to the host.',
      'en':
          'If you want to cancel your tripl please leave a note below to send to the host.',
    },
    'js1ee6op': {
      'fr': 'Your reason for cancelling...',
      'en': 'Your reason for canceling...',
    },
    'bikc0fry': {
      'fr': 'Yes, Cancel Trip',
      'en': 'Yes, Cancel Trip',
    },
    '9mjh8220': {
      'fr': 'Never Mind',
      'en': 'Never Mind',
    },
  },
  // ProductComponent
  {
    '9cmuey6g': {
      'fr': 'Paul Masquin - Brosse',
      'en': '',
    },
    'bm77vcsm': {
      'fr': 'CFA 2,250',
      'en': '',
    },
  },
  // paymentMethod
  {
    '7rnf3qdj': {
      'fr': 'Mode de paiement',
      'en': 'Rate Your Trip',
    },
    'gi0b0qrb': {
      'fr':
          'Enregistrez votre mode de paiement pour faciliter vos transactions.',
      'en': 'Let us know what you thought of the place below!',
    },
    'o4wbud3e': {
      'fr':
          'Actuellement, nous acceptons uniquement les paiements via Mobile Money et NokiPay',
      'en': '',
    },
    'lo3j8lc3': {
      'fr': 'Mobile Money',
      'en': '',
    },
    'g4db0zg2': {
      'fr': 'NokiPay',
      'en': '',
    },
    'h6r07crx': {
      'fr': 'Numéro de téléphone',
      'en': '',
    },
    'fy1l1hn0': {
      'fr': 'Ajouter',
      'en': 'Submit Review',
    },
  },
  // ChoosePaymentMethod
  {
    'yjlxsreg': {
      'fr': 'Mode de paiement',
      'en': 'Rate Your Trip',
    },
    'rhi8aaj1': {
      'fr': 'Choisissez le mode de paiement',
      'en': 'Let us know what you thought of the place below!',
    },
    '5fn3cxsw': {
      'fr':
          'Actuellement, nous acceptons uniquement les paiements via Mobile Money et NokiPay',
      'en': '',
    },
    't0vtn7ct': {
      'fr': 'Hello World',
      'en': '',
    },
    '2opxfgd9': {
      'fr': 'mathode',
      'en': '',
    },
    'q7t93ab5': {
      'fr': 'Sélectionner',
      'en': 'Submit Review',
    },
  },
  // OTPComponent
  {
    'zuz0grpq': {
      'fr': 'Confirmation',
      'en': '',
    },
    'xm2gbnzi': {
      'fr': 'Vous n\'avez pas reçu ?',
      'en': '',
    },
    '4hrg8tb8': {
      'fr': 'Renvoyer',
      'en': '',
    },
    'sff8bbtp': {
      'fr': 'Fermer',
      'en': '',
    },
  },
  // PhoneVerified
  {
    'u9q1vwx3': {
      'fr': 'Numéro de téléphone vérifié',
      'en': '',
    },
    '4qbuu5cf': {
      'fr':
          'Mais un compte est déjà associé à ce numéro de téléphone.\nSouhaites-tu te connecter à ce compte ?',
      'en': '',
    },
    'kaqfpqga': {
      'fr': 'Oui, Se connecter',
      'en': '',
    },
    'k9sm2pyc': {
      'fr': 'Non, Utiliser un autre numéro',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '91w5jy5x': {
      'fr': '',
      'en': '',
    },
    '4d6p6imn': {
      'fr': '',
      'en': '',
    },
    'kqv1daxz': {
      'fr': '',
      'en': '',
    },
    '0o3ntciw': {
      'fr': '',
      'en': '',
    },
    'ow9ksspo': {
      'fr': '',
      'en': '',
    },
    '3lqes0ut': {
      'fr': '',
      'en': '',
    },
    'wdtgytpm': {
      'fr': '',
      'en': '',
    },
    'pmdv5hsn': {
      'fr': '',
      'en': '',
    },
    '2impgekm': {
      'fr': '',
      'en': '',
    },
    'zvnpikwp': {
      'fr': '',
      'en': '',
    },
    '3og6j8ci': {
      'fr': '',
      'en': '',
    },
    '9860j2p6': {
      'fr': '',
      'en': '',
    },
    'upc26mkj': {
      'fr': '',
      'en': '',
    },
    'ps9zddss': {
      'fr': '',
      'en': '',
    },
    '0wuf0lrk': {
      'fr': '',
      'en': '',
    },
    '3tx324sz': {
      'fr': '',
      'en': '',
    },
    '2a32mza2': {
      'fr': '',
      'en': '',
    },
    'hdit68sg': {
      'fr': '',
      'en': '',
    },
    '4uef8fwn': {
      'fr': '',
      'en': '',
    },
    't4f65nt7': {
      'fr': '',
      'en': '',
    },
    'ul5bzjiy': {
      'fr': '',
      'en': '',
    },
    'mhi9v352': {
      'fr': '',
      'en': '',
    },
    'l77bhdsj': {
      'fr': '',
      'en': '',
    },
    'e4npi037': {
      'fr': '',
      'en': '',
    },
    '5s9tgf39': {
      'fr': '',
      'en': '',
    },
    's0y37g45': {
      'fr': '',
      'en': '',
    },
    'bq3nx688': {
      'fr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
