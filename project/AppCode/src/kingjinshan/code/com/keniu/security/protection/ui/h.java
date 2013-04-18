package com.keniu.security.protection.ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class h
  implements View.OnClickListener
{
  h(PreventTheftGuideActivity paramPreventTheftGuideActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.b.getText().toString();
    String str2 = this.a.c.getText().toString();
    int j;
    int i;
    if (TextUtils.isEmpty(str1))
    {
      j = 2131428869;
      i = 0;
      if (i == 0)
        break label226;
      Toast.makeText(this.a, j, 0).show();
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, PreventTheftGuideECActivity.class);
      this.a.startActivity(localIntent);
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(str2))
      {
        j = 2131428870;
        i = 0;
        break;
      }
      if (!str1.equals(str2))
      {
        j = 2131428874;
        i = 0;
        break;
      }
      if (str1.length() < 6)
      {
        j = 2131428871;
        i = 0;
        break;
      }
      if (str1.length() > 12)
      {
        j = 2131428872;
        i = 0;
        break;
      }
      if (str1.equals("########"))
      {
        i = 1;
        j = 2131428868;
        break;
      }
      if (!Pattern.compile("[A-Za-z0-9]{6,12}").matcher(str1).matches())
      {
        j = 2131428881;
        i = 0;
        break;
      }
      ag.d(this.a, str1);
      i = 1;
      j = 2131428868;
      break;
      label226: Toast.makeText(this.a, j, 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.h
 * JD-Core Version:    0.6.2
 */