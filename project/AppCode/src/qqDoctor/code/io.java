import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;

public final class io
{
  private static io g;
  SharedPreferences a;
  public ki b;
  public hq c;
  public hq d;
  public String e = "";
  int f = 0;
  private Context h;

  private io(Context paramContext)
  {
    this.h = paramContext;
    this.a = this.h.getSharedPreferences("communicate_log_cache", 0);
    this.b = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    this.c = new hq(1);
    this.d = new hq(0);
    new ip(this).start();
  }

  public static io a()
  {
    try
    {
      if (g == null)
        g = new io(QQPimApplication.a());
      io localio = g;
      return localio;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString)
  {
    while (true)
    {
      try
      {
        if ("".equals(this.e))
        {
          this.e = paramString;
          if (1 + this.f <= 50)
          {
            this.f = (1 + this.f);
            String str = this.e;
            this.e = str;
            this.a.edit().putString("incoming_call_log", str).commit();
          }
        }
        else
        {
          this.e = (this.e + "|" + paramString);
          continue;
        }
      }
      finally
      {
      }
      int i = this.e.indexOf('|');
      if (i > 0)
        this.e = this.e.substring(i + 1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     io
 * JD-Core Version:    0.6.2
 */