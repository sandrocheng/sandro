package com.avast.android.generic.ui.widget;

import android.view.View;
import android.view.View.OnFocusChangeListener;

class g
  implements View.OnFocusChangeListener
{
  g(EditTextRow paramEditTextRow)
  {
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
      this.a.c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.g
 * JD-Core Version:    0.6.2
 */