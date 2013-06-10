package org.antivirus.ui.protection;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import org.antivirus.core.Logger;

final class d
  implements AdapterView.OnItemClickListener
{
  d(FileScannerActivity paramFileScannerActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      FileScannerActivity.a(this.a).a(paramInt);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.d
 * JD-Core Version:    0.6.2
 */