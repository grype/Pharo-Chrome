callbacks
addEventListener: script callback: aBlock
	| callbackId result |
	callbackId := eventListenerRegistry register: aBlock.
	result := self
		evaluate:
			('
	(()=>\{
		function resolve(data) \{
			var ws = new WebSocket(''ws://localhost:{1}'');
			var payload = \{''eventListenerId'':{2}, ''data'':data};
			ws.onopen = () => \{
				ws.send(JSON.stringify(payload));
				ws.close();
			};
		}
		{3}
	})()
	'
				format:
					{webSocket port greaseString.
					callbackId greaseString.
					script}).
	^ result