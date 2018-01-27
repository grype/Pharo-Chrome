api
getProperties
	^ self page
		sendMessage: (self messageForMethod: #getProperties paramsFrom: #(#objectId #ownProperties #accessorPropertiesOnly #generatePreview))