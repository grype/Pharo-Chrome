describing
executionContextIdDescription
	<magritteDescription>
	^ MANumberDescription new
		label: 'Execution Context ID';
		accessor: #executionContextId;
		jsonName: #executionContextId;
		beOptional;
		yourself