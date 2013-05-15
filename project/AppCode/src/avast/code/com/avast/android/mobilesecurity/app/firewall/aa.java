package com.avast.android.mobilesecurity.app.firewall;

import android.app.AlertDialog.Builder;

class aa
  implements Runnable
{
  aa(z paramz, String paramString)
  {
  }

  public void run()
  {
    try
    {
      if (this.b.a.a.isAdded())
        new AlertDialog.Builder(this.b.a.a.getActivity()).setNeutralButton(17039370, null).setMessage(this.a).show();
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.aa
 * JD-Core Version:    0.6.2
 */