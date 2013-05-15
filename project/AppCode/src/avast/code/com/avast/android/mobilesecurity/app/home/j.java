package com.avast.android.mobilesecurity.app.home;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.Application;

class j
  implements View.OnClickListener
{
  j(HomeActivity paramHomeActivity)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = Application.a(this.a.getApplicationContext());
    this.a.a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.j
 * JD-Core Version:    0.6.2
 */