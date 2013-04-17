package com.tencent.qqpimsecure.uilib.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.List;
import java.util.Map;

class TabMenuView$1
  implements AdapterView.OnItemClickListener
{
  TabMenuView$1(TabMenuView paramTabMenuView)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.this$0.setTabIndex(paramInt);
    this.this$0.setBodyAdapter((TabMenuView.MenuBodyAdapter)TabMenuView.access$100(this.this$0).get(TabMenuView.access$000(this.this$0).get(paramInt)));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.TabMenuView.1
 * JD-Core Version:    0.6.2
 */