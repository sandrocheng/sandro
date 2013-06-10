package org.antivirus.widget.activities;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import java.util.List;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.k;

final class f
  implements AdapterView.OnItemClickListener
{
  f(WidgetConfigurationActivity paramWidgetConfigurationActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    TextView localTextView = (TextView)this.a.findViewById(WidgetConfigurationActivity.b(this.a));
    i locali = (i)paramAdapterView.getAdapter().getItem(paramInt);
    localTextView.setText(this.a.getString(locali.c()));
    localTextView.setCompoundDrawablesWithIntrinsicBounds(0, locali.b(), 0, 0);
    WidgetConfigurationActivity.d(this.a).a(WidgetConfigurationActivity.c(this.a).indexOf(localTextView), locali.a());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.activities.f
 * JD-Core Version:    0.6.2
 */