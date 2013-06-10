package org.antivirus.tuneup;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class ah
  implements AdapterView.OnItemClickListener
{
  ah(DataPlanSettingsActivity paramDataPlanSettingsActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    DataPlanSettingsActivity.a(this.a, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ah
 * JD-Core Version:    0.6.2
 */