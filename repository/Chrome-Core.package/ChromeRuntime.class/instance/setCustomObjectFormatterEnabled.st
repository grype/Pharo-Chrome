api
setCustomObjectFormatterEnabled
	^ self page sendMessage: (self messageForMethod: #setCustomObjectFormatterEnabled paramsFrom: #(#enabled))