package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;

public class FireWallSmsAndCallActivity extends Activity
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230841:
    case 2131230842:
    }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent();
      localIntent2.setClass(this, FirewallSmsActivity.class);
      startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent();
      localIntent1.setClass(this, FirewallCallActivity.class);
      startActivity(localIntent1);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903053);
    ((RelativeLayout)findViewById(2131230841)).setOnClickListener(this);
    ((RelativeLayout)findViewById(2131230842)).setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FireWallSmsAndCallActivity
 * JD-Core Version:    0.6.2
 */