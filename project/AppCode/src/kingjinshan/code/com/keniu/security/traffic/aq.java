package com.keniu.security.traffic;

import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;

final class aq extends AsyncTask
{
  private static View a(Object[] paramArrayOfObject)
  {
    try
    {
      f localf = (f)paramArrayOfObject[0];
      PackageManager localPackageManager = (PackageManager)paramArrayOfObject[1];
      View localView2 = (View)paramArrayOfObject[2];
      if (!localf.i)
      {
        localf.h = localPackageManager.getApplicationIcon(localf.g);
        localf.i = true;
      }
      localView1 = localView2;
      return localView1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Log.e("DroidWall", "Error loading icon", localException);
        View localView1 = null;
      }
    }
  }

  private static void a(View paramView)
  {
    try
    {
      ap localap = (ap)paramView.getTag();
      ap.c(localap).setImageDrawable(ap.f(localap).h);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("DroidWall", "Error showing icon", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.aq
 * JD-Core Version:    0.6.2
 */