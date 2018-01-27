describing
exceptionDescription
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'exception';
		classes: { ChromeRemoteObject };
		accessor: #exception;
		jsonName: #exception;
		beOptional;
		yourself