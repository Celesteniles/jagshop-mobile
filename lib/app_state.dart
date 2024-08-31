import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _cardNumber =
          await secureStorage.getString('ff_cardNumber') ?? _cardNumber;
    });
    await _safeInitAsync(() async {
      _cardHolderName =
          await secureStorage.getString('ff_cardHolderName') ?? _cardHolderName;
    });
    await _safeInitAsync(() async {
      _cardName = await secureStorage.getString('ff_cardName') ?? _cardName;
    });
    await _safeInitAsync(() async {
      _zipCode = await secureStorage.getString('ff_zipCode') ?? _zipCode;
    });
    await _safeInitAsync(() async {
      _cart = await secureStorage.getInt('ff_cart') ?? _cart;
    });
    await _safeInitAsync(() async {
      _phone = await secureStorage.getString('ff_phone') ?? _phone;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_userConnecte') != null) {
        try {
          _userConnecte = jsonDecode(
              await secureStorage.getString('ff_userConnecte') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _accessToken =
          await secureStorage.getString('ff_accessToken') ?? _accessToken;
    });
    await _safeInitAsync(() async {
      _carts = (await secureStorage.getStringList('ff_carts'))?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _carts;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_adresse') != null) {
        try {
          _adresse =
              jsonDecode(await secureStorage.getString('ff_adresse') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _favorites =
          (await secureStorage.getStringList('ff_favorites'))?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _favorites;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_mode') != null) {
        try {
          _mode = jsonDecode(await secureStorage.getString('ff_mode') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _cardNumber = '';
  String get cardNumber => _cardNumber;
  set cardNumber(String value) {
    _cardNumber = value;
    secureStorage.setString('ff_cardNumber', value);
  }

  void deleteCardNumber() {
    secureStorage.delete(key: 'ff_cardNumber');
  }

  String _cardHolderName = '';
  String get cardHolderName => _cardHolderName;
  set cardHolderName(String value) {
    _cardHolderName = value;
    secureStorage.setString('ff_cardHolderName', value);
  }

  void deleteCardHolderName() {
    secureStorage.delete(key: 'ff_cardHolderName');
  }

  String _cardName = '';
  String get cardName => _cardName;
  set cardName(String value) {
    _cardName = value;
    secureStorage.setString('ff_cardName', value);
  }

  void deleteCardName() {
    secureStorage.delete(key: 'ff_cardName');
  }

  String _zipCode = '';
  String get zipCode => _zipCode;
  set zipCode(String value) {
    _zipCode = value;
    secureStorage.setString('ff_zipCode', value);
  }

  void deleteZipCode() {
    secureStorage.delete(key: 'ff_zipCode');
  }

  int _cart = 0;
  int get cart => _cart;
  set cart(int value) {
    _cart = value;
    secureStorage.setInt('ff_cart', value);
  }

  void deleteCart() {
    secureStorage.delete(key: 'ff_cart');
  }

  bool _connected = false;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  String _phone = '';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    secureStorage.setString('ff_phone', value);
  }

  void deletePhone() {
    secureStorage.delete(key: 'ff_phone');
  }

  dynamic _userConnecte;
  dynamic get userConnecte => _userConnecte;
  set userConnecte(dynamic value) {
    _userConnecte = value;
    secureStorage.setString('ff_userConnecte', jsonEncode(value));
  }

  void deleteUserConnecte() {
    secureStorage.delete(key: 'ff_userConnecte');
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    secureStorage.setString('ff_accessToken', value);
  }

  void deleteAccessToken() {
    secureStorage.delete(key: 'ff_accessToken');
  }

  List<dynamic> _carts = [];
  List<dynamic> get carts => _carts;
  set carts(List<dynamic> value) {
    _carts = value;
    secureStorage.setStringList(
        'ff_carts', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteCarts() {
    secureStorage.delete(key: 'ff_carts');
  }

  void addToCarts(dynamic value) {
    carts.add(value);
    secureStorage.setStringList(
        'ff_carts', _carts.map((x) => jsonEncode(x)).toList());
  }

  void removeFromCarts(dynamic value) {
    carts.remove(value);
    secureStorage.setStringList(
        'ff_carts', _carts.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromCarts(int index) {
    carts.removeAt(index);
    secureStorage.setStringList(
        'ff_carts', _carts.map((x) => jsonEncode(x)).toList());
  }

  void updateCartsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    carts[index] = updateFn(_carts[index]);
    secureStorage.setStringList(
        'ff_carts', _carts.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInCarts(int index, dynamic value) {
    carts.insert(index, value);
    secureStorage.setStringList(
        'ff_carts', _carts.map((x) => jsonEncode(x)).toList());
  }

  dynamic _adresse;
  dynamic get adresse => _adresse;
  set adresse(dynamic value) {
    _adresse = value;
    secureStorage.setString('ff_adresse', jsonEncode(value));
  }

  void deleteAdresse() {
    secureStorage.delete(key: 'ff_adresse');
  }

  List<dynamic> _favorites = [];
  List<dynamic> get favorites => _favorites;
  set favorites(List<dynamic> value) {
    _favorites = value;
    secureStorage.setStringList(
        'ff_favorites', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteFavorites() {
    secureStorage.delete(key: 'ff_favorites');
  }

  void addToFavorites(dynamic value) {
    favorites.add(value);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => jsonEncode(x)).toList());
  }

  void removeFromFavorites(dynamic value) {
    favorites.remove(value);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromFavorites(int index) {
    favorites.removeAt(index);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => jsonEncode(x)).toList());
  }

  void updateFavoritesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    favorites[index] = updateFn(_favorites[index]);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInFavorites(int index, dynamic value) {
    favorites.insert(index, value);
    secureStorage.setStringList(
        'ff_favorites', _favorites.map((x) => jsonEncode(x)).toList());
  }

  dynamic _mode;
  dynamic get mode => _mode;
  set mode(dynamic value) {
    _mode = value;
    secureStorage.setString('ff_mode', jsonEncode(value));
  }

  void deleteMode() {
    secureStorage.delete(key: 'ff_mode');
  }

  final _adsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> ads({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _adsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAdsCache() => _adsManager.clear();
  void clearAdsCacheKey(String? uniqueKey) =>
      _adsManager.clearRequest(uniqueKey);

  final _addressesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> addresses({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _addressesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAddressesCache() => _addressesManager.clear();
  void clearAddressesCacheKey(String? uniqueKey) =>
      _addressesManager.clearRequest(uniqueKey);

  final _modePaiementsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> modePaiements({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _modePaiementsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearModePaiementsCache() => _modePaiementsManager.clear();
  void clearModePaiementsCacheKey(String? uniqueKey) =>
      _modePaiementsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
