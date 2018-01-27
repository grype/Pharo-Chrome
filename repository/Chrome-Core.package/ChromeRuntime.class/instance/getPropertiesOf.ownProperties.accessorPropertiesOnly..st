api
getPropertiesOf: anObjectId ownProperties: isOwnProperties accessorPropertiesOnly: isAccessorPropertiesOnly
	^ self
		objectId: anObjectId;
		ownProperties: isOwnProperties;
		accessorPropertiesOnly: isAccessorPropertiesOnly;
		getProperties