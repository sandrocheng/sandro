package com.avg.widget.activities;

import android.os.Bundle;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.avg.toolkit.i;
import com.avg.widget.model.plugin.WidgetPlugin;
import java.util.List;

class f
  implements AdapterView.OnItemClickListener
{
  f(a parama)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    TextView localTextView = (TextView)this.a.findViewById(a.a(this.a));
    WidgetPlugin localWidgetPlugin = (WidgetPlugin)paramAdapterView.getAdapter().getItem(paramInt);
    localTextView.setText(this.a.getString(localWidgetPlugin.h()));
    localTextView.setCompoundDrawablesWithIntrinsicBounds(0, localWidgetPlugin.i(), 0, 0);
    Bundle localBundle = new Bundle();
    localBundle.putInt("widget_view_button_id", a.b(this.a).indexOf(localTextView));
    localBundle.putInt("widget_config_resource_item", localWidgetPlugin.j());
    i.a(this.a, 25000, 10, localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.activities.f
 * JD-Core Version:    0.6.2
 */