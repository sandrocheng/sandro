package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.service.TabFactory;
import gw;
import java.util.ArrayList;
import java.util.List;

public class MultiGroupTabAdapter extends BaseAdapter
{
  private Context mContext;
  private List<TabModel> mDataList = new ArrayList();

  public MultiGroupTabAdapter(Context paramContext, int paramInt)
  {
    this.mContext = paramContext;
    this.mDataList = TabFactory.createTabListById(paramContext, paramInt);
  }

  public int getCount()
  {
    return this.mDataList.size();
  }

  public List<TabModel> getDataList()
  {
    return this.mDataList;
  }

  public TabModel getItem(int paramInt)
  {
    return (TabModel)this.mDataList.get(paramInt);
  }

  public TabModel getItemByModelID(int paramInt)
  {
    TabModel localTabModel;
    if (this.mDataList == null)
      localTabModel = null;
    while (true)
    {
      return localTabModel;
      for (int i = 0; ; i++)
      {
        if (i >= this.mDataList.size())
          break label69;
        if (((TabModel)this.mDataList.get(i)).getID() == paramInt)
        {
          localTabModel = (TabModel)this.mDataList.get(i);
          break;
        }
      }
      label69: localTabModel = null;
    }
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    int i;
    switch (getItem(paramInt).getMultiStyle())
    {
    default:
      i = 2;
    case 1:
    case 0:
    }
    while (true)
    {
      return i;
      i = 0;
      continue;
      i = 1;
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TabModel localTabModel = (TabModel)this.mDataList.get(paramInt);
    switch (localTabModel.getMultiStyle())
    {
    default:
    case 1:
      while (true)
      {
        return paramView;
        TabHolder localTabHolder3;
        if (paramView == null)
        {
          paramView = LayoutInflater.from(this.mContext).inflate(2130903332, null);
          TabHolder localTabHolder4 = new TabHolder();
          localTabHolder4.mIconImage = ((ImageView)paramView.findViewById(2131230869));
          localTabHolder4.mTitleText = ((TextView)paramView.findViewById(2131231033));
          localTabHolder4.mContentText = ((TextView)paramView.findViewById(2131231298));
          localTabHolder4.mLayoutTab = ((LinearLayout)paramView.findViewById(2131231360));
          localTabHolder4.mArrowImage = ((ImageView)paramView.findViewById(2131231635));
          localTabHolder4.mLineView = ((LinearLayout)paramView.findViewById(2131231636));
          paramView.setTag(localTabHolder4);
          localTabHolder3 = localTabHolder4;
          label167: localTabHolder3.mIconImage.setImageDrawable(localTabModel.getIcon());
          localTabHolder3.mTitleText.setText(localTabModel.getTitle());
          localTabHolder3.mContentText.setText(Html.fromHtml(localTabModel.getContent().toString()));
          if (!localTabModel.isShowFooterLine())
            break label352;
          localTabHolder3.mLineView.setVisibility(0);
        }
        while (true)
        {
          if (gw.e())
            localTabHolder3.mLayoutTab.setPadding(localTabHolder3.mLayoutTab.getPaddingLeft(), (int)(0.5F + 14.0F * this.mContext.getResources().getDisplayMetrics().density), localTabHolder3.mLayoutTab.getPaddingRight(), (int)(0.5F + 14.0F * this.mContext.getResources().getDisplayMetrics().density));
          if (localTabModel.getClickable())
            break label365;
          localTabHolder3.mLayoutTab.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
          localTabHolder3.mArrowImage.setVisibility(8);
          break;
          localTabHolder3 = (TabHolder)paramView.getTag();
          break label167;
          label352: localTabHolder3.mLineView.setVisibility(8);
        }
        label365: localTabHolder3.mLayoutTab.setBackgroundResource(2130837920);
        localTabHolder3.mArrowImage.setVisibility(0);
      }
    case 0:
    }
    TabHolder localTabHolder2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.mContext).inflate(2130903104, null);
      localTabHolder2 = new TabHolder();
      localTabHolder2.mTitleText = ((TextView)paramView.findViewById(2131230754));
      paramView.setTag(localTabHolder2);
    }
    for (TabHolder localTabHolder1 = localTabHolder2; ; localTabHolder1 = (TabHolder)paramView.getTag())
    {
      localTabHolder1.mTitleText.setText(localTabModel.getTitle());
      break;
    }
  }

  public int getViewTypeCount()
  {
    return 2;
  }

  public void setDataList(List<TabModel> paramList)
  {
    this.mDataList = paramList;
  }

  public static class TabHolder
  {
    public ImageView mArrowImage;
    public TextView mContentText;
    public ImageView mIconImage;
    public LinearLayout mLayoutTab;
    public LinearLayout mLineView;
    public TextView mTitleText;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.MultiGroupTabAdapter
 * JD-Core Version:    0.6.2
 */