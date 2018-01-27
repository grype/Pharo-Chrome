describing
objectClassNameDescription
	<magritteDescription>
	^ MAStringDescription new
		label: 'Class Name';
		accessor: #objectClassName;
		jsonName: #className;
		beOptional;
		yourself