import 'package:data_app/core/network/repo/data_hold.dart';
import 'package:data_app/core/network/serveses/web_serves.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget {
  final DataProcessor dataProcessor = DataProcessor();

  MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies List'),
      ),
      body: FutureBuilder<List<MovisApiModel>>(
        future: dataProcessor.gitdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No movies found.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final movie = snapshot.data![index];
                return ListTile(
                  leading: movie.posterURL != null
                      ? Image.network(movie.posterURL!)
                      : null,
                  title: Text(movie.title ?? 'No title'),
                  subtitle: Text('IMDB ID: ${movie.imdbId ?? 'N/A'}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
