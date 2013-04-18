package com.ijinshan.kinghelper.common;

import android.a.w;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.CallLog.Calls;
import android.provider.Contacts.People;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.dc;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class NumberPickListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  protected static final String a = "NumberPickListActivity";
  public static final String b = "vnd.android.cursor.dir/contact";
  public static final String c = "vnd.android.cursor.dir/sms";
  private static final int d = 1;
  private static final SimpleDateFormat e = new SimpleDateFormat("HH:mm MM/dd");
  private SparseBooleanArray f;
  private ProgressBar g;
  private View h;
  private TextView i;
  private Button j;
  private Button k;
  private String l;
  private e m;
  private int n;
  private int o;
  private f p;
  private Context q;

  private void c()
  {
    String[] arrayOfString;
    String str1;
    String str2;
    Object localObject;
    if ("vnd.android.cursor.dir/calls".equals(this.l))
    {
      Uri localUri3 = CallLog.Calls.CONTENT_URI;
      arrayOfString = null;
      str1 = null;
      str2 = "date DESC";
      localObject = localUri3;
    }
    while (true)
    {
      this.p.startQuery(1, null, (Uri)localObject, null, str1, arrayOfString, str2);
      return;
      if ("vnd.android.cursor.dir/sms".equals(this.l))
      {
        Uri localUri2 = w.a;
        arrayOfString = new String[] { "'wappush_message'" };
        str2 = "date DESC";
        str1 = "address !=? ";
        localObject = localUri2;
      }
      else
      {
        if ("vnd.android.cursor.dir/contact".equals(this.l))
        {
          if (Integer.parseInt(Build.VERSION.SDK) > 4);
          for (Uri localUri1 = com.ijinshan.kinghelper.a.e.h; ; localUri1 = Contacts.People.CONTENT_URI)
          {
            localObject = localUri1;
            str1 = null;
            arrayOfString = null;
            str2 = null;
            break;
          }
        }
        localObject = null;
        str1 = null;
        arrayOfString = null;
        str2 = null;
      }
    }
  }

  private void d()
  {
    String str1 = dc.d();
    ArrayList localArrayList1 = this.m.b();
    ArrayList localArrayList2 = new ArrayList();
    Cursor localCursor = this.m.getCursor();
    int i1 = localArrayList1.size();
    String str2;
    if (!"vnd.android.cursor.dir/calls".equals(this.l))
      if ("vnd.android.cursor.dir/sms".equals(this.l))
        str2 = "address";
    label272: label348: for (String str3 = str2; ; str3 = null)
    {
      int i2 = 0;
      while (true)
        if (i2 < i1)
        {
          localCursor.moveToPosition(((Integer)localArrayList1.get(i2)).intValue());
          localArrayList2.add(i.a(localCursor.getString(localCursor.getColumnIndex(str3))));
          i2++;
          continue;
          if (!"vnd.android.cursor.dir/contact".equals(this.l))
            break label348;
          if (Integer.parseInt(Build.VERSION.SDK) > 4)
          {
            str2 = "data1";
            break;
          }
          str2 = "number";
          break;
        }
      int i3 = localArrayList2.size();
      if (i3 <= 0);
      while (true)
      {
        return;
        StringBuffer localStringBuffer = new StringBuffer(str1);
        int i4 = 0;
        if (i4 < i3)
        {
          String str4 = i.a((String)localArrayList2.get(i4));
          String str5;
          if (!TextUtils.isEmpty(str4))
          {
            localStringBuffer.append((String)localArrayList2.get(i4));
            str5 = j.a(this, str4);
            if (!TextUtils.isEmpty(str5))
              break label272;
            localStringBuffer.append(";").append(str4).append(";");
          }
          while (true)
          {
            i4++;
            break;
            str5.replace(";", "");
            localStringBuffer.append(";").append(str5).append(";");
          }
        }
        dc.a(str1 + localStringBuffer.toString());
        setResult(-1);
        this.m.a();
        finish();
      }
    }
  }

  private ArrayList e()
  {
    ArrayList localArrayList1 = this.m.b();
    ArrayList localArrayList2 = new ArrayList();
    Cursor localCursor = this.m.getCursor();
    int i1 = localArrayList1.size();
    String str;
    if (!"vnd.android.cursor.dir/calls".equals(this.l))
      if ("vnd.android.cursor.dir/sms".equals(this.l))
        str = "address";
    while (true)
    {
      for (int i2 = 0; i2 < i1; i2++)
      {
        localCursor.moveToPosition(((Integer)localArrayList1.get(i2)).intValue());
        localArrayList2.add(i.a(localCursor.getString(localCursor.getColumnIndex(str))));
      }
      boolean bool = "vnd.android.cursor.dir/contact".equals(this.l);
      str = null;
      if (bool)
        if (Integer.parseInt(Build.VERSION.SDK) > 4)
          str = "data1";
        else
          str = "number";
    }
    return localArrayList2;
  }

  private boolean f()
  {
    ArrayList localArrayList = this.m.b();
    boolean bool;
    if (this.m.getCount() <= 0)
      bool = false;
    while (true)
    {
      return bool;
      if (localArrayList.size() <= 0)
        bool = false;
      else
        bool = true;
    }
  }

  public final void a()
  {
    if ("vnd.android.cursor.dir/calls".equals(this.l))
      this.o = 2131427658;
    while (true)
    {
      this.i.setText(this.o);
      return;
      if ("vnd.android.cursor.dir/sms".equals(this.l))
        this.o = 2131427657;
      else if ("vnd.android.cursor.dir/contact".equals(this.l))
        this.o = 2131427659;
    }
  }

  public void onClick(View paramView)
  {
    ArrayList localArrayList1;
    int i1;
    String str1;
    ArrayList localArrayList2;
    ArrayList localArrayList3;
    Cursor localCursor;
    int i2;
    String str2;
    if (paramView.getId() == 2131230863)
    {
      localArrayList1 = this.m.b();
      if (this.m.getCount() <= 0)
      {
        i1 = 0;
        if (i1 == 0)
          break label405;
        str1 = dc.d();
        localArrayList2 = this.m.b();
        localArrayList3 = new ArrayList();
        localCursor = this.m.getCursor();
        i2 = localArrayList2.size();
        if ("vnd.android.cursor.dir/calls".equals(this.l))
          break label212;
        if (!"vnd.android.cursor.dir/sms".equals(this.l))
          break label183;
        str2 = "address";
      }
    }
    label100: for (String str3 = str2; ; str3 = null)
    {
      int i3 = 0;
      while (true)
        if (i3 < i2)
        {
          localCursor.moveToPosition(((Integer)localArrayList2.get(i3)).intValue());
          localArrayList3.add(i.a(localCursor.getString(localCursor.getColumnIndex(str3))));
          i3++;
          continue;
          if (localArrayList1.size() <= 0)
          {
            i1 = 0;
            break;
          }
          i1 = 1;
          break;
          if (!"vnd.android.cursor.dir/contact".equals(this.l))
            break label422;
          if (Integer.parseInt(Build.VERSION.SDK) > 4)
          {
            str2 = "data1";
            break label100;
          }
          str2 = "number";
          break label100;
        }
      int i4 = localArrayList3.size();
      if (i4 > 0)
      {
        StringBuffer localStringBuffer = new StringBuffer(str1);
        int i5 = 0;
        if (i5 < i4)
        {
          String str4 = i.a((String)localArrayList3.get(i5));
          String str5;
          if (!TextUtils.isEmpty(str4))
          {
            localStringBuffer.append((String)localArrayList3.get(i5));
            str5 = j.a(this, str4);
            if (!TextUtils.isEmpty(str5))
              break label331;
            localStringBuffer.append(";").append(str4).append(";");
          }
          while (true)
          {
            i5++;
            break;
            str5.replace(";", "");
            localStringBuffer.append(";").append(str5).append(";");
          }
        }
        dc.a(str1 + localStringBuffer.toString());
        setResult(-1);
        this.m.a();
        finish();
      }
      while (true)
      {
        return;
        if (paramView.getId() == 2131230864)
          finish();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903059);
    this.g = ((ProgressBar)findViewById(2131230861));
    this.h = findViewById(2131230862);
    this.i = ((TextView)findViewById(2131230797));
    this.g.setIndeterminate(true);
    this.g.setVisibility(0);
    this.h.setVisibility(8);
    this.i.setVisibility(0);
    this.i.setText(2131427656);
    this.j = ((Button)findViewById(2131230863));
    this.j.setText(2131427541);
    this.j.setOnClickListener(this);
    this.k = ((Button)findViewById(2131230864));
    this.k.setText(2131427542);
    this.k.setOnClickListener(this);
    this.l = getIntent().getType();
    if ("vnd.android.cursor.dir/calls".equals(this.l))
      this.n = 2131427648;
    while (true)
    {
      ((TextView)findViewById(2131230727)).setText(this.n);
      this.m = new e(this, this, this.l);
      setListAdapter(this.m);
      getListView().setOnItemClickListener(this);
      this.p = new f(this, this);
      this.q = getApplicationContext();
      return;
      if ("vnd.android.cursor.dir/sms".equals(this.l))
        this.n = 2131427649;
      else if ("vnd.android.cursor.dir/contact".equals(this.l))
        this.n = 2131427650;
    }
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    g localg = (g)paramView.getTag();
    if (localg.a.isChecked())
    {
      this.f.delete(localg.j);
      localg.a.setChecked(false);
    }
    while (true)
    {
      return;
      this.f.put(localg.j, true);
      localg.a.setChecked(true);
    }
  }

  protected void onResume()
  {
    super.onResume();
    this.g.setVisibility(0);
    this.i.setText(2131427656);
    String[] arrayOfString;
    String str1;
    String str2;
    Object localObject;
    if ("vnd.android.cursor.dir/calls".equals(this.l))
    {
      Uri localUri3 = CallLog.Calls.CONTENT_URI;
      arrayOfString = null;
      str1 = null;
      str2 = "date DESC";
      localObject = localUri3;
    }
    while (true)
    {
      this.p.startQuery(1, null, (Uri)localObject, null, str1, arrayOfString, str2);
      return;
      if ("vnd.android.cursor.dir/sms".equals(this.l))
      {
        Uri localUri2 = w.a;
        arrayOfString = new String[] { "'wappush_message'" };
        str2 = "date DESC";
        str1 = "address !=? ";
        localObject = localUri2;
      }
      else
      {
        if ("vnd.android.cursor.dir/contact".equals(this.l))
        {
          if (Integer.parseInt(Build.VERSION.SDK) > 4);
          for (Uri localUri1 = com.ijinshan.kinghelper.a.e.h; ; localUri1 = Contacts.People.CONTENT_URI)
          {
            localObject = localUri1;
            str1 = null;
            arrayOfString = null;
            str2 = null;
            break;
          }
        }
        localObject = null;
        str1 = null;
        arrayOfString = null;
        str2 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.NumberPickListActivity
 * JD-Core Version:    0.6.2
 */