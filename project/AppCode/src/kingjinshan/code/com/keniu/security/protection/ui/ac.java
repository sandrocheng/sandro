package com.keniu.security.protection.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.Toast;
import com.ijinshan.kpref.PreferenceScreen;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ac
  implements DialogInterface.OnClickListener
{
  ac(PreventTheftSettingActivity paramPreventTheftSettingActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = PreventTheftSettingActivity.a(this.a).getText().toString();
    int i;
    if (TextUtils.isEmpty(str))
      i = 2131429309;
    while (true)
    {
      Toast.makeText(this.a, i, 1).show();
      return;
      if (!Pattern.compile("1[0-9]{10}").matcher(str).matches())
      {
        i = 2131429310;
      }
      else
      {
        ag.a(this.a, str);
        PreventTheftSettingActivity.b(this.a).a(ag.a(this.a));
        i = 2131429312;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.ac
 * JD-Core Version:    0.6.2
 */