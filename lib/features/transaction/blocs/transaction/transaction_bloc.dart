import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/transaction/transaction.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(TransactionState.initial()) {
    on<GetTransactionEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading));

        final service = await TransactionService.getAll(event.type);

        emit(state.copyWith(status: Status.success, transactions: service));
      } catch (e) {
        emit(state.copyWith(status: Status.failure, error: e.toString()));
      }
    });

    on<CreateTransactionEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.loading));

        final item = await TransactionService.insert(event.transaction);

        emit(
          state.copyWith(
            status: event.type == TypeEnum.paid ? Status.success : Status.apply,
            item: item,
          ),
        );
      } catch (e) {
        emit(state.copyWith(status: Status.failure, error: e.toString()));
      }
    });
  }
}
