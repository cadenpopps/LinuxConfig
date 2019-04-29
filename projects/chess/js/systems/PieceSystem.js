PieceSystem.prototype = Object.create(System.prototype);
function PieceSystem(){
	System.call(this);

	this.acceptedEvents = [event_mouse_input];

	let board = new Array(BOARD_SIZE);
	for(let i = 0; i < BOARD_SIZE * BOARD_SIZE; i++){
		board[i] = piece_none;
	}

	this.handleEvent = function(engine, event){
		switch(event.eventID){
			case event_mouse_input:
				let target = getPieceAtSquare(this.pieces, event.square);
				if(target !== undefined){getPieceMoves(target);} 
				break;
		}
	}

	let getPieceAtSquare = function(pieces, square){
		for(let p of pieces){
			if(p.position.position == square){ return p; }
		}
		return undefined;
	}

	let getPieceMoves = function(piece){
		for(let m of piece.moves.moves){
			console.log(getMoves(piece, m));
		}
	}

	let getMoves = function(piece, move_type){
		let moves = [];
		switch(move_type){
			case moves_straight:
				moves.push(getStraightMoves(piece));
				break;

		}
		return moves;
	}

	let getStraightMoves = function(piece){
		let moves = [];

		//up
		for(let i = piece.position.position + 1; i <= ceil((piece.position.position + 1) / 8) * 8; i++){
			let status = movable(piece, board[i]);
			if(status != SQUARE_BLOCKED){
				moves.push(i);
				if(status == SQUARE_CAPTUREABLE){ break; }
			}
			else{ break; }
		}

		//right
		for(let i = piece.position.position + 8; i < BOARD_SIZE * BOARD_SIZE; i+=8){
			let status = movable(piece, board[i]);
			if(status != SQUARE_BLOCKED){
				moves.push(i);
				if(status == SQUARE_CAPTUREABLE){ break; }
			}
			else{ break; }
		}

		//down
		for(let i = piece.position.position - 1; i >= floor(piece.position.position / 8) * 8; i--){
			let status = movable(piece, board[i]);
			if(status != SQUARE_BLOCKED){
				moves.push(i);
				if(status == SQUARE_CAPTUREABLE){ break; }
			}
			else{ break; }
		}

		//left
		for(let i = piece.position.position - 8; i >= 0; i-=8){
			let status = movable(piece, board[i]);
			if(status != SQUARE_BLOCKED){
				moves.push(i);
				if(status == SQUARE_CAPTUREABLE){ break; }
			}
			else{ break; }
		}

		return moves;
	}

	let movable = function(piece, square){
		if(square == piece_none) return SQUARE_MOVABLE;
		else if (piece.color.color != square.color.color) return SQUARE_CAPTUREABLE;
		else return SQUARE_BLOCKED;
	}

	this.updatePieces = function(object){
		System.prototype.updatePieces.call(this, object);
		board[object.position.position] = object;
	}
}

