import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Privacy extends StatelessWidget {
  const Privacy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Container(
                child: Text(
                    'Telecommunications company Orange has partnered with Polish blockchain company Smartkey to improve access controls to buildings and city services across Poland. Several city governments already use Orange’s IoT platform to remotely manage city services such as street lighting control. The partnership builds upon this technology by integrating Smartkey’s blockchain solution, which ensures that the data from the IoT sensors cannot be falsified after its creation. When combined, the two platforms will enable authorized city residents to gain quicker access to specific buildings and city and commercial services. Eighty cities will participate in the initial rollout.IBM has released an open dataset of coding samples, which demonstrate programming tasks, to help train AI systems to write code. The dataset, known as Project CodeNet, includes 14 million code samples in 55 different programming languages. Researchers at IBM have already begun using the dataset to train AI systems to write code and found that the systems achieved a 90 percent accuracy rate in most code classification and code similarity experiments.The more collective the harm, the less people are protected and the less visible it is. The more the harm is individual, the more visible its impacts are and the more people are legally protected. If a person is discriminated against because of protected characteristics such as their age, gender or ethnicity, it will be visible to them and they will hopefully be in a position to seek redress. When a person is discriminated against due to an algorithmic decision, it is likely to be less visible and, currently, hard to seek redress.All viruses, including SARS-CoV-2, the virus that causes COVID-19, change over time. Most changes have little to no impact on the virus’ properties. However, some changes may affect the virus’s properties, such as how easily it spreads, the associated disease severity, or the performance of vaccines, therapeutic medicines, diagnostic tools, or other public health and social measures.'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
