import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.List;

public final class zq
{
  public static List<mk> a;
  public static List<mk> b;
  static zq c;
  List<mk> d;
  List<mk> e;
  public boolean f;
  Handler g;
  public boolean h;
  long i = 5L;

  private zq(Handler paramHandler)
  {
    this.g = paramHandler;
    a = jo.a().a("nocharge_body_smslog");
    b = jo.a().a("nocharge_phonenum_smslog");
  }

  public static zq a(Handler paramHandler)
  {
    try
    {
      if (c == null)
        c = new zq(paramHandler);
      zq localzq = c;
      return localzq;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean a(SmsEntity paramSmsEntity)
  {
    int m;
    boolean bool;
    if (a != null)
    {
      m = 0;
      if (m < a.size())
        if ((((mk)a.get(m)).phonenum.equals(paramSmsEntity.phonenum)) && (((mk)a.get(m)).date == paramSmsEntity.date))
          bool = true;
    }
    List localList;
    do
    {
      return bool;
      m++;
      break;
      localList = b;
      bool = false;
    }
    while (localList == null);
    label139: label183: label196: for (int j = 0; ; j++)
    {
      int k = b.size();
      bool = false;
      if (j >= k)
        break;
      String str1 = ((mk)b.get(j)).phonenum;
      String str2;
      if (str1.length() <= 8)
      {
        str2 = paramSmsEntity.phonenum;
        if (str2.length() > 8)
          break label183;
      }
      while (true)
      {
        if (!str1.equals(str2))
          break label196;
        bool = true;
        break;
        str1 = str1.substring(0, 8);
        break label139;
        str2 = str2.substring(0, 8);
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      boolean bool = this.f;
      if (bool);
      while (true)
      {
        return;
        nd.a().a(16);
        this.f = true;
        this.h = false;
        if (paramBoolean)
        {
          if ((this.d != null) && (this.d.size() > 0))
            this.d.clear();
          if ((this.e != null) && (this.e.size() > 0))
            this.e.clear();
        }
        new Thread(new zr(this)).start();
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zq
 * JD-Core Version:    0.6.2
 */