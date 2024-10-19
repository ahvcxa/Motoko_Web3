actor calculator {
  var cell: Int = 0;

  public func sum(s: Int) : async Int {
    cell += s;
    cell
  };

  public func subtraction(s:Int) : async Int {
    cell -= s;
    cell
  };

  public func multiplication(s:Int) : async Int {
    cell *= s;
    cell
  };

  public func dvison(s:Int) : async ?Int {

    if (s == 0){
      null
    }else{
      cell /= s;
      ?cell
    };
  };

  public func clear() : async () {
    cell := 0;
    
  };

};
