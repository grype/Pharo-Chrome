describing
urlDescription
	<magritteDescription>
	^ MAStringDescription new
		label: 'URL';
		accessor: #url;
		jsonName: #url;
		beOptional;
		yourself