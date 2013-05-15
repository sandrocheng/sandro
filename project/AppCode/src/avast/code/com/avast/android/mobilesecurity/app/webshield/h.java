package com.avast.android.mobilesecurity.app.webshield;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.engine.i;

class h
  implements View.OnClickListener
{
  h(WebshieldActivity paramWebshieldActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (WebshieldActivity.a(this.a) != null)
    {
      Intent localIntent = new Intent(this.a, WebshieldService.class);
      localIntent.putExtra("redirect_browser", true);
      localIntent.putExtra("browser_type", WebshieldActivity.b(this.a).a());
      if (WebshieldActivity.c(this.a) != null)
        localIntent.putExtra("tab_id", WebshieldActivity.c(this.a));
      localIntent.setData(WebshieldActivity.a(this.a));
      this.a.startService(localIntent);
    }
    if (WebshieldActivity.a(this.a) != null)
      i.a(WebshieldActivity.a(this.a).toString());
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.h
 * JD-Core Version:    0.6.2
 */