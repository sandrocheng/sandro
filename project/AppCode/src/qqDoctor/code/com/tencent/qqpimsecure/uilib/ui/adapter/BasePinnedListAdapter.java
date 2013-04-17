package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView.IPinnedHeaderAdapter;
import java.util.List;

public abstract class BasePinnedListAdapter<T> extends BaseListAdapter<T>
  implements AbsListView.OnScrollListener, PinnedHeaderListView.IPinnedHeaderAdapter
{
  public BasePinnedListAdapter(Context paramContext, List<ListModel<T>> paramList)
  {
    super(paramContext, paramList);
  }

  private String getLabelText(int paramInt)
  {
    Object localObject = this.mItemModelList.get(paramInt);
    if ((localObject instanceof ItemModel));
    for (String str = ((ItemModel)localObject).getHeaderLabel(); ; str = "")
      return str;
  }

  public void configurePinnedHeader(View paramView, int paramInt1, int paramInt2)
  {
    Object localObject = (PinnedHeaderCache)paramView.getTag();
    if (localObject == null)
    {
      PinnedHeaderCache localPinnedHeaderCache = new PinnedHeaderCache();
      localPinnedHeaderCache.mHeaderView = ((TextView)paramView.findViewById(2131231606));
      paramView.setTag(localPinnedHeaderCache);
      localObject = localPinnedHeaderCache;
    }
    String str = getLabelText(paramInt1);
    ((PinnedHeaderCache)localObject).mHeaderView.setText(str);
  }

  public int getPinnedHeaderState(int paramInt)
  {
    int i;
    if ((paramInt < 0) || (this.mDataList == null) || (this.mDataList.size() == 0))
      i = 0;
    while (true)
    {
      return i;
      if (paramInt + 1 < this.mDataList.size())
      {
        String str1 = getLabelText(paramInt);
        String str2 = getLabelText(paramInt + 1);
        if ((str1 != null) && (str2 != null) && (!str1.equals(str2)))
          i = 2;
      }
      else
      {
        i = 1;
      }
    }
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramAbsListView instanceof PinnedHeaderListView))
      ((PinnedHeaderListView)paramAbsListView).configureHeaderView(paramInt1);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  final class PinnedHeaderCache
  {
    TextView mHeaderView;

    PinnedHeaderCache()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter
 * JD-Core Version:    0.6.2
 */