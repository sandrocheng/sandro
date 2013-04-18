package com.ijinshan.kinghelper.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import com.ijinshan.kpref.CheckBoxPreference;

public class RadioButtonPreference extends CheckBoxPreference
{
  private RadioButtonPreference(Context paramContext)
  {
    super(paramContext);
  }

  public RadioButtonPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public RadioButtonPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private CheckBox b(View paramView)
  {
    Object localObject;
    if ((paramView instanceof CheckBox))
      localObject = (CheckBox)paramView;
    while (true)
    {
      return localObject;
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        for (int i = 0; ; i++)
        {
          if (i >= localViewGroup.getChildCount())
            break label67;
          CheckBox localCheckBox = b(localViewGroup.getChildAt(i));
          if (localCheckBox != null)
          {
            localObject = localCheckBox;
            break;
          }
        }
      }
      label67: localObject = null;
    }
  }

  protected final View a(ViewGroup paramViewGroup)
  {
    View localView = super.a(paramViewGroup);
    CheckBox localCheckBox = b(localView);
    if (localCheckBox != null)
      localCheckBox.setButtonDrawable(17301513);
    return localView;
  }

  protected final void a(View paramView)
  {
    super.a(paramView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.RadioButtonPreference
 * JD-Core Version:    0.6.2
 */