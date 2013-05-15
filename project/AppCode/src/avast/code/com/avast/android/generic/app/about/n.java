package com.avast.android.generic.app.about;

import android.os.AsyncTask;
import android.widget.EditText;
import com.avast.android.generic.g.c;
import com.avast.android.generic.g.q;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.m;

class n extends AsyncTask
{
  private n(FeedbackFragment paramFeedbackFragment)
  {
  }

  protected Boolean a(Void[] paramArrayOfVoid)
  {
    o localo = new o(this.a.getActivity());
    q localq;
    switch (FeedbackFragment.d(this.a))
    {
    default:
      localq = q.a;
    case 2:
    case 3:
    case 4:
    }
    try
    {
      String str1 = FeedbackFragment.e(this.a).getText().toString();
      String str2 = FeedbackFragment.f(this.a).getText().toString();
      String str3 = FeedbackFragment.g(this.a).getText().toString();
      c localc;
      if (FeedbackFragment.h(this.a).c())
      {
        localc = FeedbackFragment.i(this.a);
        label119: if (!FeedbackFragment.j(this.a).c())
          break label226;
      }
      label226: for (byte[] arrayOfByte1 = FeedbackFragment.a(this.a); ; arrayOfByte1 = null)
      {
        boolean bool = FeedbackFragment.k(this.a).c();
        byte[] arrayOfByte2 = null;
        if (bool)
          arrayOfByte2 = FeedbackFragment.b(this.a);
        Boolean localBoolean2 = Boolean.valueOf(localo.a(str1, str2, str3, localq, localc, arrayOfByte1, arrayOfByte2));
        localBoolean1 = localBoolean2;
        return localBoolean1;
        localq = q.c;
        break;
        localq = q.d;
        break;
        localq = q.b;
        break;
        localc = null;
        break label119;
      }
    }
    catch (p localp)
    {
      while (true)
      {
        m.b("FeedbackFragment", "Sending feedback failed.", localp);
        Boolean localBoolean1 = Boolean.valueOf(false);
      }
    }
  }

  protected void a(Boolean paramBoolean)
  {
    m.b("FeedbackFragment", "Feedback sending result: " + paramBoolean);
    if (!this.a.isAdded());
    while (true)
    {
      return;
      FeedbackFragment.l(this.a);
      FeedbackFragment.a(this.a, paramBoolean.booleanValue());
    }
  }

  protected void onPreExecute()
  {
    FeedbackFragment.a(this.a, this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.n
 * JD-Core Version:    0.6.2
 */