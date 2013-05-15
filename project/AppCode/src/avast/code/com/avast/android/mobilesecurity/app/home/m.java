package com.avast.android.mobilesecurity.app.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.service.UpdateService;

class m
  implements View.OnClickListener
{
  m(l paraml)
  {
  }

  public void onClick(View paramView)
  {
    UpdateService.a(this.a.a.getApplicationContext());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.m
 * JD-Core Version:    0.6.2
 */