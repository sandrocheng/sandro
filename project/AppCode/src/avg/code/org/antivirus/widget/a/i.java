package org.antivirus.widget.a;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.antivirus.core.Logger;

public enum i
{
  private final int k;
  private final int l;
  private final int m;
  private final String n;

  static
  {
    i[] arrayOfi = new i[10];
    arrayOfi[0] = a;
    arrayOfi[1] = b;
    arrayOfi[2] = c;
    arrayOfi[3] = d;
    arrayOfi[4] = e;
    arrayOfi[5] = f;
    arrayOfi[6] = g;
    arrayOfi[7] = h;
    arrayOfi[8] = i;
    arrayOfi[9] = j;
  }

  private i(int paramInt3, int paramString, int arg5, String arg6)
  {
    this.k = paramInt3;
    this.l = paramString;
    int i1;
    this.m = i1;
    Object localObject;
    this.n = localObject;
  }

  public static i a(int paramInt)
  {
    i[] arrayOfi = values();
    int i1 = arrayOfi.length;
    int i2 = 0;
    i locali;
    if (i2 < i1)
    {
      locali = arrayOfi[i2];
      if (locali.k != paramInt);
    }
    while (true)
    {
      return locali;
      i2++;
      break;
      Logger.error("Unavailable item found. Return Protection");
      locali = a;
    }
  }

  public static i[] a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList(Arrays.asList(values()));
    localArrayList.remove(j);
    if (!paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony"))
      localArrayList.remove(c);
    return (i[])localArrayList.toArray(new i[localArrayList.size()]);
  }

  public final int a()
  {
    return this.k;
  }

  public final int b()
  {
    return this.l;
  }

  public final int c()
  {
    return this.m;
  }

  public final String d()
  {
    return this.n;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.i
 * JD-Core Version:    0.6.2
 */