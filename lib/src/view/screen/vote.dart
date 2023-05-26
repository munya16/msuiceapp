import "package:flutter/material.dart";
import 'package:ice/src/view/screen/component/myvote/services.dart';
import 'package:ice/src/view/screen/component/myvote/vote_state.dart';
import "package:provider/provider.dart";
import 'package:loading/loading.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:ice/src/view/screen/component/myvote/vote_list.dart';
import 'package:ice/src/view/screen/component/myvote/vote_widget.dart';

class Vote extends StatefulWidget {
  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  int currentStep = 0;

  @override
  void initState() {
    super.initState();
    // loading votes
    Future.microtask(() {
      Provider.of<VoteState>(context, listen: false).clearState();
      Provider.of<VoteState>(context, listen: false).loadVoteList(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<VoteState>(builder: (builder, voteState, child) {
              return Container(
                child: Column(
                  children: <Widget>[
                    if (voteState.voteList == null)
                      Container(
                        color: Colors.lightBlue,
                        child: Center(
                          child: Loading(
                              indicator: BallPulseIndicator(), size: 100.0),
                        ),
                      ),
                    if (voteState.voteList != null)
                      Expanded(
                        child: Stepper(
                          type: StepperType.horizontal,
                          currentStep: currentStep,
                          steps: [
                            getStep(
                              title: 'Choose',
                              child: VoteListWidget(),
                              isActive: true,
                            ),
                            getStep(
                              title: 'Vote',
                              child: VoteWidget(),
                              isActive: currentStep >= 1 ? true : false,
                            ),
                          ],
                          onStepCancel: () {
                            if (currentStep <= 0) {
                              voteState.activeVote = null;
                            } else if (currentStep <= 1) {
                            //  voteState._selectedOptionInActiveVote == null;
                            }

                            setState(() {
                              currentStep =
                              (currentStep - 1) < 0 ? 0 : currentStep - 1;
                            });
                          },
                          onStepContinue: () {
                            if (currentStep == 0) {
                              if (step2Required(voteState)) {
                                setState(() {
                                  currentStep = (currentStep + 1) > 2
                                      ? 2
                                      : currentStep + 1;
                                });
                              } else {
                                showSnackBar(
                                    context, 'Please select a vote first!');
                              }
                            } else if (currentStep == 1) {
                              if (step3Required(voteState)) {
                                // submit vote
                                markMyVote(voteState);

                                // Go To Result Screen
                                Navigator.pushReplacementNamed(
                                    context, '/result');
                              } else {
                                showSnackBar(context, 'Please mark your vote!');
                              }
                            }
                          },
                        ),
                      ),
                  ],
                ),
              );
            })),
      ),
    );
  }

  bool step2Required(VoteState voteState) {
    if (voteState.activeVote == null) {
      return false;
    }

    return true;
  }

  bool step3Required(VoteState voteState) {
   // if (voteState._selectedOptionInActiveVote == null) {
      return false;
    }
   // return true;
  }

  void showSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        style: TextStyle(fontSize: 22),
      ),
    ));
  }

  Step getStep({
    required String title,
    required Widget child,
    bool isActive = false,
  }) {
    return Step(
      title: Text(title),
      content: child,
      isActive: isActive,
    );
  }

  void markMyVote(VoteState voteState) {
    final voteId = voteState.activeVote?.voteId;
    //final option = voteState._selectedOptionInActiveVote;

    //markVote(voteId!, option);
  }
//}
