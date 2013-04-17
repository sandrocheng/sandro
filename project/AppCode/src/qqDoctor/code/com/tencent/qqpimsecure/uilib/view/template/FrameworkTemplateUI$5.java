package com.tencent.qqpimsecure.uilib.view.template;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.view.BaseView;

class FrameworkTemplateUI$5
  implements View.OnClickListener
{
  FrameworkTemplateUI$5(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
  }

  public void onClick(View paramView)
  {
    TabModel localTabModel = (TabModel)paramView.getTag();
    if (FrameworkTemplateUI.access$000(this.this$0) != null)
      FrameworkTemplateUI.access$000(this.this$0).onTabClick(localTabModel);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI.5
 * JD-Core Version:    0.6.2
 */