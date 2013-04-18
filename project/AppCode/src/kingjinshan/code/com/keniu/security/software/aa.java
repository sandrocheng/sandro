package com.keniu.security.software;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class aa
  implements View.OnClickListener
{
  aa(SoftwareManager2 paramSoftwareManager2)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/thread-22646216-1-1.html"));
    if (this.a.getPackageManager().queryIntentActivities(localIntent, 0).size() == 0);
    while (true)
    {
      return;
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.aa
 * JD-Core Version:    0.6.2
 */