package com.avast.android.generic.ui;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.ImageView;
import android.widget.TextView;
import com.avast.android.generic.s;
import com.avast.android.generic.ui.widget.PasswordTextView;
import com.avast.android.generic.z;

class g
  implements TextWatcher
{
  g(ChangePasswordDialog paramChangePasswordDialog)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    int i = 1;
    if (!this.a.isAdded());
    while (true)
    {
      return;
      int j;
      label53: int k;
      label71: boolean bool;
      int m;
      label107: int n;
      label129: label147: label194: label233: String str;
      if (ChangePasswordDialog.b(this.a).length() > 0)
      {
        ChangePasswordDialog.d(this.a).setVisibility(0);
        if (ChangePasswordDialog.b(this.a).length() >= 4)
          break label323;
        j = i;
        if (ChangePasswordDialog.b(this.a).length() <= 6)
          break label328;
        k = i;
        bool = "0000".equals(ChangePasswordDialog.b(this.a).a());
        if (TextUtils.isDigitsOnly(ChangePasswordDialog.b(this.a).a()))
          break label334;
        m = i;
        if ((j == 0) && (k == 0) && (!bool) && (m == 0))
          break label340;
        n = i;
        if (n == 0)
          break label346;
        ChangePasswordDialog.d(this.a).setImageResource(s.e);
        if ((ChangePasswordDialog.c(this.a).length() < ChangePasswordDialog.b(this.a).length()) || (ChangePasswordDialog.c(this.a).length() <= 0))
          break label362;
        ChangePasswordDialog.f(this.a).setVisibility(0);
        if ((ChangePasswordDialog.c(this.a).length() <= 0) || (ChangePasswordDialog.b(this.a).a().equals(ChangePasswordDialog.c(this.a).a())))
          break label376;
        if ((n == 0) && (i == 0))
          break label456;
        if (i == 0)
          break label381;
        str = this.a.getString(z.ab);
      }
      while (true)
      {
        ChangePasswordDialog.e(this.a).setText(str);
        ChangePasswordDialog.e(this.a).setVisibility(0);
        ChangePasswordDialog.f(this.a).setImageResource(s.e);
        break;
        ChangePasswordDialog.d(this.a).setVisibility(4);
        ChangePasswordDialog.e(this.a).setVisibility(8);
        break;
        label323: j = 0;
        break label53;
        label328: k = 0;
        break label71;
        label334: m = 0;
        break label107;
        label340: n = 0;
        break label129;
        label346: ChangePasswordDialog.d(this.a).setImageResource(s.k);
        break label147;
        label362: ChangePasswordDialog.f(this.a).setVisibility(4);
        break label194;
        label376: i = 0;
        break label233;
        label381: if (m != 0)
          str = this.a.getString(z.m);
        else if (k != 0)
          str = this.a.getString(z.v);
        else if (bool)
          str = this.a.getString(z.G);
        else
          str = this.a.getString(z.cN);
      }
      label456: ChangePasswordDialog.e(this.a).setVisibility(8);
      ChangePasswordDialog.f(this.a).setImageResource(s.k);
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
 * Qualified Name:     com.avast.android.generic.ui.g
 * JD-Core Version:    0.6.2
 */