package com.keniu.security.commumgr.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.widget.Toast;
import com.jxphone.mosecurity.c.l;
import com.keniu.security.util.ag;
import com.keniu.security.util.aq;
import com.keniu.security.util.at;
import java.util.ArrayList;
import java.util.List;

public final class e
{
  public static List A;
  public static boolean B = false;
  public static String C = ag.b("http://mosecurity.stat.jxphone.com/spdc/");
  private static Context D;
  private static final int E = 1;
  private static final int F = 2;
  private static Handler G;
  private static final String H = "http://mosecurity.stat.jxphone.com/spdc/";
  public static final int a = 5000;
  public static final int b = 0;
  public static final int c = 1;
  public static final int d = 2;
  public static final int e = 3;
  public static final int f = 4;
  public static final int g = 5;
  public static final int h = 6;
  public static final int i = 256;
  public static final int j = 257;
  public static final int k = 259;
  public static final int l = 261;
  public static final int m = 262;
  public static final int n = 263;
  public static final int o = 264;
  public static final int p = 265;
  public static final int q = 272;
  public static final int r = 273;
  public static volatile boolean s = false;
  public static volatile boolean t = false;
  public static r u = new r();
  public static boolean v;
  public static boolean w;
  public static boolean x;
  public static k y;
  public static Context z;

  static
  {
    G = new f();
  }

  private static void a(Activity paramActivity)
  {
    D = paramActivity.getApplicationContext();
    new aq(paramActivity, (byte)0).d(2131165192, new g(paramActivity)).d();
  }

  private static void a(Context paramContext, l paraml)
  {
    com.keniu.security.commumgr.e locale = new com.keniu.security.commumgr.e(paramContext);
    if (!locale.a());
    while (true)
    {
      return;
      if ((at.c(paramContext)) && ((!locale.c()) || (at.b(paramContext))))
      {
        t localt = new t(7);
        localt.a(paraml);
        b.a(paramContext, localt);
      }
    }
  }

  public static void a(Context paramContext, t paramt, k paramk, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramt);
    System.gc();
    if (s)
      Toast.makeText(paramContext, paramContext.getText(2131428458), 1).show();
    while (true)
    {
      return;
      z = paramContext.getApplicationContext();
      y = paramk;
      A = localArrayList;
      B = paramBoolean;
      u.a();
    }
  }

  private static void a(Context paramContext, List paramList, k paramk, boolean paramBoolean)
  {
    System.gc();
    if (s)
      Toast.makeText(paramContext, paramContext.getText(2131428458), 1).show();
    while (true)
    {
      return;
      z = paramContext.getApplicationContext();
      y = paramk;
      A = paramList;
      B = paramBoolean;
      u.a();
    }
  }

  public static boolean a()
  {
    return C.equals("http://mosecurity.stat.jxphone.com/spdc/");
  }

  private static boolean b(String paramString)
  {
    return paramString.matches("^\\+?[0-9]{3,32}$");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.e
 * JD-Core Version:    0.6.2
 */