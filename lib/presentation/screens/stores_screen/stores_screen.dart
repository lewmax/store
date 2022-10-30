import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_store/application/auth/user/users_watcher/users_watcher_bloc.dart';
import 'package:multi_store/injection.dart';

import '../../core/app_router.gr.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stores',
            style: TextStyle(color: Colors.black, fontSize: 22)),
        elevation: 0,
        backgroundColor: Colors.blueGrey.shade100,
      ),
      body: BlocBuilder<UsersWatcherBloc, UsersWatcherState>(
        bloc: getIt<UsersWatcherBloc>()
          ..add(const UsersWatcherEvent.watchUsers()),
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) => GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
              ),
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                final store = state.users[index];
                return InkWell(
                  onTap: () {
                    getIt<AppRouter>().push(
                      StoreScreenRoute(storeId: store.id.getOrCrash()),
                    );
                  },
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/inapp/store.jpg'),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 10,
                            height: 47,
                            width: 100,
                            child: Image.network(
                              store.imageUrl.getOrCrash(),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        store.fullName.getOrCrash().toLowerCase(),
                        style: const TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                );
              },
            ),
            loadFailure: (state) => Text(
              state.usersFailure.maybeMap(
                  insufficientPermissions: (_) => 'Insufficient Permissions',
                  orElse: () => 'Unexpected issue'),
            ),
          );
        },
      ),
    );
  }
}
