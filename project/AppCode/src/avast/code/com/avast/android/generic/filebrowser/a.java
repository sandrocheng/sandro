package com.avast.android.generic.filebrowser;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import java.util.List;

public abstract class a extends BaseAdapter
{
  protected Context a;
  protected LayoutInflater b;
  protected String c;
  protected d d;
  private List e;

  public a(Context paramContext, List paramList, String paramString, d paramd)
  {
    this.a = paramContext.getApplicationContext();
    this.b = LayoutInflater.from(paramContext);
    this.c = paramString;
    this.d = paramd;
    a(paramList);
  }

  private boolean a()
  {
    if ((this.c.equals("android.intent.action.GET_CONTENT")) && ((this.d.equals(d.a)) || (this.d.equals(d.c))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public f a(int paramInt)
  {
    return (f)this.e.get(paramInt);
  }

  public void a(List paramList)
  {
    this.e = paramList;
    if (this.e != null)
      notifyDataSetChanged();
    while (true)
    {
      return;
      notifyDataSetInvalidated();
    }
  }

  public boolean areAllItemsEnabled()
  {
    return true;
  }

  public int getCount()
  {
    if (this.e != null);
    for (int i = this.e.size(); ; i = 0)
      return i;
  }

  public Object getItem(int paramInt)
  {
    return this.e.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public boolean isEnabled(int paramInt)
  {
    if ((!this.c.equals("android.intent.action.GET_CONTENT")) || (a(paramInt).e()) || (a()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.filebrowser.a
 * JD-Core Version:    0.6.2
 */