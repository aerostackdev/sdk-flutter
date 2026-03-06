//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_wallet.g.dart';

/// TokenWallet
///
/// Properties:
/// * [balance] - Remaining token balance
/// * [totalConsumed] - Total tokens consumed to date
@BuiltValue()
abstract class TokenWallet implements Built<TokenWallet, TokenWalletBuilder> {
  /// Remaining token balance
  @BuiltValueField(wireName: r'balance')
  num? get balance;

  /// Total tokens consumed to date
  @BuiltValueField(wireName: r'total_consumed')
  num? get totalConsumed;

  TokenWallet._();

  factory TokenWallet([void updates(TokenWalletBuilder b)]) = _$TokenWallet;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenWalletBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenWallet> get serializer => _$TokenWalletSerializer();
}

class _$TokenWalletSerializer implements PrimitiveSerializer<TokenWallet> {
  @override
  final Iterable<Type> types = const [TokenWallet, _$TokenWallet];

  @override
  final String wireName = r'TokenWallet';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenWallet object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.balance != null) {
      yield r'balance';
      yield serializers.serialize(
        object.balance,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalConsumed != null) {
      yield r'total_consumed';
      yield serializers.serialize(
        object.totalConsumed,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenWallet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenWalletBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.balance = valueDes;
          break;
        case r'total_consumed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalConsumed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenWallet deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenWalletBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

