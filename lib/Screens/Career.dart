import 'package:flutter/material.dart';
import 'package:lol_api/lol_api.dart' as RiotApi;

class Career extends StatefulWidget {
  const Career({Key? key}) : super(key: key);

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
  late Future<RiotApi.SummonerDTO> userDetails;

  Future<RiotApi.SummonerDTO> getCareer() async {
    const accountId = 'Móbý';
    // const accountId = 'nomming';
    // const accountId = 'sałt';

    final summoner = await RiotApi.SummonerV4.getSummonerBySummonerName(
        RiotApi.RegionValues.euw1, accountId);

    return summoner;
  }

  @override
  void initState() {
    super.initState();
    userDetails = getCareer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FutureBuilder<RiotApi.SummonerDTO>(
            future: userDetails,
            builder: (BuildContext context,
                AsyncSnapshot<RiotApi.SummonerDTO> snapshot) {
              return Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (!snapshot.hasData)
                        ? const Text(
                            "Unknown",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        : Text(
                            snapshot.data!.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 300,
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.grey[900]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                (!snapshot.hasData)
                                    ? const CircularProgressIndicator()
                                    : Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                20), // Image border
                                            child: SizedBox.fromSize(
                                              size: const Size.fromRadius(
                                                  48), // Image radius
                                              child: Image.network(
                                                  "https://ddragon.leagueoflegends.com/cdn/13.15.1/img/profileicon/${snapshot.data!.profileIconId}.png",
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          const Text(
                                            "Summoner: ",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            snapshot.data!.name,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
