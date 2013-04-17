import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public final class bd
{
  public static SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E");

  public static void a(int paramInt1, int paramInt2, long paramLong)
  {
    ca localca = bl.f();
    localca.a(ca.a.p, paramLong);
    dk.b("CommUtils", "saveNotifyTimeAndTypes currentTime = " + a.format(new Date(paramLong)));
    localca.a(ca.a.q, paramInt1);
    localca.a(ca.a.r, paramInt2);
  }

  private static boolean a(long paramLong1, long paramLong2, String paramString)
  {
    dk.b("CommUtils", "isNeedShowNotification enter currentTime=" + paramLong1 + " notifyInterval=1296000000" + " currentLoginedAccount=" + paramString);
    be localbe = be.a();
    boolean bool;
    if ((localbe == null) || (localbe.b() <= 0))
      bool = true;
    while (true)
    {
      return bool;
      dk.b("CommUtils", "isNeedShowNotification currentTime=" + paramLong1 + " notifyInterval=1296000000");
      Iterator localIterator = localbe.c().iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          dk.b("CommUtils", "isNeedShowNotification need notify *******************************");
          bool = true;
          break;
        }
        bf localbf = (bf)localIterator.next();
        if (localbf != null)
        {
          localbf.f();
          long l1 = localbf.c();
          long l2 = paramLong1 - l1;
          dk.b("CommUtils", "isNeedShowNotification currentTime = " + a.format(new Date(paramLong1)) + " lastNotifyTimeOfOther=" + a.format(new Date(l1)) + " deltaTime=" + l2);
          if ((l2 < 1296000000L) && (l2 >= 0L))
          {
            dk.b("CommUtils", "isNeedShowNotification no need notify *******************************");
            String str = localbf.e();
            dk.b("CommUtils", "isNeedShowNotification otherAccount=" + str);
            if ((paramString == null) || (!paramString.equalsIgnoreCase(str)))
              break label298;
            dk.b("CommUtils", "isNeedShowNotification same account");
          }
        }
      }
      label298: bool = false;
    }
  }

  public static boolean a(Context paramContext, long paramLong, String paramString)
  {
    boolean bool = true;
    dk.b("CommUtils", "askAllRemoteLastNotification account = " + paramString);
    if (paramContext == null);
    while (true)
    {
      return bool;
      String str1 = paramContext.getPackageName();
      dk.b("CommUtils", "askAllRemoteLastNotification packageName=" + str1);
      bf localbf = new bf();
      ca localca = bl.f();
      String str2 = localca.a(ca.a.o);
      long l = localca.c(ca.a.p);
      int i = localca.b(ca.a.q);
      int j = localca.b(ca.a.r);
      localbf.b(str2);
      localbf.b(l);
      localbf.b(i);
      localbf.c(j);
      localbf.a(str1);
      be.a().a(bool);
      bool = a.a(paramContext, 3, localbf, str1, null);
      dk.b("CommUtils", "askAllRemoteLastNotification broadcast =" + bool);
      if (bool);
      try
      {
        Thread.sleep(5000L);
        be.a().a(false);
        bool = a(paramLong, 1296000000L, paramString);
        dk.b("CommUtils", "askAllRemoteLastNotification isNeedShowNotification =" + bool);
        dk.b("CommUtils", "askAllRemoteLastNotification leave needShow =" + bool);
      }
      catch (Exception localException)
      {
        while (true)
          dk.c("CommUtils", "syncAskAllRemoteLastNotification(), " + localException.toString());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bd
 * JD-Core Version:    0.6.2
 */