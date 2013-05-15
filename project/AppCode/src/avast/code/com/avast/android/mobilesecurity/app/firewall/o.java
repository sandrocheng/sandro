package com.avast.android.mobilesecurity.app.firewall;

import android.app.AlertDialog.Builder;

class o
  implements Runnable
{
  o(n paramn, String paramString)
  {
  }

  public void run()
  {
    try
    {
      if (this.b.a.isAdded())
        new AlertDialog.Builder(this.b.a.getActivity()).setNeutralButton(17039370, null).setMessage(this.a).show();
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.o
 * JD-Core Version:    0.6.2
 */