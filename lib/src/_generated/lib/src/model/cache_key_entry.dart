//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_key_entry.g.dart';

/// CacheKeyEntry
///
/// Properties:
/// * [key] - Cache key (project prefix stripped)
/// * [expiration] - Unix timestamp when this key expires (null if no TTL)
@BuiltValue()
abstract class CacheKeyEntry implements Built<CacheKeyEntry, CacheKeyEntryBuilder> {
  /// Cache key (project prefix stripped)
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// Unix timestamp when this key expires (null if no TTL)
  @BuiltValueField(wireName: r'expiration')
  int? get expiration;

  CacheKeyEntry._();

  factory CacheKeyEntry([void updates(CacheKeyEntryBuilder b)]) = _$CacheKeyEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheKeyEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheKeyEntry> get serializer => _$CacheKeyEntrySerializer();
}

class _$CacheKeyEntrySerializer implements PrimitiveSerializer<CacheKeyEntry> {
  @override
  final Iterable<Type> types = const [CacheKeyEntry, _$CacheKeyEntry];

  @override
  final String wireName = r'CacheKeyEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheKeyEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiration != null) {
      yield r'expiration';
      yield serializers.serialize(
        object.expiration,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheKeyEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheKeyEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'expiration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheKeyEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheKeyEntryBuilder();
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

