describing
scriptIdDescription
	<magritteDescription>
	^ MAStringDescription new
		label: 'Script ID';
		accessor: #scriptId;
		jsonName: #scriptId;
		beOptional;
		yourself