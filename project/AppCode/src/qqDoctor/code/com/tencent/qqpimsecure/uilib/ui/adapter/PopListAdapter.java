package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import java.util.ArrayList;

public class PopListAdapter extends BaseAdapter
{
  private LayoutInflater inflater;
  ArrayList<TabModel> mMoreTabModel = new ArrayList();

  public PopListAdapter(Context paramContext)
  {
    this.inflater = LayoutInflater.from(paramContext);
  }

  public void addTabModel(TabModel paramTabModel)
  {
    this.mMoreTabModel.add(paramTabModel);
  }

  public int getCount()
  {
    return this.mMoreTabModel.size();
  }

  public Object getItem(int paramInt)
  {
    return this.mMoreTabModel.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    ImageView localImageView;
    if (paramView == null)
    {
      localViewHolder = new ViewHolder(null);
      paramView = this.inflater.inflate(2130903352, null);
      localViewHolder.holderTextView = ((TextView)paramView.findViewById(2131231678));
      localViewHolder.holderImageView = ((ImageView)paramView.findViewById(2131231677));
      localViewHolder.holderNotifyImageView = ((ImageView)paramView.findViewById(2131231037));
      paramView.setTag(localViewHolder);
      TabModel localTabModel = (TabModel)this.mMoreTabModel.get(paramInt);
      localViewHolder.holderTextView.setText(localTabModel.getTitle());
      localViewHolder.holderImageView.setImageDrawable(localTabModel.getIcon());
      localViewHolder.holderImageView.setTag(Integer.valueOf(localTabModel.getID()));
      localImageView = localViewHolder.holderNotifyImageView;
      if (localTabModel.getMessageNum() <= 0)
        break label168;
    }
    label168: for (int i = 0; ; i = 8)
    {
      localImageView.setVisibility(i);
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
    }
  }

  class ViewHolder
  {
    ImageView holderImageView;
    ImageView holderNotifyImageView;
    TextView holderTextView;

    private ViewHolder()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.PopListAdapter
 * JD-Core Version:    0.6.2
 */