package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ContextMenuListMode;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import java.util.List;

public class ContextMenuAdapter extends BaseListAdapter<ContextMenuListMode>
{
  public ContextMenuAdapter(Context paramContext, List<ListModel<ContextMenuListMode>> paramList)
  {
    super(paramContext, paramList);
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    ContextMenuListMode localContextMenuListMode;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903099);
      localViewHolder = new ViewHolder();
      localViewHolder.name = ((TextView)paramView.findViewById(2131230865));
      localViewHolder.image = ((ImageView)paramView.findViewById(2131230866));
      paramView.setTag(localViewHolder);
      localContextMenuListMode = (ContextMenuListMode)this.mDataList.get(paramInt);
      localViewHolder.name.setText(localContextMenuListMode.getContextMenuName());
      if (localContextMenuListMode.getMarkType() != 0)
        break label115;
      localViewHolder.image.setVisibility(8);
    }
    while (true)
    {
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
      label115: if (localContextMenuListMode.getMarkType() == 1)
      {
        localViewHolder.image.setVisibility(0);
        localViewHolder.image.setImageResource(2130837976);
      }
      else if (localContextMenuListMode.getMarkType() == 2)
      {
        localViewHolder.image.setVisibility(0);
        localViewHolder.image.setImageResource(2130837963);
      }
    }
  }

  static class ViewHolder
  {
    ImageView image;
    TextView name;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.ContextMenuAdapter
 * JD-Core Version:    0.6.2
 */