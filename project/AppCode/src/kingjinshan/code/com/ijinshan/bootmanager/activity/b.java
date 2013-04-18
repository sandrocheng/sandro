package com.ijinshan.bootmanager.activity;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class b
  implements View.OnClickListener
{
  b(AutoBootMangerActivity paramAutoBootMangerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(new Intent(this.a, AutoBootHelpActivity.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.b
 * JD-Core Version:    0.6.2
 */