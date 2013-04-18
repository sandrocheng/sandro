package com.jxphone.mosecurity.d;

import android.database.sqlite.SQLiteDatabase;

public abstract class t
{
  private final String a;

  public t(String paramString)
  {
    this.a = paramString;
  }

  public abstract void a(SQLiteDatabase paramSQLiteDatabase);

  public abstract void a(SQLiteDatabase paramSQLiteDatabase, int paramInt);

  public boolean equals(Object paramObject)
  {
    if (((paramObject instanceof String)) && (this.a.equals(paramObject)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int hashCode()
  {
    return this.a.hashCode();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.t
 * JD-Core Version:    0.6.2
 */