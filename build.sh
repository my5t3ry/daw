#!/bin/bash

declare -a HEADER=(
	'<!DOCTYPE html>'
	'<html lang="en">'
	'<head>'
	'<title>GridSound</title>'
	'<meta charset="UTF-8"/>'
	'<meta name="viewport" content="width=device-width, user-scalable=no"/>'
	'<meta name="description" content="A free and Open-Source DAW (digital audio workstation)"/>'
	'<meta name="google" content="notranslate"/>'
	'<meta property="og:type" content="website"/>'
	'<meta property="og:title" content="GridSound (an open-source digital audio workstation)"/>'
	'<meta property="og:url" content="https://gridsound.github.io/"/>'
	'<meta property="og:image" content="https://gridsound.github.io/assets/og-image.jpg"/>'
	'<meta property="og:image:width" content="800"/>'
	'<meta property="og:image:height" content="400"/>'
	'<meta name="theme-color" content="#3a5158"/>'
	'<link rel="manifest" href="manifest.json"/>'
	'<link rel="shortcut icon" href="assets/favicon.png"/>'
	'<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700|Oswald|Inconsolata|Unica+One">'
)

declare -a HEADEREND=(
	'</head>'
	'<body>'
	'<noscript>GridSound needs JavaScript to run</noscript>'
)

declare -a CSSfiles=(
	"gs-ui-components/gsuiMixer/gsuiMixer.css"
	"gs-ui-components/gsuiDragline/gsuiDragline.css"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.css"
	"gs-ui-components/gsuiPatternroll/gsuiPatternroll.css"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.css"
	"gs-ui-components/gsuiKeys/gsuiKeys.css"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.css"
	"gs-ui-components/gsuiPeriodicWave/gsuiPeriodicWave.css"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.css"
	"gs-ui-components/gsuiDotline/gsuiDotline.css"
	"gs-ui-components/gsuiPanels/gsuiPanels.css"
	"gs-ui-components/gsuiPopup/gsuiPopup.css"
	"gs-ui-components/gsuiSlider/gsuiSlider.css"
	"gs-ui-components/gsuiSliderGroup/gsuiSliderGroup.css"
	"gs-ui-components/gsuiTimeline/gsuiTimeline.css"
	"gs-ui-components/gsuiTrack/gsuiTrack.css"
	"src/css/root.css"
	"src/css/icon.css"
	"src/css/loading.css"
	"src/css/app.css"
	"src/css/popup.css"
	"src/css/pan-leftside.css"
	"src/css/pan-rightside.css"
	"src/css/pan-cloud.css"
	"src/css/pan-history.css"
	"src/css/pan-patterns.css"
	"src/css/pan-synth-pianoroll.css"
	"src/css/pan-synth.css"
	"src/css/pan-pianoroll.css"
	"src/css/pan-mixer.css"
	"src/css/cmp.css"
	"src/css/synth.css"
	"src/css/pattern.css"
	"src/css/version.css"
	"src/css/controls.css"
	"src/css/historyAction.css"
)

declare -a HTMLfiles=(
	"src/html/_loading.html"
	"src/html/_panels.html"
	"src/html/pan-cloud.html"
	"src/html/pan-local.html"
	"src/html/pan-history.html"
	"src/html/pan-patterns.html"
	"src/html/pan-maingrid.html"
	"src/html/pan-mixer.html"
	"src/html/pan-synth.html"
	"src/html/pan-pianoroll.html"
	"src/html/popup-auth.html"
	"src/html/popup-open.html"
	"src/html/popup-about.html"
	"src/html/popup-render.html"
	"src/html/popup-settings.html"
	"src/html/popup-shortcuts.html"
	"src/html/cmp.html"
	"src/html/synth.html"
	"src/html/pattern.html"
	"src/html/historyAction.html"
	"gs-ui-components/gsuiMixer/gsuiMixer.html"
	"gs-ui-components/gsuiDragline/gsuiDragline.html"
	"gs-ui-components/gsuiPatternroll/gsuiPatternroll.html"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.html"
	"gs-ui-components/gsuiKeys/gsuiKeys.html"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.html"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.html"
	"gs-ui-components/gsuiPopup/gsuiPopup.html"
	"gs-ui-components/gsuiSlider/gsuiSlider.html"
	"gs-ui-components/gsuiSliderGroup/gsuiSliderGroup.html"
	"gs-ui-components/gsuiTimeline/gsuiTimeline.html"
	"gs-ui-components/gsuiTrack/gsuiTrack.html"
	"gs-ui-components/gsuiTracklist/gsuiTracklist.html"
)

