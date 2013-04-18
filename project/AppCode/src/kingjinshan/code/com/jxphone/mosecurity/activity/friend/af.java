package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.widget.EditText;
import android.widget.Toast;
import com.ijinshan.kpref.EditTextPreference;
import com.jxphone.mosecurity.d.k;
import java.lang.reflect.Field;

final class af
  implements DialogInterface.OnClickListener
{
  af(ae paramae)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.a.l().getText().toString();
    k localk = k.a(this.a.b);
    if ((str == null) || ("".equals(str)))
      Toast.makeText(this.a.b, this.a.b.getString(2131428877), 0).show();
    while (true)
    {
      return;
      if (str.length() < 6)
      {
        Toast.makeText(this.a.b, this.a.b.getString(2131428879), 0).show();
        continue;
      }
      if (str.length() > 12)
      {
        Toast.makeText(this.a.b, this.a.b.getString(2131428880), 0).show();
        continue;
      }
      if (localk.a(str) == 1)
      {
        Toast.makeText(this.a.b, this.a.b.getString(2131428930), 0).show();
        continue;
      }
      try
      {
        Field localField = paramDialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
        localField.setAccessible(true);
        localField.set(paramDialogInterface, Boolean.valueOf(true));
        localk.c(str);
      }
      catch (Exception localException)
      {
        while (true)
          Log.e("FriendSettingActivity>>initDummyPasswordPreference", localException.getMessage(), localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.af
 * JD-Core Version:    0.6.2
 */