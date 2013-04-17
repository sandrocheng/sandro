package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import java.util.List;

public class RadioButtonAdapter extends BaseListAdapter<RadioButtonMode>
{
  public RadioButtonAdapter(Context paramContext, List<ListModel<RadioButtonMode>> paramList)
  {
    super(paramContext, paramList);
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903105);
      localViewHolder = new ViewHolder();
      localViewHolder.name = ((TextView)paramView.findViewById(2131230875));
      localViewHolder.checkBox = ((CheckBox)paramView.findViewById(2131230876));
      localViewHolder.image = ((ImageView)paramView.findViewById(2131230874));
      paramView.setTag(localViewHolder);
      if (((RadioButtonMode)this.mDataList.get(paramInt)).getRadioButtonName() != null)
        break label175;
      localViewHolder.name.setVisibility(8);
      label98: if (((RadioButtonMode)this.mDataList.get(paramInt)).getRadioButtonImageId() != -1)
        break label202;
      localViewHolder.image.setVisibility(8);
    }
    while (true)
    {
      localViewHolder.checkBox.setClickable(false);
      localViewHolder.checkBox.setChecked(((RadioButtonMode)this.mDataList.get(paramInt)).isSelected());
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
      label175: localViewHolder.name.setText(((RadioButtonMode)this.mDataList.get(paramInt)).getRadioButtonName());
      break label98;
      label202: localViewHolder.image.setImageResource(((RadioButtonMode)this.mDataList.get(paramInt)).getRadioButtonImageId());
    }
  }

  static class ViewHolder
  {
    CheckBox checkBox;
    ImageView image;
    TextView name;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.RadioButtonAdapter
 * JD-Core Version:    0.6.2
 */