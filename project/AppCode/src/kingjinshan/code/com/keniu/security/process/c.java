package com.keniu.security.process;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.Toast;

final class c
  implements View.OnClickListener
{
  c(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (ProcessManagerActivity.a(this.a) <= 0)
    {
      String str = this.a.getString(2131428656);
      Toast.makeText(this.a, str, 0).show();
    }
    while (true)
    {
      return;
      ProcessManagerActivity.b(this.a).invalidateViews();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.c
 * JD-Core Version:    0.6.2
 */