package com.avast.android.generic.app.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.s;

class r
  implements TextWatcher
{
  private r(AccountFragment paramAccountFragment)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    int i = 1;
    if (paramEditable.length() >= i)
    {
      if (i == 0)
        break label95;
      AccountFragment.g(this.a).setVisibility(0);
      if (!AccountFragment.h(this.a))
        break label68;
      AccountFragment.i(this.a).setVisibility(8);
      AccountFragment.g(this.a).setImageResource(s.k);
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label68: AccountFragment.i(this.a).setVisibility(0);
      AccountFragment.g(this.a).setImageResource(s.e);
      continue;
      label95: AccountFragment.g(this.a).setVisibility(4);
      AccountFragment.i(this.a).setVisibility(8);
    }
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.r
 * JD-Core Version:    0.6.2
 */