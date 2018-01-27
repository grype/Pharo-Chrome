description
exceptionDetailsDescription
	<magritteDescription>
	^ MAToOneRelationDescription new
		label: 'Exception Details';
		classes: { ChromeScriptExceptionDetails };
		propertyAccessor: #exceptionDetails;
		jsonName: #exceptionDetails;
		beOptional;
		yourself