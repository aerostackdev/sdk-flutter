//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cache_list_request.g.dart';

/// CacheListRequest
///
/// Properties:
/// * [prefix] - Key prefix to filter by (e.g. \"users:\")
/// * [limit] - Max keys to return per page (default 100, max 1000)
/// * [cursor] - Pagination cursor from previous response
@BuiltValue()
abstract class CacheListRequest implements Built<CacheListRequest, CacheListRequestBuilder> {
  /// Key prefix to filter by (e.g. \"users:\")
  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  /// Max keys to return per page (default 100, max 1000)
  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Pagination cursor from previous response
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  CacheListRequest._();

  factory CacheListRequest([void updates(CacheListRequestBuilder b)]) = _$CacheListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CacheListRequestBuilder b) => b
      ..limit = 100;

  @BuiltValueSerializer(custom: true)
  static Serializer<CacheListRequest> get serializer => _$CacheListRequestSerializer();
}

class _$CacheListRequestSerializer implements PrimitiveSerializer<CacheListRequest> {
  @override
  final Iterable<Type> types = const [CacheListRequest, _$CacheListRequest];

  @override
  final String wireName = r'CacheListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CacheListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prefix != null) {
      yield r'prefix';
      yield serializers.serialize(
        object.prefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
    if (object.cursor != null) {
      yield r'cursor';
      yield serializers.serialize(
        object.cursor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CacheListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CacheListRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prefix = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        case r'cursor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cursor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CacheListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CacheListRequestBuilder();
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

