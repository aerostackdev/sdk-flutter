//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_list_request.g.dart';

/// StorageListRequest
///
/// Properties:
/// * [prefix] - Key prefix to filter by
/// * [limit] 
/// * [cursor] - Pagination cursor from previous response
@BuiltValue()
abstract class StorageListRequest implements Built<StorageListRequest, StorageListRequestBuilder> {
  /// Key prefix to filter by
  @BuiltValueField(wireName: r'prefix')
  String? get prefix;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  /// Pagination cursor from previous response
  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  StorageListRequest._();

  factory StorageListRequest([void updates(StorageListRequestBuilder b)]) = _$StorageListRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageListRequestBuilder b) => b
      ..limit = 100;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageListRequest> get serializer => _$StorageListRequestSerializer();
}

class _$StorageListRequestSerializer implements PrimitiveSerializer<StorageListRequest> {
  @override
  final Iterable<Type> types = const [StorageListRequest, _$StorageListRequest];

  @override
  final String wireName = r'StorageListRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageListRequest object, {
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
    StorageListRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageListRequestBuilder result,
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
  StorageListRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageListRequestBuilder();
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

