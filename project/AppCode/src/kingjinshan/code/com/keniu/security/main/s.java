package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.d.k;

final class s
  implements DialogInterface.OnClickListener
{
  s(MainActivity paramMainActivity, TextView paramTextView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SharedPreferences localSharedPreferences = t.b(this.b);
    MainActivity.a(this.b, localSharedPreferences.getInt("friend_find_password_check_count", 5));
    switch (paramInt)
    {
    default:
    case -1:
    case -2:
    }
    while (true)
    {
      this.a.setText("");
      return;
      if (!k.a(this.b).b(this.a.getText().toString()))
        break;
      this.b.removeDialog(5);
      Toast.makeText(this.b, "验证成功，请重设密码！", 0).show();
      MainActivity.r(this.b);
      this.b.showDialog(6);
      MainActivity.a(paramDialogInterface, true);
      paramDialogInterface.dismiss();
    }
    MainActivity.s(this.b);
    if (MainActivity.t(this.b) <= 0)
    {
      Toast.makeText(this.b, "验证失败,请24小时后再试！", 0).show();
      MainActivity.a(paramDialogInterface, true);
      paramDialogInterface.dismiss();
      SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
      localEditor2.putLong("friend_find_password_check_time", System.currentTimeMillis());
      localEditor2.commit();
      this.b.removeDialog(5);
      this.b.removeDialog(11);
    }
    while (true)
    {
      SharedPreferences.Editor localEditor1 = localSharedPreferences.edit();
      localEditor1.putInt("friend_find_password_check_count", MainActivity.t(this.b));
      localEditor1.commit();
      MainActivity.a(paramDialogInterface, false);
      break;
      Toast.makeText(this.b, "验证失败,您还有" + MainActivity.t(this.b) + "次机会！", 0).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.s
 * JD-Core Version:    0.6.2
 */