package com.keniu.security.protection.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.io.PrintStream;
import java.util.ArrayList;

final class an extends BaseAdapter
  implements View.OnClickListener
{
  private ArrayList b;

  public an(PreventTheftWhiteListActivity paramPreventTheftWhiteListActivity, ArrayList paramArrayList)
  {
    this.b = paramArrayList;
  }

  private static String a(String paramString)
  {
    String str;
    if ((paramString == null) || ("".equals(paramString)))
      str = "";
    while (true)
    {
      return str;
      if ((paramString.startsWith("46000")) || (paramString.startsWith("46002")))
        str = "中国移动";
      else if ((paramString.startsWith("46001")) || (paramString.startsWith("46006")))
        str = "中国联通\t";
      else if ((paramString.startsWith("46003")) || (paramString.startsWith("46005")))
        str = "中国电信";
      else
        str = "";
    }
  }

  public final void a(int paramInt)
  {
    System.out.println("deleteItem: " + paramInt);
    this.b.remove(paramInt);
    PreventTheftWhiteListActivity.a(this.a, this.b);
    notifyDataSetChanged();
  }

  public final ao b(int paramInt)
  {
    return (ao)this.b.get(paramInt);
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = this.a.getLayoutInflater().inflate(2130903218, null, false);
    am localam = new am(this.a);
    localam.a = ((TextView)localView.findViewById(2131231390));
    localam.b = ((TextView)localView.findViewById(2131231388));
    localView.setTag(localam);
    ao localao = b(paramInt);
    localam.a.setText(localao.a);
    String str1;
    String str2;
    if ((localao.b == null) || (localao.b.equals("")))
    {
      TextView localTextView = localam.b;
      str1 = localao.a;
      if ((str1 == null) || ("".equals(str1)))
      {
        str2 = "";
        localTextView.setText(str2);
      }
    }
    while (true)
    {
      return localView;
      if ((str1.startsWith("46000")) || (str1.startsWith("46002")))
      {
        str2 = "中国移动";
        break;
      }
      if ((str1.startsWith("46001")) || (str1.startsWith("46006")))
      {
        str2 = "中国联通\t";
        break;
      }
      if ((str1.startsWith("46003")) || (str1.startsWith("46005")))
      {
        str2 = "中国电信";
        break;
      }
      str2 = "";
      break;
      localam.b.setText(localao.b);
    }
  }

  public final void onClick(View paramView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.an
 * JD-Core Version:    0.6.2
 */