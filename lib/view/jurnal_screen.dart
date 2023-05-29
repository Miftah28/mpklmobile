import 'package:flutter/material.dart';


class Jurnal extends StatefulWidget {
  const Jurnal({Key? key}) : super(key: key);

  @override
  State<Jurnal> createState() => _JurnalState();
}

class _JurnalState extends State<Jurnal> {
  
  @override
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          // future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FutureBuilder(
                        // future: _name,
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else {
                            if (snapshot.hasData) {
                              print(snapshot.data);
                              return Text(snapshot.data!,
                                  style: TextStyle(fontSize: 18));
                            } else {
                              return Text("-", style: TextStyle(fontSize: 18));
                            }
                          }
                        }),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(color: Colors.red[800]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children: [
                          Text('Jurnal Harian',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text('07' ':' '30',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24)),
                                  Text("Masuk",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16))
                                ],
                              ),
                              Column(
                                children: [
                                  Text('16' ':' '00',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24)),
                                  Text("Pulang",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16))
                                ],
                              )
                            ],
                          )
                        ]),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("Riwayat Jurnal"),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) => Card(
                          child: ListTile(
                            leading: Text("tanggal"),
                            title: Row(children: [
                              SizedBox(width: 30,),
                              Column(
                                children: [
                                  Text("Jurnal",
                                      style: TextStyle(fontSize: 18)),
                                  Text("isi jurnal", style: TextStyle(fontSize: 14))
                                ],
                              ),
                              SizedBox(width: 100),
                              Column(
                                children: [
                                  Text("Diterima",
                                      style: TextStyle(fontSize: 18,color: Colors.greenAccent)),
                                ],
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
            }
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => SimpanPage()))
          //     .then((value) {
          //   setState(() {});
          // });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}