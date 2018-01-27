describing
descriptionDescription
	<magritteDescription>
	^ MAStringDescription new
		label: 'Description';
		accessor: #description;
		jsonName: #description;
		beOptional;
		yourself