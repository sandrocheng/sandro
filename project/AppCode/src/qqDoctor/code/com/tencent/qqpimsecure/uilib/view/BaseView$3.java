package com.tencent.qqpimsecure.uilib.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.List;

class BaseView$3
  implements AdapterView.OnItemClickListener
{
  BaseView$3(BaseView paramBaseView)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.this$0.onOptionsItemSelected((TabMenuView.MenuModel)BaseView.access$200(this.this$0).getBodyAdapter().getDataList().get(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseView.3
 * JD-Core Version:    0.6.2
 */