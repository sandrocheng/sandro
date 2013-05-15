package android.support.v4.e;

import android.database.ContentObserver;
import android.os.Handler;

class c extends ContentObserver
{
  public c(a parama)
  {
    super(new Handler());
  }

  public boolean deliverSelfNotifications()
  {
    return true;
  }

  public void onChange(boolean paramBoolean)
  {
    this.a.onContentChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.e.c
 * JD-Core Version:    0.6.2
 */