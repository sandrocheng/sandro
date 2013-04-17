package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.preference.BasePreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ButtonBasePreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.DialogPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.SimpleButtonPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.SimplePreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.TitlePreferenceView;
import java.util.List;

public class BasePreferenceAdapter extends BaseAdapter
{
  protected List<PreferenceAdapterModel> dataList;
  protected Activity mActivity;
  protected Context mContext;
  protected ListPreferenceView.OnListPreferenceChangeListener onListPreferenceChangeListener;

  public BasePreferenceAdapter(Activity paramActivity, Context paramContext, List<PreferenceAdapterModel> paramList, ListPreferenceView.OnListPreferenceChangeListener paramOnListPreferenceChangeListener)
  {
    this.dataList = paramList;
    this.onListPreferenceChangeListener = paramOnListPreferenceChangeListener;
    this.mContext = paramContext;
    this.mActivity = paramActivity;
  }

  public BasePreferenceAdapter(Context paramContext, List<PreferenceAdapterModel> paramList, ListPreferenceView.OnListPreferenceChangeListener paramOnListPreferenceChangeListener)
  {
    this.dataList = paramList;
    this.onListPreferenceChangeListener = paramOnListPreferenceChangeListener;
    this.mContext = paramContext;
  }

  private BasePreferenceView createBasePreferenceView(PreferenceAdapterModel paramPreferenceAdapterModel, String paramString)
  {
    Object localObject;
    switch (paramPreferenceAdapterModel.getPreferenceViewType())
    {
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    default:
      localObject = null;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 12:
    }
    while (true)
    {
      return localObject;
      localObject = new SimplePreferenceView(this.mContext, paramString);
      continue;
      localObject = new CheckBoxPreferenceView(this.mContext, paramString, paramPreferenceAdapterModel.getCheckBoxType());
      continue;
      if (this.mActivity != null)
      {
        localObject = new ListPreferenceView(this.mActivity, this.mContext, paramString);
      }
      else
      {
        localObject = new ListPreferenceView(this.mContext, paramString);
        continue;
        localObject = new DialogPreferenceView(this.mContext, paramString);
        continue;
        localObject = new TitlePreferenceView(this.mContext, paramString);
        continue;
        localObject = new ButtonBasePreferenceView(this.mContext, paramString);
        continue;
        localObject = new SimpleButtonPreferenceView(this.mContext, paramString);
      }
    }
  }

  public int getCount()
  {
    if (this.dataList == null);
    for (int i = 0; ; i = this.dataList.size())
      return i;
  }

