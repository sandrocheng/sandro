package org.antivirus.tuneup;

import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

final class ax
  implements Runnable
{
  ax(aw paramaw)
  {
  }

  public final void run()
  {
    if (StorageActivity.d(this.a.a).getAdapter() == null)
    {
      StorageActivity.a(this.a.a, new b(this.a.a, 0, StorageActivity.a(this.a.a)));
      StorageActivity.d(this.a.a).setAdapter(StorageActivity.e(this.a.a));
    }
    ((TextView)this.a.a.findViewById(2131230896)).setVisibility(8);
    ((ProgressBar)this.a.a.findViewById(2131230895)).setVisibility(8);
    StorageActivity.e(this.a.a).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ax
 * JD-Core Version:    0.6.2
 */