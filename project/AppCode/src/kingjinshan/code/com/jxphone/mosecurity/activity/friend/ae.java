package com.jxphone.mosecurity.activity.friend;

import android.util.Log;
import com.ijinshan.kpref.EditTextPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.util.ap;
import java.lang.reflect.Field;

final class ae
  implements n
{
  ae(FriendSettingActivity paramFriendSettingActivity, EditTextPreference paramEditTextPreference)
  {
  }

  public final boolean a(Preference paramPreference)
  {
    Log.e("FriendSettingActivity>>initDummyPasswordPreference", "initDummyPasswordPreference>>zhangyong@onPreferenceClick>>" + paramPreference.A());
    ap localap = (ap)this.a.j();
    try
    {
      Field localField = localap.getClass().getSuperclass().getDeclaredField("mShowing");
      localField.setAccessible(true);
      localField.set(localap, Boolean.valueOf(false));
      localap.a(-1, this.b.getString(17039370), new af(this));
      localap.a(-2, this.b.getString(17039360), new ag(this));
      return false;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("FriendSettingActivity>>initDummyPasswordPreference", localException.getMessage(), localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ae
 * JD-Core Version:    0.6.2
 */