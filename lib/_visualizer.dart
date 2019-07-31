import 'package:flutter/widgets.dart';
import 'package:lee_music/lee_music.dart';
import 'package:lee_music/_audio_visualizer.dart';


class Visualizer extends StatefulWidget {
	
	final Function(BuildContext context, List<int> fft) builder;
	
	Visualizer({
		this.builder,
	});
	
	@override
	_VisualizerState createState() => new _VisualizerState();
}

class _VisualizerState extends State<Visualizer> {
	
	AudioVisualizer visualizer;
	List<int> fft = const [];
	
	@override
	void initState() {
		super.initState();
		visualizer = LeeMusic.audioVisualizer()
			..activate()
			..addListener(
				fftCallback: (List<int> samples) {
					print('Got FFT samples: $samples');
					setState(() => fft = samples);
				}
			);
	}
	
	@override
	void dispose() {
		visualizer.dispose();
		super.dispose();
	}
	
	@override
	Widget build(BuildContext context) {
		return widget.builder(context, fft);
	}
}