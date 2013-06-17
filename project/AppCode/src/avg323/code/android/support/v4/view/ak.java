package android.support.v4.view;

import android.database.DataSetObserver;

class ak extends DataSetObserver
{
  private ak(ViewPager paramViewPager)
  {
  }

  public void onChanged()
  {
    this.a.a();
  }

  public void onInvalidated()
  {
    this.a.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ak
 * JD-Core Version:    0.6.2
 */