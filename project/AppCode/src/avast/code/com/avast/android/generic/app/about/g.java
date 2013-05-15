package com.avast.android.generic.app.about;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

class g
  implements TextWatcher
{
  g(FeedbackFragment paramFeedbackFragment)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    if (FeedbackFragment.o(this.a))
      FeedbackFragment.p(this.a).setVisibility(8);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.g
 * JD-Core Version:    0.6.2
 */