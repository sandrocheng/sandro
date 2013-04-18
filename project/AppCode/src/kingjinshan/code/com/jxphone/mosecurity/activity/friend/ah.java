package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.util.Log;
import android.widget.Toast;
import com.ijinshan.kpref.EditTextPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;
import com.jxphone.mosecurity.d.k;
import java.lang.reflect.Field;

final class ah
  implements m
{
  ah(FriendSettingActivity paramFriendSettingActivity)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    String str = (String)paramObject;
    k localk = k.a(this.a);
    boolean bool;
    if ((str == null) || ("".equals(str)))
    {
      Toast.makeText(this.a, this.a.getString(2131428877), 0).show();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (str.length() < 6)
      {
        Toast.makeText(this.a, this.a.getString(2131428879), 0).show();
        bool = false;
        continue;
      }
      if (str.length() > 12)
      {
        Toast.makeText(this.a, this.a.getString(2131428880), 0).show();
        bool = false;
        continue;
      }
      if (localk.a(str) == 1)
      {
        Toast.makeText(this.a, this.a.getString(2131428930), 0).show();
        bool = false;
        continue;
      }
      Dialog localDialog = ((EditTextPreference)paramPreference).j();
      try
      {
        Field localField = localDialog.getClass().getSuperclass().getDeclaredField("mShowing");
        localField.setAccessible(true);
        localField.set(localDialog, Boolean.valueOf(true));
        localDialog.dismiss();
        bool = true;
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
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ah
 * JD-Core Version:    0.6.2
 */