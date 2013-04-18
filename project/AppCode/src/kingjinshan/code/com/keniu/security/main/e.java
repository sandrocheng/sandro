package com.keniu.security.main;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class e
  implements View.OnClickListener
{
  e(a parama)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net"));
    if (a.d(this.a).getPackageManager().queryIntentActivities(localIntent, 0).size() == 0);
    while (true)
    {
      return;
      a.d(this.a).startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.e
 * JD-Core Version:    0.6.2
 */