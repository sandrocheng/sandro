package com.avg.ui.general.b;

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
import com.avg.ui.general.d;

public class e extends ArrayAdapter
{
  boolean a;
  boolean b;
  private String[] c;
  private LayoutInflater d;
  private int e;

  public e(Context paramContext, int paramInt, boolean paramBoolean, String[] paramArrayOfString)
  {
    this(paramContext, paramInt, paramArrayOfString);
    this.a = paramBoolean;
    this.b = true;
  }

  public e(Context paramContext, int paramInt, boolean paramBoolean1, String[] paramArrayOfString, boolean paramBoolean2)
  {
    this(paramContext, paramInt, paramArrayOfString);
    this.a = paramBoolean1;
    this.b = paramBoolean2;
  }

  public e(Context paramContext, int paramInt, String[] paramArrayOfString)
  {
    super(paramContext, 17367055, 16908308, paramArrayOfString);
    this.c = paramArrayOfString;
    this.d = LayoutInflater.from(paramContext);
    this.e = paramInt;
    this.a = true;
    this.b = true;
  }

  public String a(int paramInt)
  {
    if (this.c != null);
    for (String str = this.c[paramInt]; ; str = null)
      return str;
  }

  public boolean areAllItemsEnabled()
  {
    return true;
  }

  public int getCount()
  {
    if (this.c != null);
    for (int i = this.c.length; ; i = 0)
      return i;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    return 0;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (Build.VERSION.SDK_INT >= 11)
      paramView = super.getView(paramInt, paramView, paramViewGroup);
    label199: label210: 
    while (true)
    {
      return paramView;
      f localf1;
      if (paramView == null)
      {
        paramView = this.d.inflate(com.avg.ui.general.e.dialog_list_item, null);
        f localf2 = new f(this);
        localf2.a = ((TextView)paramView.findViewById(d.textView));
        localf2.b = ((RadioButton)paramView.findViewById(d.radioButton));
        localf2.c = ((LinearLayout)paramView.findViewById(d.separator));
        paramView.setTag(localf2);
        localf1 = localf2;
        label99: localf1.a.setText(this.c[paramInt]);
        localf1.c.setVisibility(8);
        if (!this.a)
          break label199;
        localf1.b.setVisibility(0);
        if (paramInt == this.e)
          localf1.b.setChecked(true);
      }
      while (true)
      {
        if ((!this.b) || (paramInt != 0) || (Build.VERSION.SDK_INT >= 11))
          break label210;
        localf1.c.setVisibility(0);
        break;
        localf1 = (f)paramView.getTag();
        break label99;
        localf1.b.setVisibility(8);
      }
    }
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  public boolean hasStableIds()
  {
    return false;
  }

  public boolean isEmpty()
  {
    return false;
  }

  public boolean isEnabled(int paramInt)
  {
    return true;
  }

  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
  }

  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.b.e
 * JD-Core Version:    0.6.2
 */