declare -a JSfilesProd=(
	"src/initServiceWorker.js"
)

declare -a JSfiles=(
	"daw-core/src/DAWCore.js"
	"daw-core/src/DAWCore.prototype.get.js"
	"daw-core/src/LocalStorage.js"
	"daw-core/src/Destination.js"
	"daw-core/src/History.js"
	"daw-core/src/History.prototype.nameAction.js"
	"daw-core/src/Pianoroll.js"
	"daw-core/src/Composition.js"
	"daw-core/src/Composition.epure.js"
	"daw-core/src/Composition.format.js"
	"daw-core/src/Composition.prototype.change.js"
	"daw-core/src/json/composition.js"
	"daw-core/src/json/synth.js"
	"daw-core/src/utils/uuid.js"
	"daw-core/src/utils/time.js"
	"daw-core/src/utils/trim2.js"
	"daw-core/src/utils/uniqueName.js"
	"daw-core/src/utils/composeUndo.js"
	"daw-core/src/utils/castToNumber.js"
	"daw-core/src/utils/objectIsEmpty.js"
	"daw-core/src/utils/objectDeepCopy.js"
	"daw-core/src/utils/objectDeepAssign.js"
	"daw-core/src/utils/objectDeepFreeze.js"
	"daw-core/src/actions/addCompositionsFromLocalStorage.js"
	"daw-core/src/actions/addNewComposition.js"
	"daw-core/src/actions/addComposition.js"
	"daw-core/src/actions/addCompositionByJSON.js"
	"daw-core/src/actions/addCompositionByBlob.js"
	"daw-core/src/actions/addCompositionByURL.js"
	"daw-core/src/actions/abortWAVExport.js"
	"daw-core/src/actions/liveChangeSynth.js"
	"daw-core/src/actions/exportCompositionToWAV.js"
	"daw-core/src/actions/exportCompositionToJSON.js"
	"daw-core/src/actions/changePatternSynth.js"
	"daw-core/src/actions/changePatternKeys.js"
	"daw-core/src/actions/deleteComposition.js"
	"daw-core/src/actions/closeComposition.js"
	"daw-core/src/actions/openComposition.js"
	"daw-core/src/actions/saveComposition.js"
	"daw-core/src/actions/newComposition.js"
	"daw-core/src/actions/removePattern.js"
	"daw-core/src/actions/clonePattern.js"
	"daw-core/src/actions/removeSynth.js"
	"daw-core/src/actions/openPattern.js"
	"daw-core/src/actions/namePattern.js"
	"daw-core/src/actions/newPattern.js"
	"daw-core/src/actions/openSynth.js"
	"daw-core/src/actions/nameSynth.js"
	"daw-core/src/actions/newSynth.js"

	"gs-ui-components/gsuiMixer/gsuiMixer.js"
	"gs-ui-components/gsuiDragline/gsuiDragline.js"
	"gs-ui-components/gsuiBeatlines/gsuiBeatlines.js"
	"gs-ui-components/gsuiBlocksManager/gsuiBlocksManager.js"
	"gs-ui-components/gsuiPatternroll/gsuiPatternroll.js"
	"gs-ui-components/gsuiPianoroll/gsuiPianoroll.js"
	"gs-ui-components/gsuiKeys/gsuiKeys.js"
	"gs-ui-components/gsuiOscillator/gsuiOscillator.js"
	"gs-ui-components/gsuiPeriodicWave/gsuiPeriodicWave.js"
	"gs-ui-components/gsuiSynthesizer/gsuiSynthesizer.js"
	"gs-ui-components/gsuiDotline/gsuiDotline.js"
	"gs-ui-components/gsuiPanels/gsuiPanels.js"
	"gs-ui-components/gsuiPopup/gsuiPopup.js"
	"gs-ui-components/gsuiRectMatrix/gsuiRectMatrix.js"
	"gs-ui-components/gsuiSlider/gsuiSlider.js"
	"gs-ui-components/gsuiSliderGroup/gsuiSliderGroup.js"
	"gs-ui-components/gsuiTimeline/gsuiTimeline.js"
	"gs-ui-components/gsuiTrack/gsuiTrack.js"
	"gs-ui-components/gsuiTracklist/gsuiTracklist.js"
	"gs-ui-components/gsuiSpectrum/gsuiSpectrum.js"

	"gs-webaudio-library/gswaEncodeWAV/gswaEncodeWAV.js"
	"gs-webaudio-library/gswaScheduler/gswaScheduler.js"
	"gs-webaudio-library/gswaSynth/gswaSynth.js"
	"gs-webaudio-library/gswaPeriodicWaves/gswaPeriodicWaves.js"

	"gs-api-client/gsapiClient.js"

	"src/ui/dom.js"
	"src/ui/loading.js"
	"src/ui/auth.js"
	"src/ui/drop.js"
	"src/ui/title.js"
	"src/ui/synth.js"
	"src/ui/mixer.js"
	"src/ui/cookie.js"
	"src/ui/synths.js"
	"src/ui/history.js"
	"src/ui/patterns.js"
	"src/ui/controls.js"
	"src/ui/keyboard.js"
	"src/ui/openPopup.js"
	"src/ui/pianoroll.js"
	"src/ui/aboutPopup.js"
	"src/ui/keysToRects.js"
	"src/ui/patternroll.js"
	"src/ui/renderPopup.js"
	"src/ui/compositions.js"
	"src/ui/settingsPopup.js"
	"src/ui/shortcutsPopup.js"
	"src/ui/compositionChanged.js"
	"src/ui/masterAnalyserInit.js"
	"src/run.js"
)

