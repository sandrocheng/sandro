package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;

class IcsSpinner$DropdownPopup extends IcsListPopupWindow
  implements IcsSpinner.SpinnerPopup
{
  private ListAdapter mAdapter;
  private CharSequence mHintText;

  public IcsSpinner$DropdownPopup(IcsSpinner paramIcsSpinner, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, 0, paramInt);
    setAnchorView(paramIcsSpinner);
    setModal(true);
    setPromptPosition(0);
    setOnItemClickListener(new IcsSpinner.DropdownPopup.1(this, paramIcsSpinner));
  }

  public CharSequence getHintText()
  {
    return this.mHintText;
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.mAdapter = paramListAdapter;
  }

  public void setPromptText(CharSequence paramCharSequence)
  {
    this.mHintText = paramCharSequence;
  }

  public void show()
  {
    int i = this.this$0.getPaddingLeft();
    if (this.this$0.mDropDownWidth == -2)
    {
      int n = this.this$0.getWidth();
      int i1 = this.this$0.getPaddingRight();
      setContentWidth(Math.max(this.this$0.measureContentWidth((SpinnerAdapter)this.mAdapter, this.this$0.getBackground()), n - i - i1));
    }
    while (true)
    {
      Drawable localDrawable = this.this$0.getBackground();
      int j = 0;
      if (localDrawable != null)
      {
        localDrawable.getPadding(IcsSpinner.access$000(this.this$0));
        j = -IcsSpinner.access$000(this.this$0).left;
      }
      setHorizontalOffset(j + i);
      setInputMethodMode(2);
      super.show();
      getListView().setChoiceMode(1);
      this.this$0.setSelection(this.this$0.getSelectedItemPosition());
      return;
      if (this.this$0.mDropDownWidth == -1)
      {
        int k = this.this$0.getWidth();
        int m = this.this$0.getPaddingRight();
        setContentWidth(k - i - m);
      }
      else
      {
        setContentWidth(this.this$0.mDropDownWidth);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner.DropdownPopup
 * JD-Core Version:    0.6.2
 */