package com.avast.android.generic.ui.widget;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

class h
  implements View.OnClickListener
{
  h(LanguageSelectorRow paramLanguageSelectorRow)
  {
  }

  public void onClick(View paramView)
  {
    if ((this.a.getContext() instanceof FragmentActivity))
      LanguageSelectorRow.LanguageSelectDialog.a(((FragmentActivity)this.a.getContext()).getSupportFragmentManager());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.h
 * JD-Core Version:    0.6.2
 */