import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authn_event.dart';
part 'authn_state.dart';

class AuthnBloc extends Bloc<AuthnEvent, AuthnState> {
  AuthnBloc() : super(AuthnInitial()) {
    on<AuthnEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
