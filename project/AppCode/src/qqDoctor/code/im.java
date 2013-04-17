import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.tools.SingletonManager;

public final class im
  implements ILastCallLogDao
{
  private static im a;
  private Context b;
  private SharedPreferences c;
  private ki d;
  private hq e;
  private hq f;
  private String g = "";
  private int h = 0;

  private im(Context paramContext)
  {
    this.b = paramContext;
    this.c = this.b.getSharedPreferences("communicate_log_cache", 0);
    this.d = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.e = new hq(1);
    this.f = new hq(0);
    new in(this).start();
  }

  public static im a()
  {
    try
    {
      if (a == null)
        a = new im(QQPimApplication.a());
      im localim = a;
      return localim;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(String paramString)
  {
    while (true)
    {
      try
      {
        if ("".equals(this.g))
        {
          this.g = paramString;
          if (1 + this.h <= 50)
          {
            this.h = (1 + this.h);
            String str = this.g;
            this.g = str;
            this.c.edit().putString("outgoing_call_log", str).commit();
          }
        }
        else
        {
          this.g = (this.g + "|" + paramString);
          continue;
        }
      }
      finally
      {
      }
      int i = this.g.indexOf('|');
      if (i > 0)
        this.g = this.g.substring(i + 1);
    }
  }

  public final boolean contains(String paramString)
  {
    String str = fu.e(paramString);
    if (str != null);
    for (boolean bool = this.g.contains(fu.f(fu.a(str))); ; bool = false)
      return bool;
  }

  public final void update(CallLogEntity paramCallLogEntity)
  {
    if (paramCallLogEntity != null);
    try
    {
      String str = fu.e(paramCallLogEntity.phonenum);
      if ((str != null) && (!contains(paramCallLogEntity.phonenum)) && (!this.e.b(paramCallLogEntity.phonenum)) && (!this.f.b(paramCallLogEntity.phonenum)) && (!this.d.contains(paramCallLogEntity.phonenum)))
        a(fu.f(fu.a(str)));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     im
 * JD-Core Version:    0.6.2
 */