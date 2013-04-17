package com.tencent.tmsecure.module.plugin;

import android.database.sqlite.SQLiteDatabase;

public abstract class AbsPluginDatabaseFactor
{
  private String a;
  private int b;

  public AbsPluginDatabaseFactor(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = paramInt;
  }

  public final String getName()
  {
    return this.a;
  }

  public final int getVersion()
  {
    return this.b;
  }

  public abstract void onCreate(IPluginDatabase paramIPluginDatabase, SQLiteDatabase paramSQLiteDatabase);

  public void onUpgrade(IPluginDatabase paramIPluginDatabase, SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.plugin.AbsPluginDatabaseFactor
 * JD-Core Version:    0.6.2
 */