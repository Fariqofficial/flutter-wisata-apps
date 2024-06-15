// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderItemProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String paymentMethod, List<OrderItem> orders)
        addPaymentMethod,
    required TResult Function(int nominal) addNominalPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult? Function(int nominal)? addNominalPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult Function(int nominal)? addNominalPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPayment value) addPaymentMethod,
    required TResult Function(_AddNominalPayment value) addNominalPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPayment value)? addPaymentMethod,
    TResult? Function(_AddNominalPayment value)? addNominalPayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPayment value)? addPaymentMethod,
    TResult Function(_AddNominalPayment value)? addNominalPayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemProductsEventCopyWith<$Res> {
  factory $OrderItemProductsEventCopyWith(OrderItemProductsEvent value,
          $Res Function(OrderItemProductsEvent) then) =
      _$OrderItemProductsEventCopyWithImpl<$Res, OrderItemProductsEvent>;
}

/// @nodoc
class _$OrderItemProductsEventCopyWithImpl<$Res,
        $Val extends OrderItemProductsEvent>
    implements $OrderItemProductsEventCopyWith<$Res> {
  _$OrderItemProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$OrderItemProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrderItemProductsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String paymentMethod, List<OrderItem> orders)
        addPaymentMethod,
    required TResult Function(int nominal) addNominalPayment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult? Function(int nominal)? addNominalPayment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult Function(int nominal)? addNominalPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPayment value) addPaymentMethod,
    required TResult Function(_AddNominalPayment value) addNominalPayment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPayment value)? addPaymentMethod,
    TResult? Function(_AddNominalPayment value)? addNominalPayment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPayment value)? addPaymentMethod,
    TResult Function(_AddNominalPayment value)? addNominalPayment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderItemProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddPaymentImplCopyWith<$Res> {
  factory _$$AddPaymentImplCopyWith(
          _$AddPaymentImpl value, $Res Function(_$AddPaymentImpl) then) =
      __$$AddPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentMethod, List<OrderItem> orders});
}

/// @nodoc
class __$$AddPaymentImplCopyWithImpl<$Res>
    extends _$OrderItemProductsEventCopyWithImpl<$Res, _$AddPaymentImpl>
    implements _$$AddPaymentImplCopyWith<$Res> {
  __$$AddPaymentImplCopyWithImpl(
      _$AddPaymentImpl _value, $Res Function(_$AddPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
    Object? orders = null,
  }) {
    return _then(_$AddPaymentImpl(
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$AddPaymentImpl implements _AddPayment {
  const _$AddPaymentImpl(this.paymentMethod, final List<OrderItem> orders)
      : _orders = orders;

  @override
  final String paymentMethod;
  final List<OrderItem> _orders;
  @override
  List<OrderItem> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderItemProductsEvent.addPaymentMethod(paymentMethod: $paymentMethod, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPaymentImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, paymentMethod, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPaymentImplCopyWith<_$AddPaymentImpl> get copyWith =>
      __$$AddPaymentImplCopyWithImpl<_$AddPaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String paymentMethod, List<OrderItem> orders)
        addPaymentMethod,
    required TResult Function(int nominal) addNominalPayment,
  }) {
    return addPaymentMethod(paymentMethod, orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult? Function(int nominal)? addNominalPayment,
  }) {
    return addPaymentMethod?.call(paymentMethod, orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult Function(int nominal)? addNominalPayment,
    required TResult orElse(),
  }) {
    if (addPaymentMethod != null) {
      return addPaymentMethod(paymentMethod, orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPayment value) addPaymentMethod,
    required TResult Function(_AddNominalPayment value) addNominalPayment,
  }) {
    return addPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPayment value)? addPaymentMethod,
    TResult? Function(_AddNominalPayment value)? addNominalPayment,
  }) {
    return addPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPayment value)? addPaymentMethod,
    TResult Function(_AddNominalPayment value)? addNominalPayment,
    required TResult orElse(),
  }) {
    if (addPaymentMethod != null) {
      return addPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _AddPayment implements OrderItemProductsEvent {
  const factory _AddPayment(
          final String paymentMethod, final List<OrderItem> orders) =
      _$AddPaymentImpl;

  String get paymentMethod;
  List<OrderItem> get orders;
  @JsonKey(ignore: true)
  _$$AddPaymentImplCopyWith<_$AddPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNominalPaymentImplCopyWith<$Res> {
  factory _$$AddNominalPaymentImplCopyWith(_$AddNominalPaymentImpl value,
          $Res Function(_$AddNominalPaymentImpl) then) =
      __$$AddNominalPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int nominal});
}

/// @nodoc
class __$$AddNominalPaymentImplCopyWithImpl<$Res>
    extends _$OrderItemProductsEventCopyWithImpl<$Res, _$AddNominalPaymentImpl>
    implements _$$AddNominalPaymentImplCopyWith<$Res> {
  __$$AddNominalPaymentImplCopyWithImpl(_$AddNominalPaymentImpl _value,
      $Res Function(_$AddNominalPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nominal = null,
  }) {
    return _then(_$AddNominalPaymentImpl(
      null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddNominalPaymentImpl implements _AddNominalPayment {
  const _$AddNominalPaymentImpl(this.nominal);

  @override
  final int nominal;

  @override
  String toString() {
    return 'OrderItemProductsEvent.addNominalPayment(nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNominalPaymentImpl &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nominal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNominalPaymentImplCopyWith<_$AddNominalPaymentImpl> get copyWith =>
      __$$AddNominalPaymentImplCopyWithImpl<_$AddNominalPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String paymentMethod, List<OrderItem> orders)
        addPaymentMethod,
    required TResult Function(int nominal) addNominalPayment,
  }) {
    return addNominalPayment(nominal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult? Function(int nominal)? addNominalPayment,
  }) {
    return addNominalPayment?.call(nominal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String paymentMethod, List<OrderItem> orders)?
        addPaymentMethod,
    TResult Function(int nominal)? addNominalPayment,
    required TResult orElse(),
  }) {
    if (addNominalPayment != null) {
      return addNominalPayment(nominal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPayment value) addPaymentMethod,
    required TResult Function(_AddNominalPayment value) addNominalPayment,
  }) {
    return addNominalPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPayment value)? addPaymentMethod,
    TResult? Function(_AddNominalPayment value)? addNominalPayment,
  }) {
    return addNominalPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPayment value)? addPaymentMethod,
    TResult Function(_AddNominalPayment value)? addNominalPayment,
    required TResult orElse(),
  }) {
    if (addNominalPayment != null) {
      return addNominalPayment(this);
    }
    return orElse();
  }
}

