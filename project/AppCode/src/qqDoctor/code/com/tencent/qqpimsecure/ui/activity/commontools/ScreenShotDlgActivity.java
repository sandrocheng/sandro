package com.tencent.qqpimsecure.ui.activity.commontools;

import agc;
import agd;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.util.Iterator;
import java.util.List;

public class ScreenShotDlgActivity extends Activity
{
  public static boolean a = false;
  private ButtonView b;
  private ButtonView c;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903058);
    a = true;
    this.b = ((ButtonView)findViewById(2131230770));
    this.c = ((ButtonView)findViewById(2131230763));
    Intent localIntent1 = new Intent("android.intent.action.MAIN", null);
    localIntent1.addCategory("android.intent.category.LAUNCHER");
    Iterator localIterator = getPackageManager().queryIntentActivities(localIntent1, 0).iterator();
    Intent localIntent2;
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      if ((localResolveInfo.activityInfo.name.endsWith(".Su")) || (localResolveInfo.activityInfo.name.endsWith(".su")))
      {
        localIntent1.setClassName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name);
        localIntent1.setFlags(524288);
        localIntent2 = localIntent1;
        if (localIntent2 == null)
          break label212;
        this.b.setVisibility(0);
        this.b.setOnClickListener(new agc(this, localIntent2));
      }
    }
    while (true)
    {
      this.c.setOnClickListener(new agd(this));
      return;
      localIntent2 = null;
      break;
      label212: this.b.setVisibility(8);
    }
  }

  public void onDestroy()
  {
    a = false;
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.commontools.ScreenShotDlgActivity
 * JD-Core Version:    0.6.2
 */