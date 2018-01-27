describing
argumentValueDescription
	<magritteDescription>
	^ self argumentValueDescriptionClass new
		label: 'Argument Value';
		accessor: #argumentValue;
		jsonName: 'argumentValue';
		yourself