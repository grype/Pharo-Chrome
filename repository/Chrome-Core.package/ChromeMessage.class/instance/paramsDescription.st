describing
paramsDescription
	<magritteDescription>
	^ MAToManyRelationDescription new
		label: 'Params';
		priority: 12;
		beOptional;
		accessor: #params;
		jsonName: 'params';
		yourself