package com.jxphone.mosecurity.activity.friend;

import android.text.Editable;
import android.text.TextWatcher;
import com.keniu.security.a;

final class bb
  implements TextWatcher
{
  bb(NotificationPreferenceActivity paramNotificationPreferenceActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str = paramEditable.toString();
    switch (NotificationPreferenceActivity.a(this.a))
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      NotificationPreferenceActivity.b(this.a).c(str);
      continue;
      NotificationPreferenceActivity.b(this.a).d(str);
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bb
 * JD-Core Version:    0.6.2
 */