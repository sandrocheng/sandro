package com.avast.android.generic.notification;

import android.database.ContentObserver;
import android.os.Handler;
import android.support.v4.app.LoaderManager;

class g extends ContentObserver
{
  public g(AvastNotificationFragment paramAvastNotificationFragment, Handler paramHandler)
  {
    super(paramHandler);
  }

  public boolean deliverSelfNotifications()
  {
    return false;
  }

  public void onChange(boolean paramBoolean)
  {
    if ((this.a.getActivity() != null) && (this.a.isAdded()) && (this.a.isVisible()))
      AvastNotificationFragment.a(this.a).restartLoader(10005, null, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.g
 * JD-Core Version:    0.6.2
 */