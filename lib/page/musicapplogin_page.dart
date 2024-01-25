
import 'package:flutter/material.dart';

class MusicAppLoginPage extends StatefulWidget {
  const MusicAppLoginPage({super.key});

  @override
  State<MusicAppLoginPage> createState() => _MusicAppLoginPageState();
}

class _MusicAppLoginPageState extends State<MusicAppLoginPage> {
  String email = "";
  String seNha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff70e7c1),
                Color(0xff84e8c2),
                Color(0xffe7efee),
                Color(0xffe7efed),
                Color(0xffe7f1ee),
                Color(0xfff2f6f5),
                Color(0xffe6eeeb),
                Color(0xffedf5f1),],
          tileMode: TileMode.mirror,),),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 55),
                Image.asset("assets/images/img_logo.png"),
                const SizedBox(height: 55),
                const Padding(
                  padding: EdgeInsets.only(right: 210),
                  child: Text(
                    "Acesse sua conta",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: TextField(
                    onChanged: (newEmail) {
                      print(newEmail);
                      email = newEmail;
                    },
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: TextField(
                    onChanged: (newSeNha) {
                      print(newSeNha);
                      seNha = newSeNha;
                    },
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 10),
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 210),
                  child: Text.rich(TextSpan(
                      text: 'Esqueci minha senha',
                      style: TextStyle(
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                      ))),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      child: const Text('Acessar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          )),
                    )),
                const SizedBox(height: 5),
                Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                      child: const Text('Não tem uma conta? Crie agora',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          )),
                    )),
                const SizedBox(
                  height: 50,
                ),
                const Text("ou"),
                Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/img_google.png",
                        width: 60,
                        height: 55,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Text('Acessar com o Gmail',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              )),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/img_apple.png",
                        width: 60,
                        height: 55,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Text('Acessar com o Apple ID',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              )),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/img_fb.png",
                        width: 60,
                        height: 55,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Text('Acessar com o Facebook',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                              )),
                        )),
                  ],
                ),
              ])),
    ));
  }
}
