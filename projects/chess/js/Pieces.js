
function Piece(position, color){
	this.components = [component_position, component_color, component_moves]
	this.position = new PositionComponent(position);
	this.color = new ColorComponent(color);
	this.moves = new MoveComponent([]);
}

Pawn.prototype = Object.create(Piece.prototype);
function Pawn(position, color){
	Piece.call(this, position, color);
	this.moves = new MoveComponent([moves_pawn_capture, moves_pawn_move]);
}

Knight.prototype = Object.create(Piece.prototype);
function Knight(position, color){
	Piece.call(this, position, color);
	this.moves = new MoveComponent([moves_knight]);
}

Bishop.prototype = Object.create(Piece.prototype);
function Bishop(position, color){
	Piece.call(this, position, color);
	this.moves = new MoveComponent([moves_diagonal]);
}

Rook.prototype = Object.create(Piece.prototype);
function Rook(position, color){
	Piece.call(this, position, color);
	this.moves = new MoveComponent([moves_straight]);
}

Queen.prototype = Object.create(Piece.prototype);
function Queen(position, color){
	Piece.call(this, position, color);
	this.moves = new MoveComponent([moves_straight, moves_diagonal]);
}

King.prototype = Object.create(Piece.prototype);
function King(position, color){
	Piece.call(this, position, color);
	this.moves = new MoveComponent([moves_king]);
}
