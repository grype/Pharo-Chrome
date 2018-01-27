describing
idDescription
	<magritteDescription>
	^ MANumberDescription new
		label: 'ID';
		priority: 10;
		beRequired;
		accessor: #id;
		jsonName: 'id';
		yourself