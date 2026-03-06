//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:aerostack_sdk/src/model/job_record.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'queue_list_jobs200_response.g.dart';

/// QueueListJobs200Response
///
/// Properties:
/// * [jobs] 
/// * [listComplete] 
/// * [cursor] 
@BuiltValue()
abstract class QueueListJobs200Response implements Built<QueueListJobs200Response, QueueListJobs200ResponseBuilder> {
  @BuiltValueField(wireName: r'jobs')
  BuiltList<JobRecord>? get jobs;

  @BuiltValueField(wireName: r'list_complete')
  bool? get listComplete;

  @BuiltValueField(wireName: r'cursor')
  String? get cursor;

  QueueListJobs200Response._();

  factory QueueListJobs200Response([void updates(QueueListJobs200ResponseBuilder b)]) = _$QueueListJobs200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QueueListJobs200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QueueListJobs200Response> get serializer => _$QueueListJobs200ResponseSerializer();
}

class _$QueueListJobs200ResponseSerializer implements PrimitiveSerializer<QueueListJobs200Response> {
  @override
  final Iterable<Type> types = const [QueueListJobs200Response, _$QueueListJobs200Response];

  @override
  final String wireName = r'QueueListJobs200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QueueListJobs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.jobs != null) {
      yield r'jobs';
      yield serializers.serialize(
        object.jobs,
        specifiedType: const FullType(BuiltList, [FullType(JobRecord)]),
      );
    }
    if (object.listComplete != null) {
      yield r'list_complete';
      yield serializers.serialize(
        object.listComplete,
        specifiedType: const FullType(bool),
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
    QueueListJobs200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QueueListJobs200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jobs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JobRecord)]),
          ) as BuiltList<JobRecord>;
          result.jobs.replace(valueDes);
          break;
        case r'list_complete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.listComplete = valueDes;
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
  QueueListJobs200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueueListJobs200ResponseBuilder();
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

