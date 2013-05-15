package com.avast.android.generic;

import android.os.Handler.Callback;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.a.a;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.util.s;
import java.lang.ref.WeakReference;

public class k
{
  public static Handler.Callback a = new l();
  public static WeakReference b;

  public static void a(FragmentActivity paramFragmentActivity)
  {
    a(paramFragmentActivity, false);
  }

  private static void a(FragmentActivity paramFragmentActivity, boolean paramBoolean)
  {
    a locala = (a)ad.a(paramFragmentActivity, a.class);
    if ((locala == null) || (!locala.a()))
    {
      ae localae = (ae)ad.a(paramFragmentActivity.getApplicationContext(), ae.class);
      if ((!paramBoolean) && ((localae == null) || (!localae.o())))
        break label91;
      b = new WeakReference(paramFragmentActivity);
      ((s)ad.a(paramFragmentActivity, s.class)).a(t.ay, a);
      PasswordDialog.a(paramFragmentActivity.getSupportFragmentManager(), t.ay);
    }
    while (true)
    {
      return;
      label91: if (locala != null)
        locala.a(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.k
 * JD-Core Version:    0.6.2
 */