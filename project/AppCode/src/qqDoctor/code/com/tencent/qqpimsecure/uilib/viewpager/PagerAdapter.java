package com.tencent.qqpimsecure.uilib.viewpager;

import android.os.Parcelable;
import android.view.View;

public abstract class PagerAdapter
{
  public static final int POSITION_NONE = -2;
  public static final int POSITION_UNCHANGED = -1;
  private DataSetObserver mObserver;

  public abstract void destroyItem(View paramView, int paramInt, Object paramObject);

  public abstract void finishUpdate(View paramView);

  public abstract int getCount();

  public int getItemPosition(Object paramObject)
  {
    return -1;
  }

  public abstract Object instantiateItem(View paramView, int paramInt);

  public abstract boolean isViewFromObject(View paramView, Object paramObject);

  public void notifyDataSetChanged()
  {
    if (this.mObserver != null)
      this.mObserver.onDataSetChanged();
  }

  public abstract void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader);

  public abstract Parcelable saveState();

  void setDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    this.mObserver = paramDataSetObserver;
  }

  public abstract void startUpdate(View paramView);

  static abstract interface DataSetObserver
  {
    public abstract void onDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.viewpager.PagerAdapter
 * JD-Core Version:    0.6.2
 */