describing
columnNumberDescription
	<magritteDescription>
	^ MANumberDescription new
		label: 'Column Number';
		accessor: #columnNumber;
		jsonName: #columnNumber;
		beOptional;
		yourself