buildDev() {
	filename='index.html'
	echo "Build $filename"
	printf '%s\n' "${HEADER[@]}" > $filename;
	printf '<link rel="stylesheet" href="%s"/>\n' "${CSSfiles[@]}" >> $filename;
	printf '%s\n' "${HEADEREND[@]}" >> $filename;
	cat "${HTMLfiles[@]}" >> $filename
	echo '<script>function lg( a ) { return console.log.apply( console, arguments ), a; }</script>' >> $filename
	printf '<script src="%s"></script>\n' "${JSfiles[@]}" >> $filename;
	echo '</body>' >> $filename
	echo '</html>' >> $filename
}

buildMaster() {
	filename='index-gh-pages.html'
	echo "Build $filename"
	printf '%s\n' "${HEADER[@]}" > $filename;
	echo '<style>' >> $filename
	cat "${CSSfiles[@]}" | sed "s/..\/..\/assets/assets/g" >> $filename
	echo '</style>' >> $filename
	printf '%s\n' "${HEADEREND[@]}" >> $filename;
	cat "${HTMLfiles[@]}" >> $filename
	echo '<script>' >> $filename
	echo '"use strict";' >> $filename
	echo 'function lg( a ) { return console.log.apply( console, arguments ), a; }' >> $filename
	cat "${JSfiles[@]}" | grep -v '"use strict";' >> $filename
	echo '</script>' >> $filename
	echo '</body>' >> $filename
	echo '</html>' >> $filename
}

if [ $# -gt 0 ] && [ $1 = "gh-pages" ]
then
	buildMaster
else
	buildDev
fi
