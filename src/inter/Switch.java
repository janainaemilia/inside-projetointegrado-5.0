package inter;
import symbols.*;

public class Switch extends Stmt {

   Expr expr; Stmt stmt;

   public Switch(Expr x) {
      expr = x;
   }

   public void gen(int b, int a) {
      int label = newlabel(); // label for the code for stmt
      expr.jumping(0, a);     // fall through on true, goto a on false
      emitlabel(label); stmt.gen(label, a);
   }
}