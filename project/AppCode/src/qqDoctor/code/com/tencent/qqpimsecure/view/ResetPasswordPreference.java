package com.tencent.qqpimsecure.view;

import aai;
import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class ResetPasswordPreference extends DialogPreference
{
  private EditText a;
  private EditText b;
  private Context c;

  public ResetPasswordPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.c = paramContext;
  }

  public ResetPasswordPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.c = paramContext;
  }

  protected void onBindDialogView(View paramView)
  {
    super.onBindDialogView(paramView);
    this.a = ((EditText)paramView.findViewById(2131230807));
    this.b = ((EditText)paramView.findViewById(2131230808));
  }

  protected void onDialogClosed(boolean paramBoolean)
  {
    aai localaai;
    String str1;
    String str2;
    int i;
    if (paramBoolean)
    {
      localaai = aai.a();
      str1 = this.a.getText().toString();
      str2 = this.b.getText().toString();
      if (str1.length() != 0)
        break label56;
      i = 2131427786;
    }
    while (true)
    {
      Toast.makeText(this.c, i, 1).show();
      return;
      label56: if (!str1.equals(str2))
        i = 2131427788;
      else if (localaai.a(str1, str2))
        i = 2131427783;
      else
        i = 2131427785;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.ResetPasswordPreference
 * JD-Core Version:    0.6.2
 */