package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.res.Resources;
import android.util.SparseArray;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public enum a
{
  private static final SparseArray m;
  private List n;
  private int o;

  static
  {
    y[] arrayOfy1 = new y[4];
    arrayOfy1[0] = y.b;
    arrayOfy1[1] = y.a;
    arrayOfy1[2] = y.c;
    arrayOfy1[3] = y.d;
    a = new b("APP_SHIELD", 0, 1, arrayOfy1);
    y[] arrayOfy2 = new y[4];
    arrayOfy2[0] = y.s;
    arrayOfy2[1] = y.t;
    arrayOfy2[2] = y.u;
    arrayOfy2[3] = y.v;
    b = new f("MESSAGE_SHIELD", 1, 2, arrayOfy2);
    y[] arrayOfy3 = new y[3];
    arrayOfy3[0] = y.w;
    arrayOfy3[1] = y.x;
    arrayOfy3[2] = y.y;
    c = new g("NETWORK_METER", 2, 3, arrayOfy3);
    y[] arrayOfy4 = new y[1];
    arrayOfy4[0] = y.C;
    d = new h("PRIVACY_ADVISOR", 3, 4, arrayOfy4);
    y[] arrayOfy5 = new y[2];
    arrayOfy5[0] = y.D;
    arrayOfy5[1] = y.E;
    e = new i("SMS_CALL_FILTER", 4, 5, arrayOfy5);
    y[] arrayOfy6 = new y[4];
    arrayOfy6[0] = y.e;
    arrayOfy6[1] = y.f;
    arrayOfy6[2] = y.g;
    arrayOfy6[3] = y.h;
    f = new j("UPDATES", 5, 6, arrayOfy6);
    y[] arrayOfy7 = new y[5];
    arrayOfy7[0] = y.F;
    arrayOfy7[1] = y.G;
    arrayOfy7[2] = y.H;
    arrayOfy7[3] = y.I;
    arrayOfy7[4] = y.J;
    g = new k("WEB_SHIELD", 6, 7, arrayOfy7);
    y[] arrayOfy8 = new y[2];
    arrayOfy8[0] = y.k;
    arrayOfy8[1] = y.l;
    h = new l("AVAST_ACCOUNT", 7, 8, arrayOfy8);
    y[] arrayOfy9 = new y[3];
    arrayOfy9[0] = y.z;
    arrayOfy9[1] = y.A;
    arrayOfy9[2] = y.B;
    i = new m("PIN_PROTECTION", 8, 9, arrayOfy9);
    y[] arrayOfy10 = new y[3];
    arrayOfy10[0] = y.p;
    arrayOfy10[1] = y.q;
    arrayOfy10[2] = y.r;
    j = new c("FIREWALL", 9, 10, arrayOfy10);
    y[] arrayOfy11 = new y[2];
    arrayOfy11[0] = y.i;
    arrayOfy11[1] = y.j;
    k = new d("VIRUS_SCANNER", 10, 11, arrayOfy11);
    y[] arrayOfy12 = new y[3];
    arrayOfy12[0] = y.K;
    arrayOfy12[1] = y.L;
    arrayOfy12[2] = y.M;
    l = new e("FILE_SHIELD", 11, 12, arrayOfy12);
    a[] arrayOfa = new a[12];
    arrayOfa[0] = a;
    arrayOfa[1] = b;
    arrayOfa[2] = c;
    arrayOfa[3] = d;
    arrayOfa[4] = e;
    arrayOfa[5] = f;
    arrayOfa[6] = g;
    arrayOfa[7] = h;
    arrayOfa[8] = i;
    arrayOfa[9] = j;
    arrayOfa[10] = k;
    arrayOfa[11] = l;
    p = arrayOfa;
    m = new SparseArray();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      m.put(locala.a(), locala);
    }
  }

  private a(int arg3, y[] arg4)
  {
    int i1;
    this.o = i1;
    Object[] arrayOfObject;
    this.n = Arrays.asList(arrayOfObject);
  }

  public static a a(int paramInt)
  {
    return (a)m.get(paramInt);
  }

  public static Map a(Resources paramResources)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = EnumSet.allOf(a.class).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      localHashMap.put(locala, locala.b(paramResources));
    }
    return localHashMap;
  }

  public int a()
  {
    return this.o;
  }

  public abstract String b(Resources paramResources);

  public List b()
  {
    return Collections.unmodifiableList(this.n);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.a
 * JD-Core Version:    0.6.2
 */