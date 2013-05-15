package com.avast.android.generic.notification;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class c
  implements AdapterView.OnItemClickListener
{
  c(AvastNotificationFragment paramAvastNotificationFragment)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    AvastPendingIntent localAvastPendingIntent = ((i)paramView.getTag()).f;
    Intent localIntent;
    if (localAvastPendingIntent != null)
    {
      localIntent = localAvastPendingIntent.a(this.a.getActivity());
      if (localIntent != null)
        switch (f.a[localAvastPendingIntent.b().ordinal()])
        {
        default:
          AvastNotificationFragment.b(this.a).a(this.a.getActivity(), localIntent);
        case 1:
        }
    }
    while (true)
    {
      return;
      this.a.getActivity().startService(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.c
 * JD-Core Version:    0.6.2
 */