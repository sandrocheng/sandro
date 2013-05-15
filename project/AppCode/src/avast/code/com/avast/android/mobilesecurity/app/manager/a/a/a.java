package com.avast.android.mobilesecurity.app.manager.a.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class a extends c
  implements b
{
  private int f;
  private long g;

  public a(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.f = paramInt;
    this.g = 0L;
  }

  protected List a(List paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    Iterator localIterator = paramList.iterator();
    long l = 0L;
    if (localIterator.hasNext())
    {
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator.next();
      d locald = new d();
      locald.d = l;
      locald.h = localApplicationInfo.packageName;
      locald.i = localApplicationInfo.loadLabel(y()).toString().trim();
      locald.f = 0;
      if (this.f == 1)
      {
        locald.j = z().a(localApplicationInfo.packageName, localApplicationInfo.sourceDir);
        label126: if ((0x1 & localApplicationInfo.flags) <= 0)
          break label173;
      }
      label173: for (int i = 1; ; i = 0)
      {
        locald.k = i;
        localArrayList.add(locald);
        l += 1L;
        break;
        locald.j = 0L;
        break label126;
      }
    }
    return localArrayList;
  }

  protected Cursor b(List paramList)
  {
    if ((this.f == 1) && (paramList.size() > 0))
      this.g = ((d)paramList.get(0)).j;
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = i;
    arrayOfString[2] = k;
    arrayOfString[3] = l;
    arrayOfString[4] = t;
    arrayOfString[5] = u;
    MatrixCursor localMatrixCursor = new MatrixCursor(arrayOfString);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      localMatrixCursor.newRow().add(Long.valueOf(locald.d)).add(locald.h).add(locald.i).add(Integer.valueOf(locald.f)).add(Long.valueOf(locald.j)).add(Integer.valueOf(locald.k));
    }
    return localMatrixCursor;
  }

  protected List b_()
  {
    return B();
  }

  protected Comparator c_()
  {
    Object localObject;
    switch (this.f)
    {
    default:
      localObject = new g();
    case 0:
    case 1:
    }
    while (true)
    {
      return localObject;
      localObject = new g();
      continue;
      localObject = new i(true);
    }
  }

  public long x()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.a.a
 * JD-Core Version:    0.6.2
 */