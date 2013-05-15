package com.avast.android.mobilesecurity.app.firewall;

class n
  implements com.avast.android.mobilesecurity.app.firewall.core.a
{
  n(FirewallFragment paramFirewallFragment)
  {
  }

  public void a(String paramString)
  {
    try
    {
      if ((this.a.isAdded()) && (this.a.getActivity() != null))
        com.avast.android.generic.util.a.a(this.a, new o(this, paramString));
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.n
 * JD-Core Version:    0.6.2
 */