  public Object getItem(int paramInt)
  {
    if ((this.dataList == null) || (paramInt >= this.dataList.size()));
    for (Object localObject = null; ; localObject = this.dataList.get(paramInt))
      return localObject;
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public int getItemViewType(int paramInt)
  {
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.dataList.get(paramInt);
    int i;
    if (localPreferenceAdapterModel.getPreferenceViewType() == 5)
      i = 0;
    while (true)
    {
      return i;
      if (localPreferenceAdapterModel.getPreferenceViewType() == 4)
        i = 1;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 2)
      {
        if (localPreferenceAdapterModel.getCheckBoxType() == 0)
          i = 2;
        else if (localPreferenceAdapterModel.getCheckBoxType() == 1)
          i = 3;
        else if (localPreferenceAdapterModel.getCheckBoxType() == 2)
          i = 4;
        else
          i = 2;
      }
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 3)
        i = 5;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 1)
        i = 6;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 6)
        i = 7;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 12)
        i = 8;
      else
        i = 0;
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.dataList.get(paramInt);
    Object localObject;
    PreferenceHolder localPreferenceHolder2;
    PreferenceHolder localPreferenceHolder1;
    if (paramView == null)
    {
      localObject = createBasePreferenceView(localPreferenceAdapterModel, localPreferenceAdapterModel.getKey());
      localPreferenceHolder2 = new PreferenceHolder(null);
      switch (localPreferenceAdapterModel.getPreferenceViewType())
      {
      default:
        if ((localObject instanceof PreferenceView))
        {
          localPreferenceHolder2.titleView = ((PreferenceView)localObject).getTitltView();
          localPreferenceHolder2.summaryView = ((PreferenceView)localObject).getSummaryView();
          localPreferenceHolder2.lineView = ((PreferenceView)localObject).getLineView();
        }
        if (localPreferenceAdapterModel.getPreferenceViewType() == 2)
          localPreferenceHolder2.checkBoxView = ((CheckBoxPreferenceView)localObject).getCheckBox();
        ((View)localObject).setTag(localPreferenceHolder2);
        localPreferenceHolder1 = localPreferenceHolder2;
        label164: if (localPreferenceHolder1.titleView != null)
          localPreferenceHolder1.titleView.setText(localPreferenceAdapterModel.getTitle());
        if (localPreferenceHolder1.buttonView != null)
          localPreferenceHolder1.buttonView.setText(localPreferenceAdapterModel.getButtonText());
        if (localPreferenceHolder1.imageView != null)
        {
          localPreferenceHolder1.imageView.setImageDrawable(localPreferenceAdapterModel.getTitleIcon());
          if (localPreferenceAdapterModel.canExpand())
          {
            localPreferenceHolder1.imageView.setVisibility(0);
            label244: if (!localPreferenceAdapterModel.isExpand())
              break label595;
            localPreferenceHolder1.imageView.setImageDrawable(this.mContext.getResources().getDrawable(2130837722));
          }
        }
        else
        {
          label272: if (localPreferenceHolder1.summaryView != null)
          {
            if ((localPreferenceAdapterModel.getSummary() != null) && (!localPreferenceAdapterModel.getSummary().equals("")))
              break label619;
            localPreferenceHolder1.summaryView.setVisibility(8);
          }
          label311: if (localPreferenceHolder1.checkBoxView != null)
            localPreferenceHolder1.checkBoxView.setChecked(localPreferenceAdapterModel.isChecked());
          if (localPreferenceHolder1.lineView != null)
          {
            if (!localPreferenceAdapterModel.isShowLine())
              break label644;
            localPreferenceHolder1.lineView.setVisibility(0);
          }
        }
        break;
      case 5:
      case 12:
      case 6:
      }
    }
    while (true)
    {
      if (localPreferenceAdapterModel.getPreferenceViewType() == 3)
      {
        ((ListPreferenceView)localObject).setKey(localPreferenceAdapterModel.getKey());
        ((ListPreferenceView)localObject).setIcons(localPreferenceAdapterModel.getIcons());
        ((ListPreferenceView)localObject).setEntries(localPreferenceAdapterModel.getEntries());
        ((ListPreferenceView)localObject).setEntryValues(localPreferenceAdapterModel.getEntryValues());
        ((ListPreferenceView)localObject).setItemSelectIndex(localPreferenceAdapterModel.getSelectItemIndex());
        ((ListPreferenceView)localObject).setOnPreferenceChangeListener(this.onListPreferenceChangeListener);
      }
      if ((localObject instanceof PreferenceView))
      {
        ((PreferenceView)localObject).setEnabled(localPreferenceAdapterModel.isEnabled());
        ((PreferenceView)localObject).setSummary(localPreferenceAdapterModel.getSummary());
      }
      return localObject;
      localPreferenceHolder2.titleView = ((TitlePreferenceView)localObject).getTitltView();
      localPreferenceHolder2.imageView = ((TitlePreferenceView)localObject).getImageView();
      break;
      localPreferenceHolder2.buttonView = ((SimpleButtonPreferenceView)localObject).getButton();
      break;
      localPreferenceHolder2.titleView = ((PreferenceView)localObject).getTitltView();
      localPreferenceHolder2.buttonView = ((ButtonBasePreferenceView)localObject).getButton();
      localPreferenceHolder2.summaryView = ((PreferenceView)localObject).getSummaryView();
      break;
      localPreferenceHolder1 = (PreferenceHolder)paramView.getTag();
      localObject = paramView;
      break label164;
      localPreferenceHolder1.imageView.setVisibility(8);
      break label244;
      label595: localPreferenceHolder1.imageView.setImageDrawable(this.mContext.getResources().getDrawable(2130838349));
      break label272;
      label619: localPreferenceHolder1.summaryView.setVisibility(0);
      localPreferenceHolder1.summaryView.setText(localPreferenceAdapterModel.getSummary());
      break label311;
      label644: localPreferenceHolder1.lineView.setVisibility(8);
    }
  }

  public int getViewTypeCount()
  {
    return 9;
  }

  class PreferenceHolder
  {
    public ButtonView buttonView;
    public CheckBoxView checkBoxView;
    public ImageView imageView;
    public LinearLayout lineView;
    public TextView summaryView;
    public TextView titleView;

    private PreferenceHolder()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.BasePreferenceAdapter
 * JD-Core Version:    0.6.2
 */