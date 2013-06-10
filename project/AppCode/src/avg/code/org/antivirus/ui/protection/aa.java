package org.antivirus.ui.protection;

final class aa
  implements Runnable
{
  aa(z paramz)
  {
  }

  public final void run()
  {
    if (ProtectionActivity.i(this.a.a) != null)
      ProtectionActivity.i(this.a.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.aa
 * JD-Core Version:    0.6.2
 */