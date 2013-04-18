package com.jxphone.mosecurity.activity.friend;

import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.m;

final class ai
  implements m
{
  ai(FriendSettingActivity paramFriendSettingActivity, CharSequence[] paramArrayOfCharSequence)
  {
  }

  public final boolean a(Preference paramPreference, Object paramObject)
  {
    CharSequence localCharSequence = this.a[java.lang.Integer.parseInt(paramObject.toString())];
    paramPreference.a(this.b.getString(2131428892, new Object[] { localCharSequence }));
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ai
 * JD-Core Version:    0.6.2
 */