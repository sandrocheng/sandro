package org.antivirus.tuneup;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;

public final class at extends ArrayAdapter
{
  boolean a;
  boolean b;
  private String[] c;
  private LayoutInflater d;
  private int e;

  public at(Context paramContext, int paramInt, String[] paramArrayOfString)
  {
    super(paramContext, 17367055, 16908308, paramArrayOfString);
    this.c = paramArrayOfString;
    this.d = LayoutInflater.from(paramContext);
    this.e = paramInt;
    this.a = true;
    this.b = true;
  }

  public at(Context paramContext, String[] paramArrayOfString)
  {
    this(paramContext, 0, paramArrayOfString);
    this.a = false;
    this.b = true;
  }

  public at(Context paramContext, String[] paramArrayOfString, byte paramByte)
  {
    this(paramContext, 0, paramArrayOfString);
    this.a = false;
    this.b = false;
  }

  public final boolean areAllItemsEnabled()
  {
    return true;
  }

  public final int getCount()
  {
    if (this.c != null);
    for (int i = this.c.length; ; i = 0)
      return i;
  }

  public final Object getItem(int paramInt)
  {
    if (this.c != null);
    for (String str = this.c[paramInt]; ; str = null)
      return str;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 11)
      paramView = super.getView(paramInt, paramView, paramViewGroup);
    label201: label212: 
    while (true)
    {
      return paramView;
      au localau1;
      if (paramView == null)
      {
        paramView = this.d.inflate(2130903058, null);
        au localau2 = new au(this);
        localau2.a = ((TextView)paramView.findViewById(2131230854));
        localau2.b = ((RadioButton)paramView.findViewById(2131230855));
        localau2.c = ((LinearLayout)paramView.findViewById(2131230791));
        paramView.setTag(localau2);
        localau1 = localau2;
        label98: localau1.a.setText(this.c[paramInt]);
        localau1.c.setVisibility(8);
        if (!this.a)
          break label201;
        localau1.b.setVisibility(0);
        if (paramInt == this.e)
          localau1.b.setChecked(true);
      }
      while (true)
      {
        if ((!this.b) || (paramInt != 0) || (Integer.parseInt(Build.VERSION.SDK) >= 11))
          break label212;
        localau1.c.setVisibility(0);
        break;
        localau1 = (au)paramView.getTag();
        break label98;
        localau1.b.setVisibility(8);
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 1;
  }

  public final boolean hasStableIds()
  {
    return false;
  }

  public final boolean isEmpty()
  {
    return false;
  }

  public final boolean isEnabled(int paramInt)
  {
    return true;
  }

  public final void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
  }

  public final void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.at
 * JD-Core Version:    0.6.2
 */