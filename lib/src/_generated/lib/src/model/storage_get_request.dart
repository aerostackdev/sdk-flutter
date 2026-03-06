//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_get_request.g.dart';

/// StorageGetRequest
///
/// Properties:
/// * [key] 
@BuiltValue()
abstract class StorageGetRequest implements Built<StorageGetRequest, StorageGetRequestBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  StorageGetRequest._();

  factory StorageGetRequest([void updates(StorageGetRequestBuilder b)]) = _$StorageGetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageGetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageGetRequest> get serializer => _$StorageGetRequestSerializer();
}

class _$StorageGetRequestSerializer implements PrimitiveSerializer<StorageGetRequest> {
  @override
  final Iterable<Type> types = const [StorageGetRequest, _$StorageGetRequest];

  @override
  final String wireName = r'StorageGetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageGetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageGetRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageGetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageGetRequestBuilder();
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

