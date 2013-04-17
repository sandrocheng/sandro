package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
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

public class TabAdapter extends BaseAdapter
{
  public static final int STYLE_IMAGE_TEXT = 2;
  public static final int STYLE_IMAGE_TEXT_TAG = 4;
  public static final int STYLE_TEXT = 1;
  public static final int STYLE_TEXT_TAG = 3;
  private Context mContext;
  private List<TabModel> mDataList = new ArrayList();
  private int mTabStyle;

  public TabAdapter(Context paramContext, int paramInt1, int paramInt2)
  {
    this.mContext = paramContext;
    this.mTabStyle = paramInt2;
    this.mDataList = TabFactory.createTabListById(paramContext, paramInt1);
  }

  private void fillData(TabHolder paramTabHolder, TabModel paramTabModel)
  {
    switch (this.mTabStyle)
    {
    default:
      paramTabHolder.mTitleText.setText(paramTabModel.getTitle());
      if (paramTabModel.isShowFooterLine())
      {
        paramTabHolder.mLineView.setVisibility(0);
        label62: if ((gw.e()) || (gw.d()))
          paramTabHolder.mLayoutTab.setMinimumHeight(gw.c);
        if (paramTabModel.getClickable())
          break label332;
        paramTabHolder.mLayoutTab.setBackgroundColor(this.mContext.getResources().getColor(2131296292));
        paramTabHolder.mArrowImage.setVisibility(8);
      }
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      paramTabHolder.mIconImage.setVisibility(8);
      paramTabHolder.mContentText.setVisibility(8);
      break;
      paramTabHolder.mIconImage.setImageDrawable(paramTabModel.getIcon());
      paramTabHolder.mIconImage.setVisibility(0);
      paramTabHolder.mContentText.setText(paramTabModel.getContent());
      paramTabHolder.mContentText.setVisibility(0);
      break;
      paramTabHolder.mIconImage.setVisibility(8);
      paramTabHolder.mContentText.setVisibility(8);
      if (paramTabModel.getmTagImage() != null)
      {
        paramTabHolder.mTagImage.setImageDrawable(paramTabModel.getmTagImage());
        paramTabHolder.mTagImage.setVisibility(0);
        break;
      }
      paramTabHolder.mTagImage.setVisibility(8);
      break;
      paramTabHolder.mIconImage.setImageDrawable(paramTabModel.getIcon());
      paramTabHolder.mIconImage.setVisibility(0);
      paramTabHolder.mContentText.setText(paramTabModel.getContent());
      paramTabHolder.mContentText.setVisibility(0);
      if (paramTabModel.getmTagImage() != null)
      {
        paramTabHolder.mTagImage.setImageDrawable(paramTabModel.getmTagImage());
        paramTabHolder.mTagImage.setVisibility(0);
        break;
      }
      paramTabHolder.mTagImage.setVisibility(8);
      break;
      paramTabHolder.mLineView.setVisibility(8);
      break label62;
      label332: paramTabHolder.mLayoutTab.setBackgroundResource(2130837920);
      paramTabHolder.mArrowImage.setVisibility(0);
    }
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
    switch (this.mTabStyle)
    {
    default:
      i = 0;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return i;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
      continue;
      i = 4;
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TabModel localTabModel = (TabModel)this.mDataList.get(paramInt);
    TabHolder localTabHolder1;
    if (paramView == null)
    {
      localTabHolder1 = new TabHolder();
      switch (this.mTabStyle)
      {
      default:
        localTabHolder1.mParentLayout = paramView;
        localTabHolder1.mIconImage = ((ImageView)paramView.findViewById(2131230869));
        localTabHolder1.mTitleText = ((TextView)paramView.findViewById(2131231033));
        localTabHolder1.mContentText = ((TextView)paramView.findViewById(2131231298));
        localTabHolder1.mLayoutTab = ((LinearLayout)paramView.findViewById(2131231360));
        localTabHolder1.mArrowImage = ((ImageView)paramView.findViewById(2131231635));
        localTabHolder1.mLineView = paramView.findViewById(2131231636);
        paramView.setTag(localTabHolder1);
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    for (TabHolder localTabHolder2 = localTabHolder1; ; localTabHolder2 = (TabHolder)paramView.getTag())
    {
      fillData(localTabHolder2, localTabModel);
      return paramView;
      paramView = LayoutInflater.from(this.mContext).inflate(2130903332, null);
      break;
      paramView = LayoutInflater.from(this.mContext).inflate(2130903332, null);
      break;
      paramView = LayoutInflater.from(this.mContext).inflate(2130903333, null);
      localTabHolder1.mTagImage = ((ImageView)paramView.findViewById(2131231540));
      break;
      paramView = LayoutInflater.from(this.mContext).inflate(2130903333, null);
      localTabHolder1.mTagImage = ((ImageView)paramView.findViewById(2131231540));
      break;
    }
  }

  public int getViewTypeCount()
  {
    return 5;
  }

  public void release()
  {
    this.mContext = null;
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
    public View mLineView;
    public View mParentLayout;
    public ImageView mTagImage;
    public TextView mTitleText;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter
 * JD-Core Version:    0.6.2
 */