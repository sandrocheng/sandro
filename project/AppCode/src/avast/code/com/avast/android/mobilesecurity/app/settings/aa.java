package com.avast.android.mobilesecurity.app.settings;

import a.a.a.a.a.a;
import android.content.Context;
import android.os.AsyncTask;
import android.text.format.Time;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.k;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.al;
import com.avast.android.mobilesecurity.engine.i;
import java.util.Date;

class aa extends AsyncTask
{
  private Context b;

  private aa(SettingsUpdatesFragment paramSettingsUpdatesFragment, Context paramContext)
  {
    this.b = paramContext;
  }

  protected String a(Void[] paramArrayOfVoid)
  {
    al localal = i.a(this.b, null);
    long l;
    if (localal != null)
    {
      l = localal.b.getTime();
      if (m.a())
      {
        Time localTime = new Time();
        localTime.set(l);
        m.c("SettingsFragment lastUpdateTime from VPS: " + localTime.format3339(false));
      }
    }
    while (true)
    {
      try
      {
        String str3 = " (" + k.a(l, System.currentTimeMillis(), 60000L, 131096, this.b) + ")";
        str2 = str3;
        str1 = localal.a + str2;
        return str1;
      }
      catch (Exception localException)
      {
        a.a().a("Issue related to AVD-406", localException);
        String str2 = "";
        continue;
      }
      String str1 = this.b.getString(2131493802);
    }
  }

  protected void a(String paramString)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      SettingsUpdatesFragment.a(this.a).d(this.b.getString(2131493801, new Object[] { paramString }));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.aa
 * JD-Core Version:    0.6.2
 */