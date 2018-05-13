package inter;
import symbols.*;

public class For extends Stmt {

   Expr expr; Stmt stmt; Stmt stmt1;

   public For() { expr = null; stmt = null; stmt1 = null; }

   public void init(Stmt s, Stmt s1, Expr x) {
      expr = x; stmt = s; stmt = s1;
      if( expr.type != Type.Bool ) expr.error("boolean required in do");
   }

   public void gen(int b, int a) {
      after = a;
      int label = newlabel();   // label for expr
      stmt.gen(b,label);
      emitlabel(label);
      expr.jumping(b,0);
   }
}
