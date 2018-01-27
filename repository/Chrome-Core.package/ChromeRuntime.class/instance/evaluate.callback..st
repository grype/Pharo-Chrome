api
evaluate: anExpressionString callback: aCallbackBlock
	"Evaluates an expression within a context of a Promise. Be sure that your expression calls resolve() or reject(), passing data or error correspondingly..."

	| callbackId script |
	aCallbackBlock ifNil: [ ^ self evaluate: anExpressionString ].
	callbackId := self registerCallback: aCallbackBlock.
	script := '
	(()=>\{
		function callback(data, error) \{
			var ws = new WebSocket(''ws://localhost:{1}/'');
			var errorMessage = error ? error.message : error;
			var payload = \{''callbackId'':{2}, ''data'':data, ''error'':errorMessage};
			ws.onopen = () => \{
				ws.send(JSON.stringify(payload));
				ws.close();
			};
		}
		var promise = new Promise((resolve, reject)=>\{
			{3}
		});
		promise.then((result)=>\{
			callback(result);
		}, (error)=>\{
			callback(error);
		})
	})()
	'
		format:
			{page callbackManager webSocket port greaseString.
			callbackId.
			anExpressionString}.
	^ self
		expression: script;
		evaluate