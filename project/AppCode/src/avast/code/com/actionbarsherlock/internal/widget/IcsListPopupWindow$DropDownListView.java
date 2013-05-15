package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.widget.ListView;
import com.actionbarsherlock.R.attr;

class IcsListPopupWindow$DropDownListView extends ListView
{
  private boolean mHijackFocus;
  private boolean mListSelectionHidden;

  public IcsListPopupWindow$DropDownListView(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.dropDownListViewStyle);
    this.mHijackFocus = paramBoolean;
    setCacheColorHint(0);
  }

  public boolean hasFocus()
  {
    if ((this.mHijackFocus) || (super.hasFocus()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean hasWindowFocus()
  {
    if ((this.mHijackFocus) || (super.hasWindowFocus()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isFocused()
  {
    if ((this.mHijackFocus) || (super.isFocused()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean isInTouchMode()
  {
    if (((this.mHijackFocus) && (this.mListSelectionHidden)) || (super.isInTouchMode()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.DropDownListView
 * JD-Core Version:    0.6.2
 */