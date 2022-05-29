import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider_sample/data/postal_code.dart';
import 'package:future_provider_sample/main_logic.dart';

// ロジック
final _logicProvider = Provider<Logic>((ref) => Logic());
// 郵便番号
final _postalcodeProvider = StateProvider<String>((ref) => '');
// 取得された住所の情報
AutoDisposeFutureProviderFamily<PostalCode, String> _apiFamilyProvider =
    FutureProvider.autoDispose
        .family<PostalCode, String>((ref, postalcode) async {
  Logic logic = ref.watch(_logicProvider);

  if (!logic.willProceed(postalcode)) {
    return PostalCode.empty;
  }

  return await logic.getPostalCode(postalcode);
});

class MainPageVM {
  late final WidgetRef _ref;

  String get postalcode => _ref.watch(_postalcodeProvider);

  AsyncValue<PostalCode> postalCodeWithFamily(String postcode) =>
      _ref.watch(_apiFamilyProvider(postalcode));

  void setRef(WidgetRef ref) {
    _ref = ref;
  }

  void onPostalCodeChanged(String postalcode) {
    _ref.read(_postalcodeProvider.notifier).update((state) => postalcode);
  }
}
