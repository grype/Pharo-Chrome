describing
errorDescription
	<magritteDescription>
	^ MAElementDescription new
		label: 'Error';
		accessor:
			(MAPluggableAccessor
				read: [ :obj | obj responseError ]
				write: [ :obj :val | obj responseError: (ChromeError newWithCode: (val at: 'code') message: (val at: 'message')) ]);
		jsonName: #error;
		jsonReader: ChromeJsonReader;
		yourself