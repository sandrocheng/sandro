package com.tencent.tmsecure.module.plugin;

import android.content.ContentValues;
import android.database.Cursor;

public abstract interface IPluginDatabase
{
  public abstract void close();

  public abstract int delete(String paramString1, String paramString2, String[] paramArrayOfString);

  public abstract boolean deleteTable(String paramString);

  public abstract void execSQL(String paramString);

  public abstract void execTransaction(Runnable paramRunnable);

  public abstract long insert(String paramString1, String paramString2, ContentValues paramContentValues);

  public abstract Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5);

  public abstract int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.IPluginDatabase
 * JD-Core Version:    0.6.2
 */