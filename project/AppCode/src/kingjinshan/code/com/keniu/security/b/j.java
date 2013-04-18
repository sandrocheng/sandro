package com.keniu.security.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.Iterator;
import java.util.List;

public final class j extends SQLiteOpenHelper
{
  private static j a;
  private Context b;
  private f c;

  private j(Context paramContext, String paramString, f paramf)
  {
    super(paramContext, paramString, null, 112);
    this.c = paramf;
    this.b = paramContext;
  }

  public static j a(Context paramContext, f paramf)
  {
    if (a == null)
      a = new j(paramContext, paramf.b(), paramf);
    return a;
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    Iterator localIterator = this.c.d().iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      try
      {
        Constructor localConstructor = localClass.getConstructor(new Class[] { Context.class });
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.b;
        ((k)localConstructor.newInstance(arrayOfObject)).a(paramSQLiteDatabase);
      }
      catch (Exception localException)
      {
        Log.e("SQLiteManager.onCreate", "create table  " + localClass.getName(), localException);
      }
    }
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Iterator localIterator = this.c.d().iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      try
      {
        Constructor localConstructor = localClass.getConstructor(new Class[] { Context.class });
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.b;
        ((k)localConstructor.newInstance(arrayOfObject)).a(paramSQLiteDatabase, paramInt1, paramInt2);
      }
      catch (Exception localException)
      {
        Log.e("SQLiteManager.onUpdate", "update table " + localClass.getName(), localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.j
 * JD-Core Version:    0.6.2
 */