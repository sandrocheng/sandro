package org.antivirus.widget.activities;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import org.antivirus.widget.a.i;

final class e extends ArrayAdapter
{
  private i[] b = i.a(this.a);

  public e(WidgetConfigurationActivity paramWidgetConfigurationActivity)
  {
    super(paramWidgetConfigurationActivity, 2130903096);
  }

  public final int getCount()
  {
    return this.b.length;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(2130903096, null);
      d locald2 = new d();
      locald2.a = ((TextView)paramView.findViewById(2131230982));
      locald2.b = ((ImageView)paramView.findViewById(2131230983));
      paramView.setTag(locald2);
    }
    d locald1 = (d)paramView.getTag();
    i locali = this.b[paramInt];
    String str = this.a.getString(locali.c());
    locald1.a.setText(str);
    locald1.b.setImageResource(locali.b());
    return paramView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.activities.e
 * JD-Core Version:    0.6.2
 */