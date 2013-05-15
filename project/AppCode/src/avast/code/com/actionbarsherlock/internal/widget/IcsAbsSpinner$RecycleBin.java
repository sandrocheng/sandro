package com.actionbarsherlock.internal.widget;

import android.util.SparseArray;
import android.view.View;

class IcsAbsSpinner$RecycleBin
{
  private final SparseArray mScrapHeap = new SparseArray();

  IcsAbsSpinner$RecycleBin(IcsAbsSpinner paramIcsAbsSpinner)
  {
  }

  void clear()
  {
    SparseArray localSparseArray = this.mScrapHeap;
    int i = localSparseArray.size();
    for (int j = 0; j < i; j++)
    {
      View localView = (View)localSparseArray.valueAt(j);
      if (localView != null)
        IcsAbsSpinner.access$100(this.this$0, localView, true);
    }
    localSparseArray.clear();
  }

  View get(int paramInt)
  {
    View localView = (View)this.mScrapHeap.get(paramInt);
    if (localView != null)
      this.mScrapHeap.delete(paramInt);
    return localView;
  }

  public void put(int paramInt, View paramView)
  {
    this.mScrapHeap.put(paramInt, paramView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAbsSpinner.RecycleBin
 * JD-Core Version:    0.6.2
 */