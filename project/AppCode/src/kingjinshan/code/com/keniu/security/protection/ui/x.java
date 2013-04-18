package com.keniu.security.protection.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class x
  implements DialogInterface.OnClickListener
{
  x(PreventTheftSettingActivity paramPreventTheftSettingActivity, View paramView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TextView localTextView1 = (TextView)this.a.findViewById(2131231568);
    TextView localTextView2 = (TextView)this.a.findViewById(2131231570);
    TextView localTextView3 = (TextView)this.a.findViewById(2131231572);
    String str1 = localTextView1.getText().toString();
    String str2 = localTextView2.getText().toString();
    String str3 = localTextView3.getText().toString();
    int i;
    int j;
    if (TextUtils.isEmpty(str1))
    {
      i = 2131428875;
      j = 0;
      if (j == 0)
        break label277;
      PreventTheftSettingActivity.a(paramDialogInterface, true);
      ag.d(this.b, str2);
    }
    while (true)
    {
      Toast.makeText(this.b, i, 1).show();
      return;
      if (!ag.e(this.b, str1))
      {
        i = 2131428876;
        j = 0;
        break;
      }
      if (TextUtils.isEmpty(str2))
      {
        i = 2131428877;
        j = 0;
        break;
      }
      if (TextUtils.isEmpty(str3))
      {
        i = 2131428878;
        j = 0;
        break;
      }
      if (!str2.equals(str3))
      {
        i = 2131428882;
        j = 0;
        break;
      }
      if (str2.length() < 6)
      {
        i = 2131428879;
        j = 0;
        break;
      }
      if (str2.length() > 12)
      {
        i = 2131428880;
        j = 0;
        break;
      }
      if (!Pattern.compile("[A-Za-z0-9]{6,12}").matcher(str2).matches())
      {
        i = 2131428881;
        j = 0;
        break;
      }
      i = 2131428868;
      j = 1;
      break;
      label277: PreventTheftSettingActivity.a(paramDialogInterface, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.x
 * JD-Core Version:    0.6.2
 */