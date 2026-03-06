//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/job_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_get_job200_response.g.dart';

/// QueueGetJob200Response
///
/// Properties:
/// * [job] 
/// * [exists] 
@BuiltValue()
abstract class QueueGetJob200Response implements Built<QueueGetJob200Response, QueueGetJob200ResponseBuilder> {
  @BuiltValueField(wireName: r'job')
  JobRecord? get job;

  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  QueueGetJob200Response._();

  factory QueueGetJob200Response([void updates(QueueGetJob200ResponseBuilder b)]) = _$QueueGetJob200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueGetJob200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueGetJob200Response> get serializer => _$QueueGetJob200ResponseSerializer();
}

class _$QueueGetJob200ResponseSerializer implements PrimitiveSerializer<QueueGetJob200Response> {
  @override
  final Iterable<Type> types = const [QueueGetJob200Response, _$QueueGetJob200Response];

  @override
  final String wireName = r'QueueGetJob200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueGetJob200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.job != null) {
      yield r'job';
      yield serializers.serialize(
        object.job,
        specifiedType: const FullType.nullable(JobRecord),
      );
    }
    if (object.exists != null) {
      yield r'exists';
      yield serializers.serialize(
        object.exists,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QueueGetJob200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueGetJob200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'job':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JobRecord),
          ) as JobRecord?;
          if (valueDes == null) continue;
          result.job.replace(valueDes);
          break;
        case r'exists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.exists = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QueueGetJob200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueGetJob200ResponseBuilder();
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

