package com.avast.android.generic.app.account;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.s;
import com.avast.android.generic.z;

class p
  implements TextWatcher
{
  private p(AccountFragment paramAccountFragment)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    int i = 1;
    int j = AccountFragment.a(this.a).length();
    int k = AccountFragment.b(this.a).length();
    int m;
    boolean bool;
    int n;
    label92: label110: String str;
    if ((AccountFragment.c(this.a)) && (j > 0))
    {
      AccountFragment.d(this.a).setVisibility(0);
      if (j >= 7)
        break label267;
      m = i;
      bool = "0000".equals(AccountFragment.a(this.a).getText().toString());
      if ((m == 0) && (!bool))
        break label273;
      n = i;
      if (n == 0)
        break label279;
      AccountFragment.d(this.a).setImageResource(s.e);
      if ((k < j) || (k <= 0))
        break label295;
      AccountFragment.f(this.a).setVisibility(0);
      label132: if ((k <= 0) || (AccountFragment.a(this.a).getText().toString().equals(AccountFragment.b(this.a).getText().toString())))
        break label309;
      label169: if ((n == 0) && ((!AccountFragment.c(this.a)) || (i == 0)))
        break label349;
      if (i == 0)
        break label314;
      str = this.a.getString(z.ab);
      label204: AccountFragment.e(this.a).setText(str);
      AccountFragment.e(this.a).setVisibility(0);
      AccountFragment.f(this.a).setImageResource(s.e);
    }
    while (true)
    {
      return;
      AccountFragment.d(this.a).setVisibility(4);
      AccountFragment.e(this.a).setVisibility(8);
      continue;
      label267: m = 0;
      break;
      label273: n = 0;
      break label92;
      label279: AccountFragment.d(this.a).setImageResource(s.k);
      break label110;
      label295: AccountFragment.f(this.a).setVisibility(4);
      break label132;
      label309: i = 0;
      break label169;
      label314: if (bool)
      {
        str = this.a.getString(z.G);
        break label204;
      }
      str = this.a.getString(z.cN);
      break label204;
      label349: AccountFragment.e(this.a).setVisibility(8);
      AccountFragment.f(this.a).setImageResource(s.k);
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
 * Qualified Name:     com.avast.android.generic.app.account.p
 * JD-Core Version:    0.6.2
 */