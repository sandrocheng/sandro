package com.google.analytics.tracking.android;

import android.preference.PreferenceActivity;

public class TrackedPreferenceActivity extends PreferenceActivity
{
  protected void onStart()
  {
    super.onStart();
    p.a().a(this);
  }

  protected void onStop()
  {
    super.onStop();
    p.a().b(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.TrackedPreferenceActivity
 * JD-Core Version:    0.6.2
 */