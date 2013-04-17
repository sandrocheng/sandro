import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.HashMap;

final class fo extends BaseManager
{
  private Context a;
  private fk b;

  fo()
  {
    new HashMap();
  }

  public final fk a()
  {
    try
    {
      if (this.b == null)
        this.b = new fl(this.a);
      fk localfk = this.b;
      return localfk;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getSingletonType()
  {
    return 1;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    this.a.getPackageManager();
    this.a.getSystemService("activity");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fo
 * JD-Core Version:    0.6.2
 */