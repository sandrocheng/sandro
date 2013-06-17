package com.avg.widget.activities;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.avg.widget.model.plugin.WidgetPlugin;

class e extends ArrayAdapter
{
  public e(a parama)
  {
    super(parama, com.avg.widget.e.widget_config_list_item);
  }

  public int a(WidgetPlugin paramWidgetPlugin)
  {
    return 0;
  }

  public WidgetPlugin a(int paramInt)
  {
    return (WidgetPlugin)a.c(this.a)[paramInt];
  }

  public int getCount()
  {
    return a.c(this.a).length;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(com.avg.widget.e.widget_config_list_item, null);
      d locald2 = new d();
      locald2.a = ((TextView)paramView.findViewById(com.avg.widget.d.widgetConfigTextLeft));
      locald2.b = ((ImageView)paramView.findViewById(com.avg.widget.d.widgetConfigImageRight));
      paramView.setTag(locald2);
    }
    d locald1 = (d)paramView.getTag();
    WidgetPlugin localWidgetPlugin = (WidgetPlugin)a.c(this.a)[paramInt];
    String str = this.a.getString(localWidgetPlugin.h());
    locald1.a.setText(str);
    locald1.b.setImageResource(localWidgetPlugin.i());
    return paramView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.widget.activities.e
 * JD-Core Version:    0.6.2
 */