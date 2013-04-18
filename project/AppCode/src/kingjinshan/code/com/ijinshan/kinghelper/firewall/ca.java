package com.ijinshan.kinghelper.firewall;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.keniu.security.a;

final class ca
  implements View.OnClickListener
{
  ca(IpDialHeaderAddActivity paramIpDialHeaderAddActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if ((TextUtils.isEmpty(IpDialHeaderAddActivity.a(this.a).getText().toString())) || (IpDialHeaderAddActivity.a(this.a).getText().toString().length() <= 0))
      Toast.makeText(this.a, 2131427469, 0).show();
    while (true)
    {
      return;
      dc.m(IpDialHeaderAddActivity.a(this.a).getText().toString());
      dc.j("其他IP号码");
      a.a(this.a).W();
      this.a.finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ca
 * JD-Core Version:    0.6.2
 */