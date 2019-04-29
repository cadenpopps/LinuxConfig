function System(){
	this.pieces = [];
	this.componentRequirements = [];
	this.acceptedEvents = [];
	this.acceptedCommands = [];
}

System.prototype.run = function(){}

System.prototype.updatePieces = function(object){
	this.pieces.push(object);
}

System.prototype.clearPieces = function(){
	this.pieces = [];
}

System.prototype.handleEvent = function(engine, e){}

System.prototype.handleCommand = function(engine, c){}
