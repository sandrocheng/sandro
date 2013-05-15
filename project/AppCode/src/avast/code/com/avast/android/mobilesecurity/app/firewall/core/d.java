package com.avast.android.mobilesecurity.app.firewall.core;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import com.avast.android.mobilesecurity.app.manager.a.a.e;
import com.avast.android.mobilesecurity.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class d extends e
{
  public static String f = "wifi";
  public static String g = "mobile";
  public static String h = "roaming";
  private Map y;

  public d(Context paramContext)
  {
    super(paramContext);
  }

  private void x()
  {
    Cursor localCursor = j().getContentResolver().query(l.a(), null, null, null, null);
    if (localCursor != null)
    {
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        int i = localCursor.getColumnIndex("_id");
        int j = localCursor.getColumnIndex("wifi");
        int k = localCursor.getColumnIndex("mobile");
        int m = localCursor.getColumnIndex("roaming");
        do
        {
          g localg = new g(null);
          localg.a = localCursor.getInt(j);
          localg.b = localCursor.getInt(k);
          localg.c = localCursor.getInt(m);
          this.y.put(localCursor.getString(i), localg);
        }
        while (localCursor.moveToNext());
      }
      localCursor.close();
    }
  }

  protected List a(List paramList)
  {
    this.y = new HashMap();
    x();
    return super.a(paramList);
  }

  protected void a(f paramf)
  {
    String str;
    g localg;
    if (paramf.g != null)
    {
      str = paramf.g;
      if (!this.y.containsKey(str))
        break label72;
      localg = (g)this.y.get(str);
      paramf.a = localg.a;
      paramf.b = localg.b;
    }
    for (paramf.c = localg.c; ; paramf.c = 0)
    {
      return;
      str = paramf.h;
      break;
      label72: paramf.a = 0;
      paramf.b = 0;
    }
  }

  protected Cursor b(List paramList)
  {
    String[] arrayOfString = new String[12];
    arrayOfString[0] = "_id";
    arrayOfString[1] = i;
    arrayOfString[2] = k;
    arrayOfString[3] = l;
    arrayOfString[4] = t;
    arrayOfString[5] = j;
    arrayOfString[6] = v;
    arrayOfString[7] = w;
    arrayOfString[8] = x;
    arrayOfString[9] = f;
    arrayOfString[10] = g;
    arrayOfString[11] = h;
    MatrixCursor localMatrixCursor = new MatrixCursor(arrayOfString);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      localMatrixCursor.newRow().add(Long.valueOf(localf.d)).add(localf.h).add(localf.i).add(Integer.valueOf(localf.f)).add(Long.valueOf(localf.j)).add(localf.g).add(Integer.valueOf(localf.e)).add(localf.m).add(Integer.valueOf(localf.n)).add(Integer.valueOf(localf.a)).add(Integer.valueOf(localf.b)).add(Integer.valueOf(localf.c));
    }
    localMatrixCursor.setNotificationUri(j().getContentResolver(), l.a());
    return localMatrixCursor;
  }

  protected f f()
  {
    return new f();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.core.d
 * JD-Core Version:    0.6.2
 */