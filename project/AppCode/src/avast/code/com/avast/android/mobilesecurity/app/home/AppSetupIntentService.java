package com.avast.android.mobilesecurity.app.home;

import a.a.a.a.a.a;
import android.app.IntentService;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import com.avast.android.mobilesecurity.s;

public class AppSetupIntentService extends IntentService
{
  public AppSetupIntentService()
  {
    super("AppSetupIntentService");
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    try
    {
      s.a(this).getWritableDatabase();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
        a.a().a("Caught AVD-429, nothing else can be done.", localSQLiteException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.AppSetupIntentService
 * JD-Core Version:    0.6.2
 */