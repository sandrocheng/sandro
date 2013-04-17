import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.lang.ref.SoftReference;
import java.util.HashMap;

public final class gc extends BaseManager
{
  private gd a;

  public final String a()
  {
    return this.a.a;
  }

  public final void a(ga paramga)
  {
    gd localgd = this.a;
    HashMap localHashMap = localgd.b;
    if (paramga != null);
    try
    {
      localgd.b.put(Integer.valueOf(4), new SoftReference(paramga));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new gd();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gc
 * JD-Core Version:    0.6.2
 */