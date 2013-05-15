package com.avast.android.mobilesecurity.app.home;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.q;

class i
  implements View.OnClickListener
{
  i(HomeActivity paramHomeActivity)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", q.a());
    this.a.a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.i
 * JD-Core Version:    0.6.2
 */