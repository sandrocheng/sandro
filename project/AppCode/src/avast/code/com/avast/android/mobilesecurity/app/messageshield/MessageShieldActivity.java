package com.avast.android.mobilesecurity.app.messageshield;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract.PhoneLookup;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.core.u;
import com.avast.android.mobilesecurity.app.webshield.WebshieldService;
import com.avast.android.mobilesecurity.engine.ah;
import com.avast.android.mobilesecurity.engine.ak;
import com.avast.android.mobilesecurity.engine.k;
import com.avast.android.mobilesecurity.engine.l;
import com.avast.android.mobilesecurity.engine.o;
import com.avast.android.mobilesecurity.engine.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;

public class MessageShieldActivity extends Activity
{
  private boolean a;
  private i b;
  private List c;
  private Queue d;
  private Button e;
  private Button f;
  private TextView g;
  private CheckBox h;
  private CheckBox i;
  private boolean j;

  private void a()
  {
    this.e.setVisibility(8);
    this.f.setBackgroundResource(2130837887);
    this.h.setVisibility(8);
    this.i.setVisibility(8);
  }

  private void a(Bundle paramBundle)
  {
    this.j = false;
    this.c.clear();
    if (paramBundle == null)
      g();
    label22: String str2;
    while (true)
    {
      return;
      this.b = b(paramBundle);
      if ((this.b.a.e == null) || (this.b.a.e != p.b))
      {
        g();
      }
      else
      {
        if (paramBundle.containsKey("message_ids"))
        {
          Iterator localIterator2 = paramBundle.getStringArrayList("message_ids").iterator();
          while (localIterator2.hasNext())
          {
            String str3 = (String)localIterator2.next();
            this.c.add(Long.valueOf(Long.parseLong(str3)));
          }
        }
        if (this.b.a.c > 0L);
        String str1;
        for (boolean bool = true; ; bool = false)
        {
          this.a = bool;
          str1 = this.b.c + "";
          str2 = h();
          switch (h.a[this.b.b.ordinal()])
          {
          default:
            g();
            break label22;
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
        }
        this.g.setText(Html.fromHtml(getString(2131493451, new Object[] { str1, str2 })));
        a();
        continue;
        this.g.setText(Html.fromHtml(getString(2131493452, new Object[] { str1, str2 })));
        a();
        continue;
        this.g.setText(Html.fromHtml(getString(2131493453, new Object[] { str2 })));
        a();
        continue;
        this.g.setText(Html.fromHtml(getString(2131493454, new Object[] { str2, str1 })));
        a();
      }
    }
    int k;
    int m;
    label414: ak localak;
    int n;
    int i1;
    if (this.b.e != null)
    {
      Iterator localIterator1 = this.b.e.iterator();
      k = 0;
      m = 0;
      if (!localIterator1.hasNext())
        break label492;
      localak = ak.a(((Integer)localIterator1.next()).intValue());
      if (localak == ak.f)
      {
        n = k;
        i1 = 1;
      }
    }
    while (true)
    {
      m = i1;
      k = n;
      break label414;
      if (localak == ak.c)
      {
        n = 1;
        i1 = m;
        continue;
        k = 0;
        m = 0;
        label492: if ((m != 0) && (k != 0))
        {
          this.g.setText(Html.fromHtml(getString(2131493457, new Object[] { str2 })));
          this.h.setVisibility(0);
          this.i.setVisibility(0);
        }
        while (true)
        {
          this.e.setVisibility(0);
          this.f.setBackgroundResource(2130837885);
          this.h.setChecked(true);
          this.i.setChecked(true);
          break;
          if (m != 0)
          {
            this.g.setText(Html.fromHtml(getString(2131493455, new Object[] { str2 })));
            this.h.setVisibility(8);
            this.i.setVisibility(8);
          }
          else if (k != 0)
          {
            this.g.setText(Html.fromHtml(getString(2131493456, new Object[] { str2 })));
            this.h.setVisibility(8);
            this.i.setVisibility(8);
          }
          else
          {
            g();
          }
        }
      }
      else
      {
        n = k;
        i1 = m;
      }
    }
  }

  private i b(Bundle paramBundle)
  {
    i locali = new i(null);
    locali.a = ((MessageToScan)paramBundle.getParcelable("message"));
    locali.c = paramBundle.getString("infectionType");
    locali.b = o.a(paramBundle.getInt("result", o.a.a()));
    if (paramBundle.containsKey("urlDetections_urls"))
    {
      locali.d = paramBundle.getStringArrayList("urlDetections_urls");
      locali.e = paramBundle.getIntegerArrayList("urlDetections_results");
      locali.f = paramBundle.getStringArrayList("urlDetections_brandDomains");
    }
    return locali;
  }

  private void b()
  {
    String str = this.b.a.h;
    int k;
    Object localObject1;
    Object localObject2;
    if (this.b.d != null)
    {
      k = 0;
      localObject1 = str;
      if (k >= this.b.d.size())
        break label205;
      if ((ak.a(((Integer)this.b.e.get(k)).intValue()) == ak.f) && (this.h.isChecked()))
        localObject2 = ((String)localObject1).replaceAll((String)this.b.d.get(k), (String)this.b.f.get(k));
    }
    while (true)
    {
      k++;
      localObject1 = localObject2;
      break;
      if ((ak.a(((Integer)this.b.e.get(k)).intValue()) == ak.c) && (this.i.isChecked()))
      {
        localObject2 = ((String)localObject1).replaceAll((String)this.b.d.get(k), getString(2131493463));
        continue;
        localObject1 = str;
        label205: long l;
        if (!this.a)
        {
          l = d();
          this.b.a.h = ((String)localObject1);
          if (l < 0L)
            e();
        }
        while (true)
        {
          return;
          this.b.a.c = l;
          f();
          continue;
          this.b.a.h = ((String)localObject1);
          f();
        }
      }
      else
      {
        localObject2 = localObject1;
      }
    }
  }

  private void c()
  {
    com.avast.android.mobilesecurity.app.filter.core.g.a(this, this.b.a.b, Long.valueOf(this.b.a.c), this.b.a.f, this.b.a.h);
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      com.avast.android.mobilesecurity.app.filter.core.g.a(this, this.b.a.b, localLong, this.b.a.f, this.b.a.h);
    }
  }

