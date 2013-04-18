package com.ijinshan.kinghelper.firewall;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import java.util.ArrayList;

final class ap
  implements View.OnClickListener
{
  ap(FirewallSettingsKeysActivity paramFirewallSettingsKeysActivity, EditText paramEditText)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString().trim();
    if ("".equals(str))
      Toast.makeText(this.b, 2131427419, 0).show();
    while (true)
    {
      return;
      if (FirewallSettingsKeysActivity.a(str))
      {
        Toast.makeText(this.b, 2131427420, 0).show();
      }
      else
      {
        if (!FirewallSettingsKeysActivity.a(this.b).contains(str))
          FirewallSettingsKeysActivity.a(this.b).add(str);
        FirewallSettingsKeysActivity.b(this.b).notifyDataSetChanged();
        this.a.setText("");
        this.a.clearFocus();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ap
 * JD-Core Version:    0.6.2
 */