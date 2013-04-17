package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.view.LayoutInflater;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;

public abstract class BasePinnedListView<T> extends BaseListView<T>
{
  public BasePinnedListView(Context paramContext)
  {
    super(paramContext);
  }

  public abstract BasePinnedListAdapter<T> createAdapter();

  public BasePinnedListAdapter<T> getAdapter()
  {
    return (BasePinnedListAdapter)super.getAdapter();
  }

  public PinnedHeaderListView getListView()
  {
    return (PinnedHeaderListView)super.getListView();
  }

  public abstract boolean isPinnedHeaderListView();

  public void onCreate()
  {
    super.onCreate();
    if (isPinnedHeaderListView())
    {
      getListView().setPinnedHeaderView(LayoutInflater.from(this.mContext).inflate(2130903316, getListView(), false));
      getListView().setOnScrollListener(getAdapter());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BasePinnedListView
 * JD-Core Version:    0.6.2
 */