package com.avast.android.mobilesecurity.app.scanner;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.b;
import com.avast.android.mobilesecurity.app.fileshield.v;
import com.avast.android.mobilesecurity.t;

class ak
  implements View.OnClickListener
{
  ak(VirusShieldActivity paramVirusShieldActivity)
  {
  }

  public void onClick(View paramView)
  {
    t localt;
    if (VirusShieldActivity.a(this.a) != null)
    {
      localt = (t)ad.a(this.a, t.class);
      if (!VirusShieldActivity.b(this.a))
        break label125;
      f localf = new f(this.a);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = VirusShieldActivity.c(this.a);
      b.a(localf, arrayOfString);
      v.a().c(VirusShieldActivity.c(this.a));
      if ((localt.ar() == 0) && (localt.as() == 1) && (localt.at() == 0) && (localt.au() == 0))
        VirusShieldActivity.d(this.a);
    }
    while (true)
    {
      this.a.finish();
      return;
      label125: Intent localIntent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + VirusShieldActivity.e(this.a)));
      this.a.startActivity(localIntent);
      if ((localt.ar() == 1) && (localt.as() == 0) && (localt.at() == 0) && (localt.au() == 0))
        VirusShieldActivity.d(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ak
 * JD-Core Version:    0.6.2
 */