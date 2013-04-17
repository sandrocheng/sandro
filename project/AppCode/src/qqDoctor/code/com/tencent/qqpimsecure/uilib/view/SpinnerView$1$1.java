package com.tencent.qqpimsecure.uilib.view;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;

class SpinnerView$1$1
  implements AdapterView.OnItemClickListener
{
  SpinnerView$1$1(SpinnerView.1 param1, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != SpinnerView.access$400(this.this$1.this$0))
    {
      SpinnerView.access$402(this.this$1.this$0, paramInt);
      SpinnerView.access$500(this.this$1.this$0);
      if (SpinnerView.access$600(this.this$1.this$0) != null)
        SpinnerView.access$600(this.this$1.this$0).onSelectChange(SpinnerView.access$400(this.this$1.this$0));
    }
    this.val$dialog.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SpinnerView.1.1
 * JD-Core Version:    0.6.2
 */