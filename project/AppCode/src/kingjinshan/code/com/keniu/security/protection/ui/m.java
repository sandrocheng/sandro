package com.keniu.security.protection.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class m
  implements View.OnClickListener
{
  m(PreventTheftMainActivity paramPreventTheftMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231250:
    case 2131231251:
    case 2131231252:
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.a, PreventTheftHelpActivity.class);
      localIntent.putExtra(PreventTheftHelpActivity.a, this.a.getString(2131429216));
      localIntent.putExtra(PreventTheftHelpActivity.b, "file:///android_asset/html/pritection_help.html");
      this.a.startActivity(localIntent);
      continue;
      this.a.startActivity(new Intent(this.a, PreventTheftCommandActivity.class));
      continue;
      this.a.startActivity(new Intent(this.a, PreventTheftSettingActivity.class));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.m
 * JD-Core Version:    0.6.2
 */