package android.support.v4.a;

import android.database.ContentObserver;
import android.os.Handler;

public final class n extends ContentObserver
{
  public n(m paramm)
  {
    super(new Handler());
  }

  public boolean deliverSelfNotifications()
  {
    return true;
  }

  public void onChange(boolean paramBoolean)
  {
    this.a.v();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.n
 * JD-Core Version:    0.6.2
 */