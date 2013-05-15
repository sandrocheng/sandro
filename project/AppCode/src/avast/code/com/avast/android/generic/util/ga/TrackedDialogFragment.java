package com.avast.android.generic.util.ga;

import android.support.v4.app.DialogFragment;
import com.google.analytics.tracking.android.bo;

public abstract class TrackedDialogFragment extends DialogFragment
{
  public abstract String a();

  public void onResume()
  {
    super.onResume();
    bo localbo = a.a();
    String str = a();
    if (str != null)
      localbo.c(str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ga.TrackedDialogFragment
 * JD-Core Version:    0.6.2
 */