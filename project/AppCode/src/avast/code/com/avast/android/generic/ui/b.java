package com.avast.android.generic.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.avast.android.generic.ui.a.a;

class b
  implements View.OnClickListener
{
  b(ChangePasswordDialog paramChangePasswordDialog, a parama, TextView paramTextView1, TextView paramTextView2, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
  }

  public void onClick(View paramView)
  {
    if (!ChangePasswordDialog.a(this.f))
    {
      this.a.a(false);
      this.b.startAnimation(this.a);
      ChangePasswordDialog.a(this.f, true);
      this.c.setText(this.d);
    }
    while (true)
    {
      return;
      this.a.a(true);
      this.b.startAnimation(this.a);
      ChangePasswordDialog.a(this.f, false);
      this.c.setText(this.e);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.b
 * JD-Core Version:    0.6.2
 */