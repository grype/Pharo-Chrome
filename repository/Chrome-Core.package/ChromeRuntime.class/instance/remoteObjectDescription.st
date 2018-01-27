description
remoteObjectDescription
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Remote Object';
		classes: { ChromeRemoteObject };
		propertyAccessor: #result;
		jsonName: #result;
		beOptional;
		yourself