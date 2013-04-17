package com.tencent.qqpimsecure.uilib.view.preference;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;

class ListPreferenceView$1
  implements AdapterView.OnItemClickListener
{
  ListPreferenceView$1(ListPreferenceView paramListPreferenceView)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ListPreferenceView.access$002(this.this$0, paramInt);
    if (ListPreferenceView.access$100(this.this$0) != null)
      this.this$0.setSummary(ListPreferenceView.access$100(this.this$0)[paramInt]);
    if (this.this$0.preferenceChangeListener != null)
      this.this$0.preferenceChangeListener.onListPreferenceChange(this.this$0, Integer.valueOf(ListPreferenceView.access$000(this.this$0)));
    ((CheckBox)paramView.findViewById(2131230876)).setChecked(true);
    ListPreferenceView.access$200(this.this$0).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.1
 * JD-Core Version:    0.6.2
 */