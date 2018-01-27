describing
responseErrorDescription
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Response Error';
		classes: {Error};
		accessor:
			(MAPluggableAccessor
				read: [ :obj | obj responseError ]
				write: [ :obj :val | 
					obj
						responseError:
							(Error new
								messageText: val;
								yourself) ]);
		jsonName: #responseError;
		yourself