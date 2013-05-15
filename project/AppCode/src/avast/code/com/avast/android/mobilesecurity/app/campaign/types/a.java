package com.avast.android.mobilesecurity.app.campaign.types;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.avast.android.mobilesecurity.app.campaign.b;
import com.avast.android.mobilesecurity.app.campaign.h;
import java.util.List;

class a
  implements View.OnClickListener
{
  a(SecureLinePopup paramSecureLinePopup, Context paramContext, h paramh, CheckBox paramCheckBox, b paramb)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent1 = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.avast.android.vpn"));
    localIntent1.addFlags(268435456);
    if (this.a.getPackageManager().queryIntentActivities(localIntent1, 65536).size() > 0)
      this.a.startActivity(localIntent1);
    while (true)
    {
      this.b.a();
      if (this.c.isChecked())
        this.d.a(this.e);
      return;
      Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.avast.com/secure-line-vpn"));
      localIntent2.addFlags(268435456);
      this.a.startActivity(localIntent2);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.campaign.types.a
 * JD-Core Version:    0.6.2
 */