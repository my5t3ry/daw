"use strict";

ui.setFilesWidth = function( wpx ) {
	ui.jqFiles.css( "width", wpx );
	ui.filesWidth = wpx = ui.jqFiles.outerWidth();
	ui.resize();
	ui.jqGrid.css( "left", wpx );
	ui.jqVisual.css( "width", wpx + ui.trackNamesWidth );
	ui.jqMenu.css( "left", wpx + ui.trackNamesWidth );
};
