package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import com.keniu.security.a;

final class ba
  implements AdapterView.OnItemClickListener
{
  ba(NotificationPreferenceActivity paramNotificationPreferenceActivity, bc parambc)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Integer localInteger = this.a.a(paramInt);
    switch (NotificationPreferenceActivity.a(this.b))
    {
    default:
      return;
    case 0:
      NotificationPreferenceActivity.b(this.b).d(localInteger.intValue());
    case 1:
    }
    while (true)
    {
      NotificationPreferenceActivity.c(this.b).setImageResource(localInteger.intValue());
      break;
      NotificationPreferenceActivity.b(this.b).e(localInteger.intValue());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ba
 * JD-Core Version:    0.6.2
 */