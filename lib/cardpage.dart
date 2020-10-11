import 'package:baslangic/klasikler.dart';
import 'package:flutter/material.dart';

class cardpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "New Task",
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
String url = 'https://www.google.com/search?q=edebiyat+nam%C4%B1k+kemal&tbm=isch&ved=2ahUKEwi459epuKfsAhUNrhoKHTLsCukQ2-cCegQIABAA&oq=edebiyat+nam%C4%B1k+kemal&gs_lcp=CgNpbWcQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjoECAAQQzoCCAA6BAgAEB46BggAEAUQHlDLGljYJmCwLGgAcAB4AYAB3AKIAdYPkgEHMC41LjMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=702AX_izJ43carLYq8gO&bih=667&biw=1366#imgrc=UXdyceRxsM12uM';
class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://www.google.com/search?q=edebiyat+nam%C4%B1k+kemal&tbm=isch&ved=2ahUKEwi459epuKfsAhUNrhoKHTLsCukQ2-cCegQIABAA&oq=edebiyat+nam%C4%B1k+kemal&gs_lcp=CgNpbWcQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjoECAAQQzoCCAA6BAgAEB46BggAEAUQHlDLGljYJmCwLGgAcAB4AYAB3AKIAdYPkgEHMC41LjMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=702AX_izJ43carLYq8gO&bih=667&biw=1366#imgrc=UXdyceRxsM12uM")),
                        title: Text('KLASİK'),
                        subtitle: Text('Tolstoy'),



                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Klasikler'),
                      ),
                    ],
                  )

                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Card(
                  child:Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading:  CircleAvatar(
                            backgroundImage: NetworkImage("https://www.google.com/search?q=edebiyat+nam%C4%B1k+kemal&tbm=isch&ved=2ahUKEwi459epuKfsAhUNrhoKHTLsCukQ2-cCegQIABAA&oq=edebiyat+nam%C4%B1k+kemal&gs_lcp=CgNpbWcQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjoECAAQQzoCCAA6BAgAEB46BggAEAUQHlDLGljYJmCwLGgAcAB4AYAB3AKIAdYPkgEHMC41LjMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=702AX_izJ43carLYq8gO&bih=667&biw=1366#imgrc=UXdyceRxsM12uM")),
                        title: Text('EDEBİYAT'),
                        subtitle: Text('Namık Kemal'),
                      ),
                      FlatButton(
                        textColor: const Color(0xFF6200EE),
                        onPressed: () {
                          // Perform some action
                        },
                        child: const Text('Edebiler'),
                      ),
                    ],
                  )

                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Card(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://www.google.com/search?q=edebiyat+nam%C4%B1k+kemal&tbm=isch&ved=2ahUKEwi459epuKfsAhUNrhoKHTLsCukQ2-cCegQIABAA&oq=edebiyat+nam%C4%B1k+kemal&gs_lcp=CgNpbWcQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjoECAAQQzoCCAA6BAgAEB46BggAEAUQHlDLGljYJmCwLGgAcAB4AYAB3AKIAdYPkgEHMC41LjMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=702AX_izJ43carLYq8gO&bih=667&biw=1366#imgrc=UXdyceRxsM12uM")),
                          title: Text('TARİH'),
                          subtitle: Text('İlber Ortaylı'),
                        ),
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('Tarihler'),
                        ),
                      ],
                    )

                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Card(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading:  CircleAvatar(
                              backgroundImage: NetworkImage("https://www.google.com/search?q=edebiyat+nam%C4%B1k+kemal&tbm=isch&ved=2ahUKEwi459epuKfsAhUNrhoKHTLsCukQ2-cCegQIABAA&oq=edebiyat+nam%C4%B1k+kemal&gs_lcp=CgNpbWcQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjoECAAQQzoCCAA6BAgAEB46BggAEAUQHlDLGljYJmCwLGgAcAB4AYAB3AKIAdYPkgEHMC41LjMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=702AX_izJ43carLYq8gO&bih=667&biw=1366#imgrc=UXdyceRxsM12uM")),
                          title: Text('BİLİM'),
                          subtitle: Text('Einstein'),
                        ),
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            // Perform some action
                          },
                          child: const Text('Bilimsel'),
                        ),
                      ],
                    )

                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Card(
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://www.google.com/search?q=edebiyat+nam%C4%B1k+kemal&tbm=isch&ved=2ahUKEwi459epuKfsAhUNrhoKHTLsCukQ2-cCegQIABAA&oq=edebiyat+nam%C4%B1k+kemal&gs_lcp=CgNpbWcQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjoECAAQQzoCCAA6BAgAEB46BggAEAUQHlDLGljYJmCwLGgAcAB4AYAB3AKIAdYPkgEHMC41LjMuMpgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=702AX_izJ43carLYq8gO&bih=667&biw=1366#imgrc=UXdyceRxsM12uM")),
                          title: Text('SANAT'),
                          subtitle: Text('Kimdorland'),
                        ),
                        FlatButton(
                          textColor: const Color(0xFF6200EE),
                          onPressed: () {
                            new klasikler();
                          },
                          child: const Text('Sanatsal'),
                        ),
                      ],
                    )

                )),
          ],
        ),
      ),
    );
  }
}
