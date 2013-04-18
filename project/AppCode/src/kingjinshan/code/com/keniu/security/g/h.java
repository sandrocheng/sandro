package com.keniu.security.g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class h
  implements View.OnClickListener
{
  h(a parama)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/thread-22658154-1-1.html"));
    if (this.a.a.getPackageManager().queryIntentActivities(localIntent, 65536).size() == 0);
    while (true)
    {
      return;
      this.a.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.h
 * JD-Core Version:    0.6.2
 */