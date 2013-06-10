package org.antivirus.ui.protection;

import android.view.View;
import android.view.View.OnClickListener;
import java.io.File;

final class n
  implements View.OnClickListener
{
  n(l paraml)
  {
  }

  public final void onClick(View paramView)
  {
    File localFile = (File)paramView.getTag();
    if (localFile.isDirectory())
      l.a(this.a, localFile);
    while (true)
    {
      this.a.notifyDataSetChanged();
      return;
      l.b(this.a, localFile);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.n
 * JD-Core Version:    0.6.2
 */