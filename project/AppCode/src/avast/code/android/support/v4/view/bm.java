package android.support.v4.view;

import android.database.DataSetObserver;

class bm extends DataSetObserver
{
  private bm(ViewPager paramViewPager)
  {
  }

  public void onChanged()
  {
    this.a.d();
  }

  public void onInvalidated()
  {
    this.a.d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.bm
 * JD-Core Version:    0.6.2
 */