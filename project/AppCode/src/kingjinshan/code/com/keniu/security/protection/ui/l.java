package com.keniu.security.protection.ui;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class l
  implements AdapterView.OnItemClickListener
{
  l(PreventTheftMainActivity paramPreventTheftMainActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    PreventTheftMainActivity localPreventTheftMainActivity = this.a;
    Intent localIntent = new Intent(localPreventTheftMainActivity, PreventTheftExperienceInfoActivity.class);
    localIntent.putExtra("type", paramInt);
    localPreventTheftMainActivity.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.l
 * JD-Core Version:    0.6.2
 */