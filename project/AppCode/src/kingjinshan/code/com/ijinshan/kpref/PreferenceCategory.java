package com.ijinshan.kpref;

import android.content.Context;
import android.util.AttributeSet;

public class PreferenceCategory extends PreferenceGroup
{
  private static final String o = "PreferenceCategory";

  public PreferenceCategory(Context paramContext)
  {
    this(paramContext, null);
  }

  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842892);
  }

  public PreferenceCategory(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected final boolean a(Preference paramPreference)
  {
    if ((paramPreference instanceof PreferenceCategory))
      throw new IllegalArgumentException("Cannot add a PreferenceCategory directly to a PreferenceCategory");
    return super.a(paramPreference);
  }

  public final boolean x()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.PreferenceCategory
 * JD-Core Version:    0.6.2
 */