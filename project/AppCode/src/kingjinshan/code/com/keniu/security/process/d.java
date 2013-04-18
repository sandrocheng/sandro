package com.keniu.security.process;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class d
  implements View.OnClickListener
{
  d(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, ProcessConfigActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.d
 * JD-Core Version:    0.6.2
 */