package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kpref.Preference;

final class ci
  implements DialogInterface.OnClickListener
{
  ci(IpDialSettingsActivity paramIpDialSettingsActivity, TextView paramTextView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (IpDialSettingsActivity.n(this.b))
    {
      if ((TextUtils.isEmpty(this.a.getText().toString())) || (this.a.getText().toString().length() <= 0))
      {
        String str = dc.k("未选择任何IP号码");
        if (str == "不选择任何IP号码")
          IpDialSettingsActivity.d(this.b).a("未选择任何IP号码");
        while (true)
        {
          Toast.makeText(this.b, 2131427469, 0).show();
          return;
          IpDialSettingsActivity.d(this.b).a(str);
        }
      }
      IpDialSettingsActivity.b(this.b, false);
      dc.j(IpDialSettingsActivity.o(this.b));
      dc.m(this.a.getText().toString());
      IpDialSettingsActivity.e(this.b, this.a.getText().toString());
      IpDialSettingsActivity.d(this.b).a(IpDialSettingsActivity.p(this.b));
      this.a.setVisibility(8);
    }
    while (true)
    {
      this.b.removeDialog(20480);
      break;
      dc.j(IpDialSettingsActivity.o(this.b));
      if ((TextUtils.isEmpty(IpDialSettingsActivity.o(this.b))) || (IpDialSettingsActivity.o(this.b).equals(IpDialSettingsActivity.m(this.b)[0])))
        IpDialSettingsActivity.d(this.b).a("未选择任何IP号码");
      else
        IpDialSettingsActivity.d(this.b).a(IpDialSettingsActivity.o(this.b));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ci
 * JD-Core Version:    0.6.2
 */