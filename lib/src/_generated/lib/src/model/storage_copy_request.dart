//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_copy_request.g.dart';

/// StorageCopyRequest
///
/// Properties:
/// * [sourceKey] 
/// * [destKey] 
@BuiltValue()
abstract class StorageCopyRequest implements Built<StorageCopyRequest, StorageCopyRequestBuilder> {
  @BuiltValueField(wireName: r'sourceKey')
  String get sourceKey;

  @BuiltValueField(wireName: r'destKey')
  String get destKey;

  StorageCopyRequest._();

  factory StorageCopyRequest([void updates(StorageCopyRequestBuilder b)]) = _$StorageCopyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageCopyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageCopyRequest> get serializer => _$StorageCopyRequestSerializer();
}

class _$StorageCopyRequestSerializer implements PrimitiveSerializer<StorageCopyRequest> {
  @override
  final Iterable<Type> types = const [StorageCopyRequest, _$StorageCopyRequest];

  @override
  final String wireName = r'StorageCopyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageCopyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sourceKey';
    yield serializers.serialize(
      object.sourceKey,
      specifiedType: const FullType(String),
    );
    yield r'destKey';
    yield serializers.serialize(
      object.destKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageCopyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageCopyRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sourceKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceKey = valueDes;
          break;
        case r'destKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageCopyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageCopyRequestBuilder();
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

