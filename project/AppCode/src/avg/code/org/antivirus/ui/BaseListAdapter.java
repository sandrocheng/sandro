package org.antivirus.ui;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import java.util.ArrayList;

public class BaseListAdapter extends BaseAdapter
{
  private LayoutInflater a;
  private ArrayList b;

  public BaseListAdapter(Context paramContext, ArrayList paramArrayList)
  {
    this.a = LayoutInflater.from(paramContext);
    this.b = paramArrayList;
  }

  public int getCount()
  {
    if (this.b == null);
    for (int i = 0; ; i = this.b.size())
      return i;
  }

  public Object getItem(int paramInt)
  {
    if (this.b == null);
    for (Object localObject = null; ; localObject = (BaseListAdapter.BaseListAdapterItem)this.b.get(paramInt))
      return localObject;
  }

  public long getItemId(int paramInt)
  {
    if (BaseListAdapter.BaseListAdapterItem.b((BaseListAdapter.BaseListAdapterItem)this.b.get(paramInt)) == -1);
    for (long l = paramInt; ; l = BaseListAdapter.BaseListAdapterItem.b((BaseListAdapter.BaseListAdapterItem)this.b.get(paramInt)))
      return l;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    BaseListAdapter.ViewHolder localViewHolder;
    if (paramView == null)
    {
      paramView = this.a.inflate(2130903084, null);
      localViewHolder = new BaseListAdapter.ViewHolder(this);
      localViewHolder.mIcon = ((ImageView)paramView.findViewById(2131230874));
      localViewHolder.mTitle = ((TextView)paramView.findViewById(2131230731));
      localViewHolder.mSummary = ((TextView)paramView.findViewById(2131230932));
      localViewHolder.mCheck = ((ImageView)paramView.findViewById(2131230875));
      paramView.setTag(localViewHolder);
    }
    while (true)
    {
      updateItemView(paramInt, (BaseListAdapter.BaseListAdapterItem)this.b.get(paramInt), localViewHolder);
      return paramView;
      localViewHolder = (BaseListAdapter.ViewHolder)paramView.getTag();
    }
  }

  public void setItems(ArrayList paramArrayList)
  {
    this.b = paramArrayList;
  }

  public void updateItemView(int paramInt, BaseListAdapter.BaseListAdapterItem paramBaseListAdapterItem, BaseListAdapter.ViewHolder paramViewHolder)
  {
    if (-1 == paramBaseListAdapterItem.mImage)
    {
      paramViewHolder.mIcon.setVisibility(8);
      paramViewHolder.mTitle.setText(paramBaseListAdapterItem.mTitle);
      if (!paramBaseListAdapterItem.mSpannable)
        break label139;
      paramViewHolder.mSummary.setText(Html.fromHtml(paramBaseListAdapterItem.mSummary), TextView.BufferType.SPANNABLE);
      label52: if (paramBaseListAdapterItem.mTextColor != -1)
        paramViewHolder.mSummary.setTextColor(paramBaseListAdapterItem.mTextColor);
      paramViewHolder.mCheck.setVisibility(0);
      if (!BaseListAdapter.BaseListAdapterItem.a(paramBaseListAdapterItem))
        break label165;
      paramViewHolder.mCheck.setTag(Boolean.valueOf(paramBaseListAdapterItem.mCheck));
      if (!paramBaseListAdapterItem.mCheck)
        break label153;
      paramViewHolder.mCheck.setImageResource(2130837624);
    }
    while (true)
    {
      return;
      paramViewHolder.mIcon.setImageResource(paramBaseListAdapterItem.mImage);
      paramViewHolder.mIcon.setVisibility(0);
      break;
      label139: paramViewHolder.mSummary.setText(paramBaseListAdapterItem.mSummary);
      break label52;
      label153: paramViewHolder.mCheck.setImageResource(2130837618);
      continue;
      label165: paramViewHolder.mCheck.setImageResource(2130837731);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.BaseListAdapter
 * JD-Core Version:    0.6.2
 */