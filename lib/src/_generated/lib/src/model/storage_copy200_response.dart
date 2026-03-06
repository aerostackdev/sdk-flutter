//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_copy200_response.g.dart';

/// StorageCopy200Response
///
/// Properties:
/// * [success] 
/// * [url] - CDN URL of the new file
@BuiltValue()
abstract class StorageCopy200Response implements Built<StorageCopy200Response, StorageCopy200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  /// CDN URL of the new file
  @BuiltValueField(wireName: r'url')
  String? get url;

  StorageCopy200Response._();

  factory StorageCopy200Response([void updates(StorageCopy200ResponseBuilder b)]) = _$StorageCopy200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StorageCopy200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StorageCopy200Response> get serializer => _$StorageCopy200ResponseSerializer();
}

class _$StorageCopy200ResponseSerializer implements PrimitiveSerializer<StorageCopy200Response> {
  @override
  final Iterable<Type> types = const [StorageCopy200Response, _$StorageCopy200Response];

  @override
  final String wireName = r'StorageCopy200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StorageCopy200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StorageCopy200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StorageCopy200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StorageCopy200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageCopy200ResponseBuilder();
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

