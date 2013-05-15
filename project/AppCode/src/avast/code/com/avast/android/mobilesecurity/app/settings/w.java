package com.avast.android.mobilesecurity.app.settings;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import com.avast.android.generic.util.l;
import com.avast.android.mobilesecurity.engine.al;
import com.avast.android.mobilesecurity.engine.i;

class w extends AsyncTask
{
  private Context b;

  private w(SettingsFragment paramSettingsFragment, Context paramContext)
  {
    this.b = paramContext;
  }

  protected Bundle a(Void[] paramArrayOfVoid)
  {
    Bundle localBundle1 = new Bundle();
    localBundle1.putString("app_name", this.a.getString(2131493332));
    al localal = i.a(this.b, null);
    if (localal != null)
    {
      localBundle1.putString("vps_version", localal.a);
      localBundle1.putLong("vps_definitions_count", localal.c);
    }
    boolean bool = l.b(this.a.getActivity());
    Integer localInteger = null;
    if (bool);
    while (true)
    {
      Bundle localBundle2 = i.b(this.b, localInteger);
      if (localBundle2 != null)
        localBundle1.putBundle("community_iq", localBundle2);
      return localBundle1;
      localInteger = Integer.valueOf(1);
    }
  }

  protected void a(Bundle paramBundle)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      SettingsFragment.a(this.a, paramBundle);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.w
 * JD-Core Version:    0.6.2
 */