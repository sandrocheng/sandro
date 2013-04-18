package com.jxphone.mosecurity.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;
import com.jxphone.mosecurity.activity.friend.FriendTabActivity;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.d.n;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.a.g;
import com.jxphone.mosecurity.logic.a.j;
import com.jxphone.mosecurity.logic.h;

final class o
  implements DialogInterface.OnClickListener
{
  o(BaseContactActivity paramBaseContactActivity, EditText paramEditText1, EditText paramEditText2, Context paramContext, c paramc, d paramd, CheckBox paramCheckBox, r paramr)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    if (str2.length() == 0)
      Toast.makeText(this.c, this.c.getString(2131428984), 0).show();
    b localb;
    Bitmap localBitmap;
    label105: 
    do
    {
      return;
      localb = new b();
      localb.a(str1);
      localb.b(str2);
      localb.a(this.d);
      if (this.d.equals(c.b))
      {
        if (BaseContactActivity.g != null)
          break;
        localBitmap = null;
        localb.a(localBitmap);
      }
      int i = this.e.a(localb);
      if ((this.f.isChecked()) && (!this.d.equals(c.e)) && (i != -1))
      {
        this.h.k = new n(this.h, 2131428967, new t(this.h));
        this.e.b(localb, this.h.k);
      }
      if (i == -1)
        break label432;
      h.b(this.c).d(localb.c(), c.b);
      h.a(this.c).c(localb.c(), c.b);
      localb.a(i);
    }
    while (this.g == null);
    this.g.a(localb);
    int k;
    switch (h.a[this.d.ordinal()])
    {
    default:
      k = 2131428961;
    case 1:
    case 2:
    case 3:
    }
    String str3;
    while (true)
    {
      str3 = this.c.getString(k);
      Toast.makeText(this.c, str3, 1).show();
      Intent localIntent = new Intent();
      localIntent.setClass(this.h, FriendTabActivity.class);
      localIntent.putExtra("isDummy", this.h.i);
      this.h.startActivity(localIntent);
      this.h.finish();
      break;
      localBitmap = BaseContactActivity.g.g();
      break label105;
      k = 2131428854;
      continue;
      k = 2131428635;
      continue;
      k = 2131428652;
    }
    label432: int j;
    switch (h.a[this.d.ordinal()])
    {
    default:
      j = 2131428962;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      str3 = this.c.getString(j);
      if (this.g == null)
        break;
      break;
      j = 2131428856;
      continue;
      j = 2131428636;
      continue;
      j = 2131428653;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.o
 * JD-Core Version:    0.6.2
 */