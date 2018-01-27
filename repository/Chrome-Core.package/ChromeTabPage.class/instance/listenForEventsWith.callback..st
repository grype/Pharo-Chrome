event-listening
listenForEventsWith: script callback: aBlock
	| callbackId result |
	callbackId := callbackManager eventListenerRegistry register: aBlock.
	result := self runtime
		evaluate:
			('
	(()=>\{
		function resolve(data, error) \{
			var ws = new WebSocket(''ws://localhost:{1}'');
			var payload = \{''eventListenerId'':{2}, ''data'':data, ''error'':error};
			ws.onopen = () => \{
				ws.send(JSON.stringify(payload));
				ws.close();
			};
		}
		{3}
	})()
	'
				format:
					{callbackManager webSocket port greaseString.
					callbackId greaseString.
					script}).
	^ result