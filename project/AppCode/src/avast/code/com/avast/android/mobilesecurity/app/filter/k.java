package com.avast.android.mobilesecurity.app.filter;

import android.text.Editable;
import android.text.TextWatcher;
import com.avast.android.generic.d.a;

class k
  implements TextWatcher
{
  k(FilterGroupDetailFragment paramFilterGroupDetailFragment, a parama)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    this.a.a("name", paramEditable.toString());
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.k
 * JD-Core Version:    0.6.2
 */