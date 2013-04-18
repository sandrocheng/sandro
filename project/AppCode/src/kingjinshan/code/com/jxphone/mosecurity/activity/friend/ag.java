package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import java.lang.reflect.Field;

final class ag
  implements DialogInterface.OnClickListener
{
  ag(ae paramae)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      Field localField = paramDialogInterface.getClass().getSuperclass().getDeclaredField("mShowing");
      localField.setAccessible(true);
      localField.set(paramDialogInterface, Boolean.valueOf(true));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("FriendSettingActivity>>initDummyPasswordPreference", localException.getMessage(), localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ag
 * JD-Core Version:    0.6.2
 */