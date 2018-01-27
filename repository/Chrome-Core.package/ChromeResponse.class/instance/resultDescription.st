describing
resultDescription
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Result';
		classes: {ChromeResponseResult};
		accessor: (MAPluggableAccessor read: [ :obj | obj result ] write: [ :obj :val | obj result: val properties ]);
		jsonName: 'result';
		reference: pluggableResultDescription;
		jsonReader: ChromeJsonReader;
		yourself