import android.content.Context;
import android.provider.CallLog.Calls;

public abstract class q
  implements y
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;

  public q()
  {
    a();
  }

  public y a(Context paramContext, boolean paramBoolean)
    throws s
  {
    if ((a(paramContext) != null) && (g() != null));
    for (int i = 1; ; i = 0)
    {
      if ((i != 0) && (paramBoolean))
      {
        if ((this.b == null) || (this.e == null) || (this.f == null))
          break label182;
        int m = a.a(paramContext, gu.b, this.b, this.e, this.f);
        if (-1 == m)
          throw new s();
        if (1 != m)
          break label182;
      }
      label182: for (i = 0; ; i = 1)
      {
        int j;
        if (i != 0)
          if ((this.a != null) && (this.d != null) && (this.c != null))
          {
            int k = a.a(paramContext, CallLog.Calls.CONTENT_URI, this.a, this.d, this.c);
            if (-1 == k)
              throw new s();
            j = 0;
            if (1 != k);
          }
        while (true)
        {
          if (j != 0);
          while (true)
          {
            return this;
            this = null;
          }
          j = 1;
          continue;
          j = i;
        }
      }
    }
  }

  protected abstract void a();

  public boolean b()
  {
    return true;
  }

  public final int c()
  {
    return 2;
  }

  public v[] d()
  {
    return null;
  }

  public String e()
  {
    return "from";
  }

  public final String f()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     q
 * JD-Core Version:    0.6.2
 */