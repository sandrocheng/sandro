package org.antivirus.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public abstract class CustomListAdaptor extends BaseAdapter
{
  private LayoutInflater a;

  public CustomListAdaptor(Context paramContext)
  {
    this.a = LayoutInflater.from(paramContext);
  }

  protected abstract void a(int paramInt, CustomListAdaptor.ViewHolder paramViewHolder);

  public int getCount()
  {
    return 0;
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
    CustomListAdaptor.ViewHolder localViewHolder2;
    if (paramView == null)
    {
      paramView = this.a.inflate(2130903084, null);
      localViewHolder2 = new CustomListAdaptor.ViewHolder(this);
      localViewHolder2.icon = ((ImageView)paramView.findViewById(2131230874));
      localViewHolder2.title = ((TextView)paramView.findViewById(2131230731));
      localViewHolder2.summary = ((TextView)paramView.findViewById(2131230932));
      paramView.setTag(localViewHolder2);
    }
    for (CustomListAdaptor.ViewHolder localViewHolder1 = localViewHolder2; ; localViewHolder1 = (CustomListAdaptor.ViewHolder)paramView.getTag())
    {
      a(paramInt, localViewHolder1);
      return paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.CustomListAdaptor
 * JD-Core Version:    0.6.2
 */