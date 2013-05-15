package com.avast.android.generic.app.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.s;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.aa;
import com.avast.android.generic.util.ab;
import com.avast.android.generic.z;

class q
  implements TextWatcher
{
  private q(AccountFragment paramAccountFragment)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    int i = 1;
    if (paramEditable.length() >= i)
    {
      if (((AccountFragment.j(this.a)) && (AccountFragment.k(this.a))) || (AccountFragment.l(this.a).c()))
        break label74;
      AccountFragment.m(this.a).setVisibility(4);
      AccountFragment.n(this.a).setVisibility(8);
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label74: if (i != 0)
      {
        AccountFragment.m(this.a).setVisibility(0);
        ab localab = aa.a(aa.c(AccountFragment.o(this.a).getText().toString()));
        if (localab == ab.a)
        {
          if (AccountFragment.p(this.a))
          {
            AccountFragment.n(this.a).setVisibility(8);
            AccountFragment.m(this.a).setImageResource(s.k);
          }
          else
          {
            AccountFragment.n(this.a).setText(z.L);
            AccountFragment.n(this.a).setVisibility(0);
            AccountFragment.m(this.a).setImageResource(s.e);
          }
        }
        else
        {
          if (localab == ab.c)
            AccountFragment.n(this.a).setText(z.F);
          while (true)
          {
            AccountFragment.n(this.a).setVisibility(0);
            AccountFragment.m(this.a).setImageResource(s.e);
            break;
            AccountFragment.n(this.a).setText(z.cu);
          }
        }
      }
      else
      {
        AccountFragment.m(this.a).setVisibility(4);
        AccountFragment.n(this.a).setVisibility(8);
      }
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
 * Qualified Name:     com.avast.android.generic.app.account.q
 * JD-Core Version:    0.6.2
 */