import android.view.WindowManager.LayoutParams;

public final class kg
{
  public static WindowManager.LayoutParams a;
  public static WindowManager.LayoutParams b;
  public static WindowManager.LayoutParams c;
  public static WindowManager.LayoutParams d;
  public static WindowManager.LayoutParams e;
  public static WindowManager.LayoutParams f;
  private static WindowManager.LayoutParams g;

  static
  {
    WindowManager.LayoutParams localLayoutParams1 = new WindowManager.LayoutParams();
    a = localLayoutParams1;
    localLayoutParams1.gravity = 51;
    a.type = 2003;
    a.format = 1;
    WindowManager.LayoutParams localLayoutParams2 = a;
    localLayoutParams2.flags = (0x8 | localLayoutParams2.flags);
    a.width = -2;
    a.height = -2;
    WindowManager.LayoutParams localLayoutParams3 = new WindowManager.LayoutParams();
    b = localLayoutParams3;
    localLayoutParams3.copyFrom(a);
    b.alpha = 1.0F;
    WindowManager.LayoutParams localLayoutParams4 = new WindowManager.LayoutParams();
    c = localLayoutParams4;
    localLayoutParams4.copyFrom(a);
    c.type = 2010;
    WindowManager.LayoutParams localLayoutParams5 = new WindowManager.LayoutParams();
    e = localLayoutParams5;
    localLayoutParams5.gravity = 51;
    e.type = 2003;
    e.format = 1;
    WindowManager.LayoutParams localLayoutParams6 = e;
    localLayoutParams6.flags = (0x8 | localLayoutParams6.flags);
    e.width = -2;
    e.height = -2;
    e.gravity = 17;
    WindowManager.LayoutParams localLayoutParams7 = new WindowManager.LayoutParams();
    f = localLayoutParams7;
    localLayoutParams7.gravity = 51;
    f.type = 2003;
    f.format = 1;
    f.width = -2;
    f.height = -2;
    f.gravity = 17;
    WindowManager.LayoutParams localLayoutParams8 = new WindowManager.LayoutParams();
    g = localLayoutParams8;
    localLayoutParams8.gravity = 51;
    g.type = 2003;
    g.format = 1;
    g.width = -2;
    g.height = -2;
    g.gravity = 17;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kg
 * JD-Core Version:    0.6.2
 */