package com.tencent.qqpimsecure.uilib.common;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;

public class ViewUtil
{
  public static void resetListViewHeight(ListView paramListView)
  {
    ListAdapter localListAdapter = paramListView.getAdapter();
    if (localListAdapter == null);
    while (true)
    {
      return;
      int i = 0;
      int j = 0;
      while (i < localListAdapter.getCount())
      {
        View localView = localListAdapter.getView(i, null, paramListView);
        localView.measure(0, 0);
        j += localView.getMeasuredHeight();
        i++;
      }
      ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
      localLayoutParams.height = (j + paramListView.getDividerHeight() * (-1 + localListAdapter.getCount()));
      paramListView.setLayoutParams(localLayoutParams);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.common.ViewUtil
 * JD-Core Version:    0.6.2
 */