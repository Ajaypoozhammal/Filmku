import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/API/movieapi.dart';
import '../Repository/ModelClass/MovieModel.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  late MovieModel movieModel;
  MovieApi movieApi=MovieApi();
  MovieBloc() : super(MovieInitial()) {
    on<FetchMovie>((event, emit) async{
     emit(MovieBlocLoading());
     try{
       movieModel= await movieApi.getMovie();
       emit(MovieBlocLoaded());
     }
         catch(e){
       emit(MovieBlocError());
         }

    });
  }
}
