speech
speechSynthesisVoices
	^ self runtime
		evaluate:
			'speechSynthesis.getVoices().map((v)=>{
				return {
					"name": v.name, 
					"lang": v.lang, 
					"localService": v.localService, 
					"default": v.default, 
					"voiceURI": v.voiceURI
				}
			})'