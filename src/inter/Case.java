package inter;
import symbols.*;

public class Case extends Stmt {

   Expr expr; Stmt stmt1; Stmt stmt2;

   public Case(Stmt s1) {
      stmt1 = s1; 
      //stmt2 = s2;
      //if( expr.type != Type.Bool ) expr.error("boolean required in switch");
   }

   public void gen(int b, int a) {
      int label = newlabel(); // label for the code for stmt
      stmt1.gen(label, b);
   }
}
