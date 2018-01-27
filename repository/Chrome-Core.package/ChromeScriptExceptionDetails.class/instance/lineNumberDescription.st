describing
lineNumberDescription
	<magritteDescription>
	^ MANumberDescription new
		label: 'Line Number';
		accessor: #lineNumber;
		jsonName: #lineNumber;
		beOptional;
		yourself