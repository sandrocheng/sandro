package com.ijinshan.kinghelper.firewall;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FirewallSettingsKeysActivity extends ListActivity
  implements AdapterView.OnItemClickListener
{
  public static final String a = "";
  private ArrayList b;
  private aq c;

  private static boolean b(String paramString)
  {
    return Pattern.compile("[^A-Za-z0-9\\u4E00-\\u9FA5]").matcher(paramString).find();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903047);
    ((TextView)findViewById(2131230727)).setText(super.getTitle());
    EditText localEditText = (EditText)findViewById(2131230795);
    ((Button)findViewById(2131230796)).setOnClickListener(new ap(this, localEditText));
    String str = dd.h();
    this.b = new ArrayList();
    if ((str != null) && (!"".equals(str)))
    {
      String[] arrayOfString = str.split("\\|");
      for (int i = 0; i < arrayOfString.length; i++)
        this.b.add(arrayOfString[i]);
    }
    this.c = new aq(this, this, this.b);
    setListAdapter(this.c);
    getListView().setOnItemClickListener(this);
    getListView().setSelector(2130837790);
  }

  public void onDestroy()
  {
    super.onDestroy();
    int i = this.b.size();
    StringBuffer localStringBuffer = new StringBuffer("");
    if (i > 0)
    {
      int j = 0;
      if (j < i)
      {
        if (j == 0)
          localStringBuffer.append((String)this.b.get(j));
        while (true)
        {
          j++;
          break;
          localStringBuffer.append("|").append((String)this.b.get(j));
        }
      }
      dd.c(localStringBuffer.toString());
    }
    while (true)
    {
      return;
      dd.c("");
    }
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.remove(paramInt);
    this.c.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallSettingsKeysActivity
 * JD-Core Version:    0.6.2
 */