package com.tencent.qqpimsecure.uilib.view.deskassistance;

import a;
import android.content.Context;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.MiniProgressBarView;
import vh;
import vh.b;

class ExpandedOptimizeWindow$2
  implements vh.b
{
  ExpandedOptimizeWindow$2(ExpandedOptimizeWindow paramExpandedOptimizeWindow)
  {
  }

  public void onMemoryGot()
  {
    ExpandedOptimizeWindow.access$500(this.this$0).setText(ExpandedOptimizeWindow.access$400(this.this$0).getString(2131429672));
    ExpandedOptimizeWindow.access$500(this.this$0).setVisibility(8);
    ExpandedOptimizeWindow.access$600(this.this$0).setVisibility(0);
    String str1 = a.b(ExpandedOptimizeWindow.access$000(this.this$0));
    int i = str1.indexOf(".");
    if (i >= 0)
    {
      String str2 = str1.substring(0, i);
      String str3 = str1.substring(-1 + str1.length());
      TextView localTextView = ExpandedOptimizeWindow.access$600(this.this$0);
      String str4 = ExpandedOptimizeWindow.access$400(this.this$0).getString(2131430046);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = (str2 + str3);
      localTextView.setText(String.format(str4, arrayOfObject));
    }
    while (true)
    {
      ExpandedOptimizeWindow.access$700(this.this$0).setProgressWithAnim(vh.g(), null);
      ExpandedOptimizeWindow.access$102(this.this$0, true);
      return;
      ExpandedOptimizeWindow.access$600(this.this$0).setText(str1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedOptimizeWindow.2
 * JD-Core Version:    0.6.2
 */