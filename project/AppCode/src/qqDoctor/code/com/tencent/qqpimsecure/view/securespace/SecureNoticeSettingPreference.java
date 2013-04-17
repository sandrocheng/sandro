package com.tencent.qqpimsecure.view.securespace;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;

public class SecureNoticeSettingPreference extends DialogPreference
{
  public SecureNoticeSettingPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SecureNoticeSettingPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onBindDialogView(View paramView)
  {
    super.onBindDialogView(paramView);
    paramView.findViewById(2131230754);
    paramView.findViewById(2131230802);
  }

  protected void onDialogClosed(boolean paramBoolean)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.securespace.SecureNoticeSettingPreference
 * JD-Core Version:    0.6.2
 */