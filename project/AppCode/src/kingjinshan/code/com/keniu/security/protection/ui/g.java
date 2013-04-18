package com.keniu.security.protection.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class g
  implements View.OnClickListener
{
  g(PreventTheftFirstVisitActivity paramPreventTheftFirstVisitActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.finish();
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, PreventTheftGuideActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.g
 * JD-Core Version:    0.6.2
 */