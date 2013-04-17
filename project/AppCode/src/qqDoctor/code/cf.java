import android.content.Context;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;

public abstract interface cf
{
  public abstract void a(Context paramContext);

  public abstract void a(Context paramContext, ITccSyncDbAdapter.DbAdapterType paramDbAdapterType, cb paramcb);

  public abstract boolean a();

  public abstract cf.a b();

  public abstract cf.a c();

  public abstract cf.a d();

  public abstract cf.a e();

  public abstract void f();

  public abstract int g();

  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[5];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      arrayOfa[2] = c;
      arrayOfa[3] = d;
      arrayOfa[4] = e;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     cf
 * JD-Core Version:    0.6.2
 */