  public static void call(Context paramContext, MessageToScan paramMessageToScan, Set paramSet, k paramk, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, MessageShieldActivity.class);
    l locall = a.c(paramk);
    if (paramk.b != null)
    {
      ArrayList localArrayList1 = new ArrayList(paramk.b.size());
      ArrayList localArrayList2 = new ArrayList(paramk.b.size());
      ArrayList localArrayList3 = new ArrayList(paramk.b.size());
      Iterator localIterator1 = paramk.b.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        localArrayList1.add((String)localEntry.getKey());
        List localList = (List)localEntry.getValue();
        WebshieldService.a(localList);
        ah localah = (ah)localList.get(0);
        localArrayList2.add(Integer.valueOf(localah.a.a()));
        localArrayList3.add(localah.d);
      }
      localIntent.putStringArrayListExtra("urlDetections_urls", localArrayList1);
      localIntent.putIntegerArrayListExtra("urlDetections_results", localArrayList2);
      localIntent.putStringArrayListExtra("urlDetections_brandDomains", localArrayList3);
    }
    localIntent.putExtra("result", locall.a.a());
    localIntent.putExtra("infectionType", locall.b);
    localIntent.putExtra("message", paramMessageToScan);
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      ArrayList localArrayList4 = new ArrayList();
      Iterator localIterator2 = paramSet.iterator();
      while (localIterator2.hasNext())
        localArrayList4.add(String.valueOf((Long)localIterator2.next()));
      localIntent.putStringArrayListExtra("message_ids", localArrayList4);
    }
    localIntent.setFlags(paramInt);
    paramContext.startActivity(localIntent);
  }

  private long d()
  {
    if (com.avast.android.mobilesecurity.app.filter.core.g.b(this.b.a.b));
    for (long l = -1L; ; l = com.avast.android.mobilesecurity.app.filter.core.g.a(getContentResolver(), this.b.a.f, this.b.a.h))
      return l;
  }

  private void e()
  {
    this.a = true;
    com.avast.android.mobilesecurity.app.filter.core.g.a(this, this.b.a.f, this.b.a.h, this.b.a.g, this.b.a.i, true);
    if (com.avast.android.mobilesecurity.app.filter.core.g.b(this.b.a.b))
      com.avast.android.mobilesecurity.app.filter.core.g.c(this.b.a.b);
  }

  private void f()
  {
    this.a = true;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(u.j, this.b.a.h);
    getContentResolver().update(ContentUris.withAppendedId(u.a, this.b.a.c), localContentValues, null, null);
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      getContentResolver().update(ContentUris.withAppendedId(u.a, localLong.longValue()), localContentValues, null, null);
    }
  }

  private void g()
  {
    if (!this.d.isEmpty())
      a((Bundle)this.d.poll());
    while (true)
    {
      return;
      finish();
    }
  }

  private String h()
  {
    String str1 = this.b.a.f;
    Cursor localCursor = getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(this.b.a.f)), new String[] { "display_name" }, null, null, null);
    String str2;
    if (localCursor != null)
      if (localCursor.moveToFirst())
      {
        str2 = localCursor.getString(localCursor.getColumnIndex("display_name"));
        localCursor.close();
      }
    while (true)
    {
      return str2;
      str2 = str1;
      break;
      str2 = str1;
    }
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = new LinkedList();
    this.c = new ArrayList();
    setContentView(2130903069);
    this.g = ((TextView)findViewById(2131165288));
    this.e = ((Button)findViewById(2131165291));
    this.e.setOnClickListener(new e(this));
    this.f = ((Button)findViewById(2131165292));
    this.f.setOnClickListener(new f(this));
    findViewById(2131165293).setOnClickListener(new g(this));
    this.h = ((CheckBox)findViewById(2131165289));
    this.i = ((CheckBox)findViewById(2131165290));
    if (getIntent().hasExtra("intent_queue"))
    {
      this.d.addAll(getIntent().getParcelableArrayListExtra("intent_queue"));
      g();
    }
    while (true)
    {
      return;
      a(getIntent().getExtras());
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    m.c("MessageShieldActivity: onNewIntent: adding intent to queue.");
    this.d.add(paramIntent.getExtras());
  }

  protected void onStop()
  {
    super.onStop();
    if ((!this.j) && (!this.a) && (d() < 0L))
      e();
    while (true)
    {
      finish();
      if (this.d.size() > 0)
      {
        Intent localIntent = new Intent(this, getClass());
        localIntent.putParcelableArrayListExtra("intent_queue", new ArrayList(this.d));
        startActivity(localIntent);
      }
      return;
      if (com.avast.android.mobilesecurity.app.filter.core.g.b(this.b.a.b))
        com.avast.android.mobilesecurity.app.filter.core.g.d(this.b.a.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.MessageShieldActivity
 * JD-Core Version:    0.6.2
 */