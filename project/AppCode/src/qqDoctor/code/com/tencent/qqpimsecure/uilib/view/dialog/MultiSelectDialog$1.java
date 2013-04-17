package com.tencent.qqpimsecure.uilib.view.dialog;

import aih;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

class MultiSelectDialog$1
  implements AdapterView.OnItemClickListener
{
  MultiSelectDialog$1(MultiSelectDialog paramMultiSelectDialog)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    RadioButtonMode localRadioButtonMode = (RadioButtonMode)MultiSelectDialog.access$000(this.this$0).getDataList().get(paramInt);
    if (!localRadioButtonMode.isSelected());
    for (boolean bool = true; ; bool = false)
    {
      localRadioButtonMode.setSelected(bool);
      ((CheckBoxView)paramView.findViewById(2131231600)).setChecked(localRadioButtonMode.isSelected());
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.MultiSelectDialog.1
 * JD-Core Version:    0.6.2
 */