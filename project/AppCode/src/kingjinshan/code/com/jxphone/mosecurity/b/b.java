package com.jxphone.mosecurity.b;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.keniu.security.b.a;
import com.keniu.security.b.j;
import com.keniu.security.b.k;
import java.util.ArrayList;
import java.util.List;

public abstract class b
  implements k
{
  private Context a;

  public b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  private List a(Cursor paramCursor, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    for (int i = 0; (!paramCursor.isAfterLast()) && (i < paramInt); i++)
    {
      localArrayList.add(a(paramCursor));
      paramCursor.moveToNext();
    }
    return localArrayList;
  }

  private List b(Cursor paramCursor)
  {
    int i = paramCursor.getCount();
    ArrayList localArrayList = new ArrayList();
    paramCursor.moveToFirst();
    for (int j = 0; (!paramCursor.isAfterLast()) && (j < i); j++)
    {
      localArrayList.add(a(paramCursor));
      paramCursor.moveToNext();
    }
    return localArrayList;
  }

  protected abstract Object a(Cursor paramCursor);

  protected final List a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    Cursor localCursor = c().query(paramString1, paramArrayOfString, null, null, null, null, paramString2);
    int i = localCursor.getCount();
    ArrayList localArrayList = new ArrayList();
    localCursor.moveToFirst();
    for (int j = 0; (!localCursor.isAfterLast()) && (j < i); j++)
    {
      localArrayList.add(a(localCursor));
      localCursor.moveToNext();
    }
    if (localCursor != null)
      localCursor.close();
    return localArrayList;
  }

  protected SQLiteDatabase c()
  {
    return j.a(this.a, a.a()).getWritableDatabase();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.b.b
 * JD-Core Version:    0.6.2
 */