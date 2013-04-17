package com.tencent.qqpimsecure.view;

import android.content.Context;
import android.content.res.Resources;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import com.tencent.qqpimsecure.service.QQPimApplication;
import ha;
import ho;

public class SmsContentPrefrence extends DialogPreference
{
  private EditText a;
  private ho b = ho.a();

  public SmsContentPrefrence(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SmsContentPrefrence(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onBindDialogView(View paramView)
  {
    super.onBindDialogView(paramView);
    this.a = ((EditText)paramView.findViewById(2131230817));
    this.a.setText(this.b.i());
  }

  protected void onDialogClosed(boolean paramBoolean)
  {
    String str = this.a.getText().toString().trim();
    if (paramBoolean)
    {
      if (!"".equals(str))
        break label51;
      ha.a(getContext(), QQPimApplication.a().getResources().getString(2131428588));
      showDialog(null);
    }
    while (true)
    {
      return;
      label51: this.b.a(str);
      setSummary(str);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.SmsContentPrefrence
 * JD-Core Version:    0.6.2
 */