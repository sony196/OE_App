import 'package:flutter/material.dart';

class startup extends StatefulWidget {
  const startup({Key? key}) : super(key: key);

  @override
  State<startup> createState() => _startupState();
}

class _startupState extends State<startup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Syllabus",
          style: TextStyle(
            fontFamily: 'Finlandica',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(padding: EdgeInsets.all(15.0), children: [
        Text(
          "Start-up opportunities",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Finlandica',
          ),
        ),
        Divider(color: Colors.black),
        Divider(color: Colors.black),
        Text(
          " The New Industrial Revolution - The Big Idea- Generate Ideas with Brainstorming- Business Start-up - Ideation- Venture Choices - The Rise of The start-up Economy - The Six Forces of Change- The Start-up Equation- The Entrepreneurial Ecosystem -Entrepreneurship in India. Government Initiatives.",
          style: TextStyle(fontSize: 18.0),
        ),
        Divider(),
        Text(
          "Start-up Capital Requirements",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Finlandica',
          ),
        ),
        Divider(color: Colors.black),
        Divider(color: Colors.black),
        Text(
          " Identifying Start-up capital Resource requirements - estimating Start up cash requirements Develop financial assumptions- Constructing a Process Map Positioning the venture in the value chain - Launch strategy to reduce risks- Start-up financing metrics.",
          style: TextStyle(fontSize: 18.0),
        ),
        Divider(),
        Text(
          "Intrapreneurship",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Finlandica'),
        ),
        Divider(color: Colors.black),
        Divider(color: Colors.black),
        Text(
          "Definition, Characteristics Entrepreneurship vs Intrapreneurship Social Intrapreneurship: Definition, Characteristics Impact of Intrapreneurship on corporate performance - Innovation and Intrapreneurship - Theories of Intrapreneurship - Bottleneck of Intrapreneurship",
          style: TextStyle(fontSize: 18.0),
        ),
        Divider(),
        Text("Legal Environment & Starting-up Financial Issues",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Finlandica')),
        Divider(color: Colors.black),
        Divider(color: Colors.black),
        Text(
          "The Legal Environment- Approval for New Ventures- Taxes or duties payable for new ventures - Feasibility Analysis - The cost and process of raising capital Unique funding issues of a high-tech ventures Funding with Equity - Financing with Debt Funding start-ups with bootstrapping- crowd funding- strategic alliances.",
          style: TextStyle(fontSize: 18.0),
        ),
        Divider(),
        Text(
          "Start-up Survival and Growth",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Finlandica'),
        ),
        Divider(color: Colors.black),
        Divider(color: Colors.black),
        Text(
          "Stages of growth in a new venture- Growing with the market-Growing within the industry- Venture life patterns- Reasons for new venture failures- Scaling Ventures preparing for change - Leadership succession. Support for growth and sustainability of the venture.",
          style: TextStyle(fontSize: 18.0),
        ),
      ]),
    );
  }
}
