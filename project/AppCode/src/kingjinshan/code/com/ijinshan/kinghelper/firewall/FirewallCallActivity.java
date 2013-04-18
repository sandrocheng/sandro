package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.jxphone.mosecurity.a.a;
import com.jxphone.mosecurity.d.l;
import com.keniu.security.commumgr.CallLocateSettingActivity;
import com.keniu.security.commumgr.NumLocateQueryActivity;
import com.keniu.security.commumgr.OnekeyCallSettingActivity;
import com.keniu.security.h.b;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.rates.RatesRequestMainActivity;

public class FirewallCallActivity extends BaseTitleActivity
  implements View.OnClickListener
{
  protected static final boolean a = true;
  protected static final String b = "FirewallCallActivity";

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230769:
    case 2131230773:
    case 2131230777:
    case 2131230785:
    case 2131230790:
    case 2131230781:
    }
    while (true)
    {
      return;
      startActivity(new Intent(this, IpDialSettingsActivity.class));
      continue;
      startActivity(new Intent(this, NumLocateQueryActivity.class));
      continue;
      startActivity(new Intent(this, CallLocateSettingActivity.class));
      continue;
      startActivity(new Intent(this, OnekeyCallSettingActivity.class));
      continue;
      startActivity(new Intent(this, RatesRequestMainActivity.class));
      continue;
      startActivity(new Intent(this, FirewallCommonServiceQueryActivity.class));
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903046, 2131427345);
    if (paramBundle == null)
      a.i(this, "telman");
    findViewById(2131230773).setOnClickListener(this);
    findViewById(2131230777).setOnClickListener(this);
    findViewById(2131230769).setOnClickListener(this);
    findViewById(2131230781).setOnClickListener(this);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230790);
    if ((b.a()) || (b.a))
      localRelativeLayout.setVisibility(8);
    localRelativeLayout.setOnClickListener(this);
    View localView = findViewById(2131230785);
    ImageView localImageView = (ImageView)findViewById(2131230789);
    if ((!l.a()) && (OnekeyCallSettingActivity.a(this)))
    {
      localView.setOnClickListener(this);
      localImageView.setVisibility(0);
    }
    while (true)
    {
      return;
      localView.setVisibility(8);
      localImageView.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallCallActivity
 * JD-Core Version:    0.6.2
 */