package com.jxphone.mosecurity.d;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class s extends SQLiteOpenHelper
{
  private static final Set a = new HashSet();
  private static int b = 1;

  private s(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, b);
  }

  public static SQLiteDatabase a(Context paramContext, String paramString)
  {
    return new s(paramContext, paramString).getWritableDatabase();
  }

  public static void a()
  {
    b = 4;
  }

  private static void a(SQLiteDatabase paramSQLiteDatabase, Cursor paramCursor)
  {
    if (paramCursor != null)
      paramCursor.close();
    if (paramSQLiteDatabase != null)
      paramSQLiteDatabase.close();
  }

  public static void a(t paramt)
  {
    a.add(paramt);
  }

  private static void a(String paramString)
  {
    a.remove(paramString);
  }

  private static int b()
  {
    return b;
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
      ((t)localIterator.next()).a(paramSQLiteDatabase);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
      ((t)localIterator.next()).a(paramSQLiteDatabase, paramInt1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.s
 * JD-Core Version:    0.6.2
 */