package com.keniu.security.main;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class ab
  implements View.OnClickListener
{
  ab(MainActivity paramMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/forum-6421-1.html"));
    if (this.a.getPackageManager().queryIntentActivities(localIntent, 65536).size() == 0);
    while (true)
    {
      return;
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ab
 * JD-Core Version:    0.6.2
 */