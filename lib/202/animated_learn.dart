import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  // body: Text('data',style: context.textTheme().titleMedium,),
  late bool _isVisible = false;
  late bool _isOpacity = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration: _DurationItems.durationLow);
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _changeVisible();
        controller.animateTo(_isVisible ? 1 : 0);
      },),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              opacity: _isOpacity ? 1 : 0 ,
              duration: _DurationItems.durationLow,
              child: const Text('data')),
            trailing: IconButton(
              icon: const Icon(Icons.precision_manufacturing_rounded), 
              onPressed: () { 
                _changeOpacity();
               },
              ),
          ),

          AnimatedDefaultTextStyle(
            style: (_isVisible ? context.textTheme().displayLarge :context.textTheme().titleMedium) ?? const TextStyle(), 
            duration: _DurationItems.durationLow,
            child: const Text('a')),

          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),

          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.2,
            width: (MediaQuery.of(context).size.height) * 0.2,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),),

          const Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(top: 20,
                curve: Curves.elasticOut,
                duration: _DurationItems.durationLow, 
                child: Text('data'))
              ],
            ),
          ),

          Expanded(
            child: AnimatedList(itemBuilder: (context, index, animation) {
              return const Text('data');
            },),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
      duration: _DurationItems.durationLow,
    );
  }
}

extension BuildContextExtensions on BuildContext{
  TextTheme textTheme(){
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);  
}