package com.avast.android.generic.app.about;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

class f
  implements TextWatcher
{
  f(FeedbackFragment paramFeedbackFragment)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    if (FeedbackFragment.m(this.a))
      FeedbackFragment.n(this.a).setVisibility(8);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.f
 * JD-Core Version:    0.6.2
 */