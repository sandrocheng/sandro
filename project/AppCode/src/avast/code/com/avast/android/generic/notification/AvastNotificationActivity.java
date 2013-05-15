package com.avast.android.generic.notification;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.m;
import java.util.List;

public class AvastNotificationActivity extends BaseSinglePaneActivity
{
  private void a()
  {
    try
    {
      boolean bool2 = b();
      bool1 = bool2;
      if (bool1)
        finish();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.b("Can not count notifications", localException);
        boolean bool1 = false;
      }
    }
  }

  private boolean b()
  {
    j localj = (j)ad.a(this, j.class);
    if (localj.d().size() > 1);
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      if (localj.d().size() != 0)
        break;
      localj.a(this);
    }
    AvastPendingIntent localAvastPendingIntent = ((a)localj.d().get(0)).g;
    Intent localIntent;
    if (localAvastPendingIntent != null)
    {
      localIntent = localAvastPendingIntent.a(this);
      if (localIntent != null)
        switch (b.a[localAvastPendingIntent.b().ordinal()])
        {
        default:
          localj.a(this, localIntent);
        case 1:
        }
    }
    while (true)
    {
      bool = true;
      break;
      startService(localIntent);
    }
  }

  public static void call(Context paramContext, Intent paramIntent)
  {
    paramContext.startActivity(new Intent(paramContext, AvastNotificationActivity.class));
  }

  protected Fragment d()
  {
    return new AvastNotificationFragment();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e = true;
    a();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    a();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.AvastNotificationActivity
 * JD-Core Version:    0.6.2
 */