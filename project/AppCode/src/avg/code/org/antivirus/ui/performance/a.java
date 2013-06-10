package org.antivirus.ui.performance;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.Strings;

public class a extends BaseAdapter
{
  ArrayList a;

  public a(ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public static void a(c paramc, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramc.a.setImageResource(paramInt2);
    paramc.b.setText(Strings.getString(paramInt3));
    paramc.d.setText(Strings.getString(paramInt4));
    paramc.f.setImageResource(2130837731);
    paramc.f.setVisibility(0);
    paramc.g = paramInt1;
  }

  public int getCount()
  {
    if (this.a != null);
    for (int i = this.a.size(); ; i = 0)
      return i;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.a
 * JD-Core Version:    0.6.2
 */