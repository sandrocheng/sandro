package com.tencent.qqpimsecure.uilib.view.template;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.PopListView;

class FrameworkTemplateUI$2
  implements AdapterView.OnItemClickListener
{
  FrameworkTemplateUI$2(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (FrameworkTemplateUI.access$100(this.this$0) != null)
      FrameworkTemplateUI.access$100(this.this$0).dismissPopList();
    if (FrameworkTemplateUI.access$000(this.this$0) != null)
    {
      View localView = paramView.findViewById(2131231677);
      FrameworkTemplateUI.access$000(this.this$0).onOptionClick(((Integer)localView.getTag()).intValue());
    }
    FrameworkTemplateUI.access$102(this.this$0, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI.2
 * JD-Core Version:    0.6.2
 */