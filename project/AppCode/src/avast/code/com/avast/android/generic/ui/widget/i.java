package com.avast.android.generic.ui.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.o;
import com.avast.android.generic.t;
import com.avast.android.generic.util.s;

class i
  implements DialogInterface.OnClickListener
{
  i(LanguageSelectorRow.LanguageSelectDialog paramLanguageSelectDialog)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    CharSequence[] arrayOfCharSequence = this.a.getResources().getTextArray(o.c);
    ((ae)ad.a(this.a.getActivity(), ae.class)).i((String)arrayOfCharSequence[paramInt]);
    ((s)ad.a(this.a.getActivity(), s.class)).a(t.am);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.i
 * JD-Core Version:    0.6.2
 */