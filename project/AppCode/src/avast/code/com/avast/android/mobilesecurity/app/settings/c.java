package com.avast.android.mobilesecurity.app.settings;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import com.avast.android.generic.util.l;
import com.avast.android.mobilesecurity.engine.i;

class c extends AsyncTask
{
  private Context b;

  private c(SettingsAccountFragment paramSettingsAccountFragment, Context paramContext)
  {
    this.b = paramContext;
  }

  protected Bundle a(Void[] paramArrayOfVoid)
  {
    Bundle localBundle1 = new Bundle();
    if (l.b(this.b));
    for (Integer localInteger = null; ; localInteger = Integer.valueOf(1))
    {
      Bundle localBundle2 = i.b(this.b, localInteger);
      if (localBundle2 != null)
        localBundle1.putBundle("community_iq", localBundle2);
      return localBundle1;
    }
  }

  protected void a(Bundle paramBundle)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      SettingsAccountFragment.a(this.a, paramBundle);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.settings.c
 * JD-Core Version:    0.6.2
 */