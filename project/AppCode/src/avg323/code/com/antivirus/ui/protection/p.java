package com.antivirus.ui.protection;

import android.view.View;
import android.view.View.OnClickListener;
import java.io.File;

class p
  implements View.OnClickListener
{
  p(n paramn)
  {
  }

  public void onClick(View paramView)
  {
    File localFile = (File)paramView.getTag();
    if (localFile.isDirectory())
      n.a(this.a, localFile);
    while (true)
    {
      this.a.notifyDataSetChanged();
      return;
      n.b(this.a, localFile);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.p
 * JD-Core Version:    0.6.2
 */