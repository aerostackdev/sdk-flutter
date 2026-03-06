//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_move_request.g.dart';

/// StorageMoveRequest
///
/// Properties:
/// * [sourceKey] 
/// * [destKey] 
@BuiltValue()
abstract class StorageMoveRequest implements Built<StorageMoveRequest, StorageMoveRequestBuilder> {
  @BuiltValueField(wireName: r'sourceKey')
  String get sourceKey;

  @BuiltValueField(wireName: r'destKey')
  String get destKey;

  StorageMoveRequest._();

  factory StorageMoveRequest([void updates(StorageMoveRequestBuilder b)]) = _$StorageMoveRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageMoveRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageMoveRequest> get serializer => _$StorageMoveRequestSerializer();
}

class _$StorageMoveRequestSerializer implements PrimitiveSerializer<StorageMoveRequest> {
  @override
  final Iterable<Type> types = const [StorageMoveRequest, _$StorageMoveRequest];

  @override
  final String wireName = r'StorageMoveRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageMoveRequest object, {
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
    StorageMoveRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageMoveRequestBuilder result,
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
  StorageMoveRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageMoveRequestBuilder();
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

