package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.d.k;
import com.keniu.security.a;

final class ae
  implements DialogInterface.OnClickListener
{
  ae(MainActivity paramMainActivity, View paramView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TextView localTextView1 = (TextView)this.a.findViewById(2131231570);
    TextView localTextView2 = (TextView)this.a.findViewById(2131231572);
    String str1 = localTextView1.getText().toString();
    String str2 = localTextView2.getText().toString();
    int i;
    if (TextUtils.isEmpty(str1))
    {
      i = 2131428869;
      this.b.f = false;
      Toast.makeText(this.b, i, 1).show();
      if (!this.b.f)
        break label267;
      a.a(this.b).c(false);
      paramDialogInterface.dismiss();
      MainActivity.a(paramDialogInterface, true);
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(str2))
      {
        i = 2131428870;
        this.b.f = false;
        break;
      }
      if (!str1.equals(str2))
      {
        this.b.f = false;
        i = 2131428874;
        break;
      }
      if (str1.length() < 6)
      {
        this.b.f = false;
        i = 2131428871;
        break;
      }
      if (str1.length() > 12)
      {
        this.b.f = false;
        i = 2131428872;
        break;
      }
      this.b.f = true;
      SharedPreferences.Editor localEditor = t.b(this.b).edit();
      localEditor.putString("safe_password", k.d(str1));
      localEditor.commit();
      i = 2131428868;
      break;
      label267: MainActivity.a(paramDialogInterface, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ae
 * JD-Core Version:    0.6.2
 */