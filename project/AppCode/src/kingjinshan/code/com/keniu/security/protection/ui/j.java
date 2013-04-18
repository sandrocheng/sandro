package com.keniu.security.protection.ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class j
  implements View.OnClickListener
{
  j(PreventTheftGuideECActivity paramPreventTheftGuideECActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.c.getText().toString();
    int j;
    int i;
    if (TextUtils.isEmpty(str))
    {
      j = 2131429309;
      i = 0;
      if (i == 0)
        break label129;
      Toast.makeText(this.a, 2131429313, 0).show();
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, PreventTheftGuideCompleteActivity.class);
      this.a.startActivity(localIntent);
    }
    while (true)
    {
      return;
      if (!Pattern.compile("1[0-9]{10}").matcher(str).matches())
      {
        j = 2131429310;
        i = 0;
        break;
      }
      ag.a(this.a.getApplicationContext(), str);
      ag.c(this.a.getApplicationContext(), null);
      i = 1;
      j = 0;
      break;
      label129: Toast.makeText(this.a, j, 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.j
 * JD-Core Version:    0.6.2
 */