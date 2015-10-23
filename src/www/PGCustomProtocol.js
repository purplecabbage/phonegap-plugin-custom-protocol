

// PGCustomProtocol

var callbacks = [];

module.exports = {
	registerHandler:function(callback){
		callbacks.push(callback);
	}
};

function onProtocol(uri){
	for(var n=0; n< callbacks.length;n++) {
		callbacks[n](uri);
	}
};

cordova.addConstructor(function(){
	cordova.exec(onProtocol,null,"PGCustomProtocol","init",[]);
});

