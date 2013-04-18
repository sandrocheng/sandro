package com.keniu.security.protection.ui;

import android.app.ListActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.av;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;

public class PreventTheftWhiteListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private an a;
  private DataSetObserver b = new aj(this);

  private void a()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230870);
    localRelativeLayout.setPadding(0, 0, 0, 0);
    ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(localRelativeLayout.getLayoutParams());
    localMarginLayoutParams.setMargins(0, 0, 0, 0);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(localMarginLayoutParams);
    localLayoutParams.addRule(3, 2131230867);
    localRelativeLayout.setLayoutParams(localLayoutParams);
    ((LinearLayout)findViewById(2131230865)).setVisibility(0);
    ((TextView)findViewById(2131230866)).setText(2131429225);
    ((RadioGroup)findViewById(2131230867)).setVisibility(8);
    ((ImageView)findViewById(2131230872)).setVisibility(0);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230871);
    localLinearLayout.setVisibility(0);
    localLinearLayout.setOnClickListener(this);
    ((TextView)findViewById(2131230873)).setText(2131429262);
    ((ImageView)findViewById(2131230877)).setImageResource(2130837609);
    ((TextView)findViewById(2131230797)).setText(2131429263);
  }

  private void a(int paramInt)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b(paramInt);
    localaq.a(getString(2131427864), new al(this));
    localaq.c().show();
  }

  private void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      System.out.println("LongClickMore case 0");
      this.a.a(paramInt2);
      continue;
      System.out.println("LongClickMore case 1");
      Intent localIntent = new Intent(this, PreventTheftWhiteAddActivity.class);
      localIntent.putExtra("number", this.a.b(paramInt2).a);
      localIntent.putExtra("location", this.a.b(paramInt2).b);
      localIntent.setType("modify");
      startActivity(localIntent);
    }
  }

  private void a(ArrayList paramArrayList)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    StringBuffer localStringBuffer2 = new StringBuffer();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      ao localao = (ao)localIterator.next();
      localStringBuffer1.append(localao.a).append(",");
      if ((localao.b == null) || (localao.b.equals("")))
        localStringBuffer2.append(",");
      else
        localStringBuffer2.append(localao.b).append(",");
    }
    try
    {
      ag.f(getApplicationContext(), localStringBuffer1.toString());
      ag.g(getApplicationContext(), localStringBuffer2.toString());
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException = localException;
        localException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  private void b()
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = ag.n(getApplicationContext());
    String str2 = ag.o(getApplicationContext());
    if ((str1 != null) && (!str1.equals("")))
    {
      String[] arrayOfString1 = str1.split(",");
      Object localObject;
      if ((str2 == null) || (str2.equals("")))
        localObject = new String[arrayOfString1.length];
      while (true)
      {
        for (int i = 0; i < arrayOfString1.length; i++)
          localArrayList.add(new ao(this, arrayOfString1[i], localObject[i]));
        localObject = str2.split(",");
        if (localObject.length < arrayOfString1.length)
        {
          String[] arrayOfString2 = new String[arrayOfString1.length];
          for (int j = 0; j < localObject.length; j++)
            arrayOfString2[j] = localObject[j];
          localObject = arrayOfString2;
        }
      }
    }
    this.a = new an(this, localArrayList);
    setListAdapter(this.a);
    this.a.registerDataSetObserver(this.b);
    getListView().setOnItemClickListener(this);
  }

  public void onClick(View paramView)
  {
    String str1;
    String str2;
    if (paramView.getId() == 2131230871)
    {
      str1 = ag.n(getApplicationContext());
      str2 = av.c(this);
      if ((str2 != null) && (!str2.equals("")) && (!str2.equals("-1")))
        break label53;
      a(2131429264);
    }
    while (true)
    {
      return;
      label53: if ((str1 != null) && (str1.indexOf(str2) >= 0))
      {
        System.out.println("number.indexOf(presentIMSI)=" + str1.indexOf(str2));
        a(2131429265);
      }
      else
      {
        System.out.println("启动添加页面");
        Intent localIntent = new Intent(this, PreventTheftWhiteAddActivity.class);
        localIntent.putExtra("number", str2);
        localIntent.putExtra("location", "");
        localIntent.setType("save");
        startActivity(localIntent);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    System.out.println("PreventTheftWhiteListActivity oncreate");
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903060);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230870);
    localRelativeLayout.setPadding(0, 0, 0, 0);
    ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(localRelativeLayout.getLayoutParams());
    localMarginLayoutParams.setMargins(0, 0, 0, 0);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(localMarginLayoutParams);
    localLayoutParams.addRule(3, 2131230867);
    localRelativeLayout.setLayoutParams(localLayoutParams);
    ((LinearLayout)findViewById(2131230865)).setVisibility(0);
    ((TextView)findViewById(2131230866)).setText(2131429225);
    ((RadioGroup)findViewById(2131230867)).setVisibility(8);
    ((ImageView)findViewById(2131230872)).setVisibility(0);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131230871);
    localLinearLayout.setVisibility(0);
    localLinearLayout.setOnClickListener(this);
    ((TextView)findViewById(2131230873)).setText(2131429262);
    ((ImageView)findViewById(2131230877)).setImageResource(2130837609);
    ((TextView)findViewById(2131230797)).setText(2131429263);
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String[] arrayOfString = getResources().getStringArray(2131165185);
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427933);
    localaq.a(arrayOfString, new ak(this, paramInt));
    localaq.c().show();
  }

  protected void onStart()
  {
    System.out.println("PreventTheftWhiteListActivity onstart");
    super.onStart();
    ArrayList localArrayList = new ArrayList();
    String str1 = ag.n(getApplicationContext());
    String str2 = ag.o(getApplicationContext());
    if ((str1 != null) && (!str1.equals("")))
    {
      String[] arrayOfString1 = str1.split(",");
      Object localObject;
      if ((str2 == null) || (str2.equals("")))
        localObject = new String[arrayOfString1.length];
      while (true)
      {
        for (int i = 0; i < arrayOfString1.length; i++)
          localArrayList.add(new ao(this, arrayOfString1[i], localObject[i]));
        localObject = str2.split(",");
        if (localObject.length < arrayOfString1.length)
        {
          String[] arrayOfString2 = new String[arrayOfString1.length];
          for (int j = 0; j < localObject.length; j++)
            arrayOfString2[j] = localObject[j];
          localObject = arrayOfString2;
        }
      }
    }
    this.a = new an(this, localArrayList);
    setListAdapter(this.a);
    this.a.registerDataSetObserver(this.b);
    getListView().setOnItemClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftWhiteListActivity
 * JD-Core Version:    0.6.2
 */