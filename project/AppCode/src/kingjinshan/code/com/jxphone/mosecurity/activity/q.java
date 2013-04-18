package com.jxphone.mosecurity.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.d.k;

final class q
  implements DialogInterface.OnClickListener
{
  q(View paramView, k paramk, boolean paramBoolean, Activity paramActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TextView localTextView1 = (TextView)this.a.findViewById(2131231568);
    TextView localTextView2 = (TextView)this.a.findViewById(2131231570);
    TextView localTextView3 = (TextView)this.a.findViewById(2131231572);
    boolean bool1 = this.b.a(this.c);
    CharSequence localCharSequence1 = localTextView2.getText();
    CharSequence localCharSequence2 = localTextView3.getText();
    int i;
    boolean bool2;
    if (TextUtils.isEmpty(localTextView1.getText().toString()))
    {
      i = 2131428875;
      bool2 = false;
    }
    while (true)
    {
      Toast.makeText(this.d, i, 1).show();
      if (bool2)
        paramDialogInterface.dismiss();
      return;
      if (TextUtils.isEmpty(localCharSequence1.toString()))
      {
        i = 2131428877;
        bool2 = false;
      }
      else if (TextUtils.isEmpty(localCharSequence2.toString()))
      {
        i = 2131428878;
        bool2 = false;
      }
      else if (!localCharSequence1.toString().equals(localCharSequence2.toString()))
      {
        i = 2131428882;
        bool2 = false;
      }
      else if (localCharSequence1.toString().length() < 6)
      {
        i = 2131428879;
        bool2 = false;
      }
      else if (localCharSequence1.toString().length() > 12)
      {
        i = 2131428880;
        bool2 = false;
      }
      else
      {
        bool2 = this.b.a(localTextView1.getText().toString(), localCharSequence1.toString(), localTextView3.getText().toString(), this.c);
        if (bool2)
          i = 2131428868;
        else if (bool1)
          i = 2131428876;
        else
          i = 2131428882;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.q
 * JD-Core Version:    0.6.2
 */