abstract class _AddNominalPayment implements OrderItemProductsEvent {
  const factory _AddNominalPayment(final int nominal) = _$AddNominalPaymentImpl;

  int get nominal;
  @JsonKey(ignore: true)
  _$$AddNominalPaymentImplCopyWith<_$AddNominalPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderItemProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemProductsStateCopyWith<$Res> {
  factory $OrderItemProductsStateCopyWith(OrderItemProductsState value,
          $Res Function(OrderItemProductsState) then) =
      _$OrderItemProductsStateCopyWithImpl<$Res, OrderItemProductsState>;
}

/// @nodoc
class _$OrderItemProductsStateCopyWithImpl<$Res,
        $Val extends OrderItemProductsState>
    implements $OrderItemProductsStateCopyWith<$Res> {
  _$OrderItemProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderItemProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderItemProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)
        success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderItemProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrderItemProductsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderItemProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderItemProductsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderItem> orders,
      int totalQty,
      int totalPrice,
      int nominalPayment,
      String paymentMethod,
      int cashierId,
      String cashierName});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OrderItemProductsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? totalQty = null,
    Object? totalPrice = null,
    Object? nominalPayment = null,
    Object? paymentMethod = null,
    Object? cashierId = null,
    Object? cashierName = null,
  }) {
    return _then(_$SuccessImpl(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      null == nominalPayment
          ? _value.nominalPayment
          : nominalPayment // ignore: cast_nullable_to_non_nullable
              as int,
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      null == cashierId
          ? _value.cashierId
          : cashierId // ignore: cast_nullable_to_non_nullable
              as int,
      null == cashierName
          ? _value.cashierName
          : cashierName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      final List<OrderItem> orders,
      this.totalQty,
      this.totalPrice,
      this.nominalPayment,
      this.paymentMethod,
      this.cashierId,
      this.cashierName)
      : _orders = orders;

  final List<OrderItem> _orders;
  @override
  List<OrderItem> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final int totalQty;
  @override
  final int totalPrice;
  @override
  final int nominalPayment;
  @override
  final String paymentMethod;
  @override
  final int cashierId;
  @override
  final String cashierName;

  @override
  String toString() {
    return 'OrderItemProductsState.success(orders: $orders, totalQty: $totalQty, totalPrice: $totalPrice, nominalPayment: $nominalPayment, paymentMethod: $paymentMethod, cashierId: $cashierId, cashierName: $cashierName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.nominalPayment, nominalPayment) ||
                other.nominalPayment == nominalPayment) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.cashierId, cashierId) ||
                other.cashierId == cashierId) &&
            (identical(other.cashierName, cashierName) ||
                other.cashierName == cashierName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orders),
      totalQty,
      totalPrice,
      nominalPayment,
      paymentMethod,
      cashierId,
      cashierName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)
        success,
    required TResult Function(String message) error,
  }) {
    return success(orders, totalQty, totalPrice, nominalPayment, paymentMethod,
        cashierId, cashierName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(orders, totalQty, totalPrice, nominalPayment,
        paymentMethod, cashierId, cashierName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(orders, totalQty, totalPrice, nominalPayment,
          paymentMethod, cashierId, cashierName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements OrderItemProductsState {
  const factory _Success(
      final List<OrderItem> orders,
      final int totalQty,
      final int totalPrice,
      final int nominalPayment,
      final String paymentMethod,
      final int cashierId,
      final String cashierName) = _$SuccessImpl;

  List<OrderItem> get orders;
  int get totalQty;
  int get totalPrice;
  int get nominalPayment;
  String get paymentMethod;
  int get cashierId;
  String get cashierName;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OrderItemProductsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OrderItemProductsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<OrderItem> orders,
            int totalQty,
            int totalPrice,
            int nominalPayment,
            String paymentMethod,
            int cashierId,
            String cashierName)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OrderItemProductsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
