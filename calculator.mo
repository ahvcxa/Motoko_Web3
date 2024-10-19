actor calculator {
  var cell: Int = 0;
  var history: [String] = [];

  public func sum(s: Int) : async Int {
    cell += s;
    addToHistory("sum(\(s))");
    cell
  };

  public func subtraction(s: Int) : async Int {
    cell -= s;
    addToHistory("subtraction(\(s))");
    cell
  };

  public func multiplication(s: Int) : async Int {
    cell *= s;
    addToHistory("multiplication(\(s))");
    cell
  };

  public func division(s: Int) : async ?Int {
    if (s == 0) {
      null
    } else {
      cell /= s;
      addToHistory("division(\(s))");
      ?cell
    };
  };

  public func square() : async Int {
    cell *= cell;
    addToHistory("square()");
    cell
  };

  public func squareRoot() : async ?Int {
    if (cell < 0) {
      null
    } else {
      cell = Int(Math.sqrt(cell));
      addToHistory("squareRoot()");
      ?cell
    };
  };

  public func percentage(p: Int) : async Int {
    cell = (cell * p) / 100;
    addToHistory("percentage(\(p))");
    cell
  };

  public func lastResult() : async Int {
    cell
  };

  public func multiplicativeInverse() : async ?Float {
    if (cell == 0) {
      null
    } else {
      let inverse = 1.0 / Float(cell);
      addToHistory("multiplicativeInverse()");
      ?inverse
    }
  };

  public func clear() : async () {
    cell := 0;
    history := [];
  };

  private func addToHistory(operation: String) {
    history.push(operation);
  };

  public func getHistory() : async [String] {
    history
  };
};
