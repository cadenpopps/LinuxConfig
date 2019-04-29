function PoppsEngine(tickrate) {

	const TICKRATE = floor(1000/tickrate);

	this.systems = [];

	this.init = function(){
		this.systems.push(new DisplaySystem());
		this.systems.push(new BoardSystem());
		this.systems.push(new InputSystem());
		this.systems.push(new PieceSystem());

		this.sendCommand({commandID: command_init});
		this.sendEvent({eventID: event_game_start});

		setInterval(tick.bind(this), TICKRATE);
	};

	let tick = function(){
		for(let s of this.systems){
			s.run(this);
		}
	}

	this.updatePieces = function(piece){
		for(let s of this.systems){
			s.updatePieces(piece);
		}
	}

	this.sendEvent = function(e){
		for(let s of this.systems){
			s.handleEvent(this, e);
		}
	}

	this.sendCommand = function(c){
		for(let s of this.systems){
			s.handleCommand(this, c);
		}
	}

	this.clearPieces = function(){
		for(let s of this.systems){
			System.prototype.clearPieces.call(s);
		}
	}

	this.init();
}
