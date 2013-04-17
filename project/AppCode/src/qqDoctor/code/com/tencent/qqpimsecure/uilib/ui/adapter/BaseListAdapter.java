package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class BaseListAdapter<T> extends BaseAdapter
{
  protected Context mContext;
  protected List<T> mDataList = new ArrayList();
  protected List<ItemModel> mItemModelList = new ArrayList();
  protected LayoutInflater mLayoutInflater;
  protected List<ListModel<T>> mListModelList = new ArrayList();

  public BaseListAdapter(Context paramContext, List<ListModel<T>> paramList)
  {
    this.mListModelList = paramList;
    this.mContext = paramContext;
    this.mLayoutInflater = LayoutInflater.from(paramContext);
  }

  private void setItemView(View paramView, int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(2131231589);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLinearLayout.addView(this.mLayoutInflater.inflate(paramInt, null), 0, localLayoutParams);
  }

  public void bindListModel()
  {
    synchronized (this.mListModelList)
    {
      this.mDataList.clear();
      synchronized (this.mItemModelList)
      {
        this.mItemModelList.clear();
        Iterator localIterator = this.mListModelList.iterator();
        if (localIterator.hasNext())
        {
          ListModel localListModel = (ListModel)localIterator.next();
          this.mDataList.addAll(localListModel.getDataList());
          this.mItemModelList.addAll(localListModel.getItemModelList());
        }
      }
    }
  }

  public void clearDataList()
  {
    this.mListModelList.clear();
  }

  public View createItemView(int paramInt1, int paramInt2)
  {
    ItemModel localItemModel = (ItemModel)this.mItemModelList.get(paramInt1);
    View localView2;
    if (localItemModel.getItemStyle() == 0)
    {
      localView2 = this.mLayoutInflater.inflate(2130903317, null);
      setItemView(localView2, paramInt2);
      setLabel(localView2, localItemModel);
    }
    for (View localView1 = localView2; ; localView1 = this.mLayoutInflater.inflate(paramInt2, null))
      return localView1;
  }

  public int getCount()
  {
    return this.mDataList.size();
  }

  public List<T> getDataList()
  {
    return this.mDataList;
  }

  public Object getItem(int paramInt)
  {
    return this.mDataList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    if (((ItemModel)this.mItemModelList.get(paramInt)).getItemStyle() == 0);
    for (int i = 0; ; i = 1)
      return i;
  }

  public int getViewTypeCount()
  {
    return 2;
  }

  public void notifyDataSetChanged()
  {
    bindListModel();
    super.notifyDataSetChanged();
  }

  public void setDataList(List<ListModel<T>> paramList)
  {
    this.mListModelList = paramList;
  }

  protected void setLabel(View paramView, ItemModel paramItemModel)
  {
    TextView localTextView = (TextView)paramView.findViewById(2131231606);
    if (paramItemModel.getHeaderLabel() == null)
      localTextView.setVisibility(8);
    if (localTextView != null)
      localTextView.setText(paramItemModel.getHeaderLabel());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter
 * JD-Core Version:    0.6.2
 */