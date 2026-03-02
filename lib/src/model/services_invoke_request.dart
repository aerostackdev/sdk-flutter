//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'services_invoke_request.g.dart';

/// ServicesInvokeRequest
///
/// Properties:
/// * [serviceName] 
/// * [data] 
@BuiltValue()
abstract class ServicesInvokeRequest implements Built<ServicesInvokeRequest, ServicesInvokeRequestBuilder> {
  @BuiltValueField(wireName: r'serviceName')
  String get serviceName;

  @BuiltValueField(wireName: r'data')
  BuiltMap<JsonObject?>? get data;

  ServicesInvokeRequest._();

  factory ServicesInvokeRequest([void updates(ServicesInvokeRequestBuilder b)]) = _$ServicesInvokeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServicesInvokeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServicesInvokeRequest> get serializer => _$ServicesInvokeRequestSerializer();
}

class _$ServicesInvokeRequestSerializer implements PrimitiveSerializer<ServicesInvokeRequest> {
  @override
  final Iterable<Type> types = const [ServicesInvokeRequest, _$ServicesInvokeRequest];

  @override
  final String wireName = r'ServicesInvokeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServicesInvokeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'serviceName';
    yield serializers.serialize(
      object.serviceName,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServicesInvokeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServicesInvokeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serviceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
          ) as BuiltMap<JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServicesInvokeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServicesInvokeRequestBuilder();
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

