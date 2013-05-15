package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.Context;
import android.content.res.Resources;
import android.util.SparseArray;
import java.util.EnumSet;
import java.util.Iterator;

public enum y
{
  private static final SparseArray N;
  private int O;

  static
  {
    A = new as("PIN_PROTECTION_RECOVERY_SMS_SENT", 26, 27);
    B = new at("PIN_PROTECTION_RECOVERY_EXPIRED", 27, 28);
    C = new au("PRIVACY_ADVISOR_SCAN", 28, 29);
    D = new aw("SMS_CALL_FILTER_MESSAGE_BLOCKED", 29, 30);
    E = new ax("SMS_CALL_FILTER_CALL_BLOCKED", 30, 31);
    F = new ay("WEBSHIELD_URL_SCAN", 31, 32);
    G = new az("WEBSHIELD_SCAN_RESULT", 32, 33);
    H = new ba("WEBSHIELD_AUTOREDIRECT", 33, 34);
    I = new bb("WEBSHIELD_ENABLED", 34, 35);
    J = new bc("WEBSHIELD_DISABLED", 35, 36);
    K = new bd("FILESHIELD_ENABLED", 36, 37);
    L = new be("FILESHIELD_DISABLED", 37, 38);
    M = new bf("FILESHIELD_SCAN_COUNT", 38, 39);
    y[] arrayOfy = new y[39];
    arrayOfy[0] = a;
    arrayOfy[1] = b;
    arrayOfy[2] = c;
    arrayOfy[3] = d;
    arrayOfy[4] = e;
    arrayOfy[5] = f;
    arrayOfy[6] = g;
    arrayOfy[7] = h;
    arrayOfy[8] = i;
    arrayOfy[9] = j;
    arrayOfy[10] = k;
    arrayOfy[11] = l;
    arrayOfy[12] = m;
    arrayOfy[13] = n;
    arrayOfy[14] = o;
    arrayOfy[15] = p;
    arrayOfy[16] = q;
    arrayOfy[17] = r;
    arrayOfy[18] = s;
    arrayOfy[19] = t;
    arrayOfy[20] = u;
    arrayOfy[21] = v;
    arrayOfy[22] = w;
    arrayOfy[23] = x;
    arrayOfy[24] = y;
    arrayOfy[25] = z;
    arrayOfy[26] = A;
    arrayOfy[27] = B;
    arrayOfy[28] = C;
    arrayOfy[29] = D;
    arrayOfy[30] = E;
    arrayOfy[31] = F;
    arrayOfy[32] = G;
    arrayOfy[33] = H;
    arrayOfy[34] = I;
    arrayOfy[35] = J;
    arrayOfy[36] = K;
    arrayOfy[37] = L;
    arrayOfy[38] = M;
    P = arrayOfy;
    N = new SparseArray();
    Iterator localIterator = EnumSet.allOf(y.class).iterator();
    while (localIterator.hasNext())
    {
      y localy = (y)localIterator.next();
      N.put(localy.a(), localy);
    }
  }

  private y(int arg3)
  {
    int i2;
    this.O = i2;
  }

  public static y a(int paramInt)
  {
    return (y)N.get(paramInt);
  }

  public int a()
  {
    return this.O;
  }

  public abstract String a(Resources paramResources, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3);

  public void a(Context paramContext)
  {
  }

  public abstract void a(Context paramContext, Resources paramResources, r paramr, String paramString1, String paramString2, String paramString3, Long paramLong1, Long paramLong2, Long paramLong3);

  public boolean b()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.y
 * JD-Core Version:    0.6.2
 */