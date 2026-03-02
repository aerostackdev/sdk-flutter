//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_enqueue_request.g.dart';

/// QueueEnqueueRequest
///
/// Properties:
/// * [type] 
/// * [data] 
/// * [delay] - Delay in seconds before processing
@BuiltValue()
abstract class QueueEnqueueRequest implements Built<QueueEnqueueRequest, QueueEnqueueRequestBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'data')
  BuiltMap<JsonObject?>? get data;

  /// Delay in seconds before processing
  @BuiltValueField(wireName: r'delay')
  int? get delay;

  QueueEnqueueRequest._();

  factory QueueEnqueueRequest([void updates(QueueEnqueueRequestBuilder b)]) = _$QueueEnqueueRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueEnqueueRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueEnqueueRequest> get serializer => _$QueueEnqueueRequestSerializer();
}

class _$QueueEnqueueRequestSerializer implements PrimitiveSerializer<QueueEnqueueRequest> {
  @override
  final Iterable<Type> types = const [QueueEnqueueRequest, _$QueueEnqueueRequest];

  @override
  final String wireName = r'QueueEnqueueRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueEnqueueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
    );
    if (object.delay != null) {
      yield r'delay';
      yield serializers.serialize(
        object.delay,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueEnqueueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueEnqueueRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType.nullable(JsonObject)]),
          ) as BuiltMap<JsonObject?>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'delay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.delay = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueEnqueueRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueEnqueueRequestBuilder();
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

