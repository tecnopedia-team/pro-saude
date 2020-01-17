//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.page.dart';


void _navAbout(BuildContext context) {
  Navigator.push(
      context, new MaterialPageRoute(builder: (context) => new AboutPage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.blueAccent,
        title: const Text('Pro Saúde 2.0'),
        
        actions: <Widget>[
          Container(
            width: 60,
            child: FlatButton(
              child: Icon(
                Icons.search,
                color: Color(0xFFBABABA),
              ),
              onPressed: () => {},
            ),
          ),
        ],
      ),
      
  
      body: const WebView(
        initialUrl: 'http://prosaude.tecnopedia.com.br/bkp-02/html/ltr/vertical-menu-template/page-coming-soon.html',
        javaScriptMode: JavaScriptMode.unrestricted,
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName:Text('Emerson Silva'),
              accountEmail:Text('emerson@mail.com'),
              decoration: BoxDecoration(
              color: Colors.blueAccent),
              currentAccountPicture: new CircleAvatar(
                radius: 50.0,
              backgroundImage:
                    NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
               )
           
              ),
          
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             Divider(
                    height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Agendamento'),
              onTap: () {
                  Navigator.pop(context);
                },
            ),
              Divider(
                height: 2.0,
              ),
              ListTile(
              leading: Icon(Icons.search),
              title: Text('Atendimento'),
              onTap: () {
                  Navigator.pop(context);
                },
            ), Divider(
                height: 2.0,
              ),
              ListTile(
              leading: Icon(Icons.help),
              title: Text('Sobre'),
              onTap: () {
                  Navigator.of(context).pop();
                    _navAbout(context); 
                },
            ), Divider(
                height: 2.0,
              ),
              ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair com Segurança'),
              onTap: () async {
                const url = 'http://google.com.br';
                if (await canLaunch(url)) {
                  await launch(url, forceWebView: false);
                } else {
                    throw 'Could not launch $url';
                }
                  
                },
            ), Divider(
                height: 2.0,
              ),
          ]),
      ),
    );
    
  }
  
}

Widget cardItem() {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://baltaio.blob.core.windows.net/student-images/1edd5c50-bae9-11e8-8eb4-39de303632c1.jpg"),
          ),
          title: Text("Bruce Wayne"),
          subtitle: Text("09/05/2019 18:37"),
          trailing: Icon(Icons.more_vert),
        ),
        Container(
          child: Image.asset("assets/post-picture-001.png"),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
