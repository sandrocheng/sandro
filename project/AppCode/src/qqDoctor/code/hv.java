import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;

public class hv extends hz
{
  public static final String a = lm.b + "filesafe_db.sqlite";
  private static hv c = null;

  private hv(Context paramContext)
  {
    super(paramContext);
    this.b = new hw(this, paramContext, "filesafe_db.sqlite");
  }

  public static hv a()
  {
    return a(TMSApplication.getApplicaionContext());
  }

  private static hv a(Context paramContext)
  {
    if (c == null);
    try
    {
      if (c == null)
        c = new hv(paramContext);
      return c;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected static void b()
  {
  }

  protected static void c()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hv
 * JD-Core Version:    0.6.2
 */