package com.tencent.qqpimsecure.uilib.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;
import java.util.List;

class SpinnerView$1
  implements View.OnClickListener
{
  SpinnerView$1(SpinnerView paramSpinnerView)
  {
  }

  public void onClick(View paramView)
  {
    RadioButtonDialog localRadioButtonDialog = new RadioButtonDialog(SpinnerView.access$000(this.this$0));
    if (SpinnerView.access$100(this.this$0) != 0)
      localRadioButtonDialog.setTitle(SpinnerView.access$100(this.this$0));
    SpinnerView.access$202(this.this$0, new ArrayList());
    for (int i = 0; i < SpinnerView.access$300(this.this$0).size(); i++)
    {
      RadioButtonMode localRadioButtonMode = new RadioButtonMode();
      localRadioButtonMode.setRadioButtonName((String)SpinnerView.access$300(this.this$0).get(i));
      SpinnerView.access$200(this.this$0).add(localRadioButtonMode);
    }
    localRadioButtonDialog.setDataAdapter(SpinnerView.access$200(this.this$0), SpinnerView.access$400(this.this$0));
    localRadioButtonDialog.setOnItemClickListener(new SpinnerView.1.1(this, localRadioButtonDialog));
    localRadioButtonDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SpinnerView.1
 * JD-Core Version:    0.6.2
 */