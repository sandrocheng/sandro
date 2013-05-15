package android.support.v4.e;

import android.database.DataSetObserver;

class d extends DataSetObserver
{
  private d(a parama)
  {
  }

  public void onChanged()
  {
    this.a.mDataValid = true;
    this.a.notifyDataSetChanged();
  }

  public void onInvalidated()
  {
    this.a.mDataValid = false;
    this.a.notifyDataSetInvalidated();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.e.d
 * JD-Core Version:    0.6.2
 */