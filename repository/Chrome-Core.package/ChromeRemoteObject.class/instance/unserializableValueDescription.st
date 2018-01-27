describing
unserializableValueDescription
	<magritteDescription>
	^ MANumberDescription new
		label: 'Unserializable Value';
		accessor: #unserializableValue;
		jsonName: 'unserializableValue';
		beOptional;
		yourself