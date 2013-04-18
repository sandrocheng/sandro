package com.keniu.security.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.ijinshan.kpref.CheckBoxPreference;

public class CustomCheckBoxPreference extends CheckBoxPreference
{
  public CustomCheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public CustomCheckBoxPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c(2130903091);
  }

  protected final void a(View paramView)
  {
    super.a(paramView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.CustomCheckBoxPreference
 * JD-Core Version:    0.6.2
 */