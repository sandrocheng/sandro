package com.avast.android.mobilesecurity.app.webshield;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.engine.i;

class e
  implements View.OnClickListener
{
  e(SiteCorrectActivity paramSiteCorrectActivity, String paramString)
  {
  }

  public void onClick(View paramView)
  {
    i.a(SiteCorrectActivity.c(this.b).toString());
    WebshieldService.b(this.a);
    Intent localIntent = new Intent(this.b, WebshieldService.class);
    localIntent.putExtra("redirect_browser", true);
    localIntent.putExtra("browser_type", SiteCorrectActivity.d(this.b).a());
    if (SiteCorrectActivity.e(this.b) != null)
      localIntent.putExtra("tab_id", SiteCorrectActivity.e(this.b));
    localIntent.setData(SiteCorrectActivity.c(this.b));
    this.b.startService(localIntent);
    this.b.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.e
 * JD-Core Version:    0.6.2
 */