// to be able to print, import the Debug library
import Debug "mo:base/Debug";

// actor is like a Class
actor DBank {
  var currentValue = 300; // must use var for mutable values
  currentValue := 100;  // change the value of the variable

  let id = 2315465342465224;  // let is like a constant

  // if printing text, just Debug.print("hello")
  // Debug.print(debug_show(currentValue)); // to print a number use (debug_show())
  // Debug.print(debug_show(id));

  // private function - in a canister
  public func topUp(amount: Nat) { // add public to allow outside canister calls
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withDraw(amount: Nat) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
  };

  // topUp();
}