package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.PowerManager;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.s;
import com.avast.android.mobilesecurity.app.filter.core.g;
import com.avast.android.mobilesecurity.app.home.StartActivity;
import com.avast.android.mobilesecurity.app.messageshield.c;
import com.avast.android.mobilesecurity.i;
import com.avast.android.mobilesecurity.j;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public class SmsBlockOfferActivity extends FragmentActivity
  implements Handler.Callback
{
  private s a;
  private String b;
  private String c;
  private String d;
  private String e;
  private long f;
  private boolean g;
  private Queue h;
  private boolean i;
  private boolean j = false;
  private boolean k = false;
  private boolean l = false;
  private TextView m;
  private TextView n;

  private void a()
  {
    PowerManager localPowerManager = (PowerManager)getSystemService("power");
    if (((!this.k) && (!localPowerManager.isScreenOn())) || (this.l))
      return;
    this.l = true;
    if (!this.j)
      if ((!this.g) && (!this.i))
        a(this.c, this.e, this.d, this.f);
    while (true)
    {
      finish();
      c.a(this, this.h, 0);
      break;
      g.d(this.b);
      continue;
      if ((getIntent().getAction() != null) && (getIntent().getAction().equals("SmsBlockOfferActivity.REMOVE_UUID")))
        c.a(this.j);
    }
  }

  private void a(ContentResolver paramContentResolver, long paramLong)
  {
    z localz = new z(this, paramContentResolver);
    Long[] arrayOfLong = new Long[1];
    arrayOfLong[0] = Long.valueOf(paramLong);
    b.a(localz, arrayOfLong);
  }

  private void a(Bundle paramBundle)
  {
    this.g = false;
    this.j = false;
    this.i = false;
    if (paramBundle == null)
      b();
    while (true)
    {
      return;
      this.b = paramBundle.getString("uuid");
      this.c = paramBundle.getString("number");
      if ((TextUtils.isEmpty(this.b)) || (TextUtils.isEmpty(this.c)))
      {
        b();
      }
      else
      {
        this.d = paramBundle.getString("message_text");
        this.e = paramBundle.getString("subject");
        this.f = System.currentTimeMillis();
        TextView localTextView1 = this.m;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.c;
        localTextView1.setText(getString(2131493562, arrayOfObject1));
        TextView localTextView2 = this.n;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.d;
        localTextView2.setText(getString(2131493563, arrayOfObject2));
      }
    }
  }

  private void a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    this.i = true;
    m.b("SmsBlockOfferActivity", String.format("Saving the message back to the provider, address: %s, subject: %s, text: %s", new Object[] { paramString1, paramString2, paramString3 }));
    b.a(new y(this, paramString1, paramString3, paramLong, paramString2), new Void[0]);
  }

  private void b()
  {
    if (!this.h.isEmpty())
      a((Bundle)this.h.poll());
    while (true)
    {
      return;
      finish();
    }
  }

  public static void call(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, Bundle paramBundle, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, SmsBlockOfferActivity.class);
    localIntent.putExtra("uuid", paramString1);
    localIntent.putExtra("number", paramString2);
    localIntent.putExtra("message_text", paramString3);
    localIntent.putExtra("subject", paramString4);
    localIntent.putExtra("original_extras", paramBundle);
    localIntent.setFlags(paramInt);
    paramContext.startActivity(localIntent);
  }

  public boolean handleMessage(Message paramMessage)
  {
    int i1 = 1;
    long l1;
    Uri localUri1;
    if (paramMessage.what == 2131165231)
    {
      this.g = i1;
      ContentResolver localContentResolver = getContentResolver();
      l1 = paramMessage.arg1;
      if (l1 == -1L)
      {
        ContentValues localContentValues1 = new ContentValues();
        localContentValues1.put("name", getString(2131493567));
        localContentValues1.put("minuteTo", Integer.valueOf(1439));
        localContentValues1.put("incomingSMS", Integer.valueOf(i1));
        localContentValues1.put("days", Integer.valueOf(127));
        localUri1 = localContentResolver.insert(j.a(), localContentValues1);
        l1 = ContentUris.parseId(localUri1);
        int i3 = i1;
        Uri localUri2 = i.a(l1);
        ContentValues localContentValues2 = new ContentValues();
        localContentValues2.put("phone", this.c);
        localContentValues2.put("type", Integer.valueOf(10));
        localContentResolver.insert(localUri2, localContentValues2);
        a(localContentResolver, l1);
        if (i3 != 0)
        {
          Intent localIntent = new Intent("android.intent.action.VIEW");
          localIntent.setData(localUri1);
          localIntent.setFlags(268435456);
          StartActivity.a(this, localIntent);
        }
        this.a.b(2131165231, this);
        b();
      }
    }
    while (true)
    {
      return i1;
      localUri1 = j.a(l1);
      int i4 = 0;
      break;
      int i2 = 0;
    }
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.h = new LinkedList();
    this.a = ((s)ad.a(this, s.class));
    if ((getIntent().getAction() != null) && ((getIntent().getAction().equals("SmsBlockOfferActivity.REMOVE_UUID")) || (getIntent().getAction().equals("SmsBlockOfferActivity.REMOVE_NUMBER"))))
    {
      m.b("SmsBlockOfferActivity", "onCreate: Kill self flag set, stopping.");
      this.j = true;
      finish();
    }
    while (true)
    {
      return;
      setContentView(2130903073);
      findViewById(2131165278).setOnClickListener(new w(this));
      findViewById(2131165300).setOnClickListener(new x(this));
      this.m = ((TextView)findViewById(2131165275));
      this.n = ((TextView)findViewById(2131165298));
      if (getIntent().hasExtra("intent_queue"))
      {
        this.h.addAll(getIntent().getParcelableArrayListExtra("intent_queue"));
        b();
      }
      else
      {
        a(getIntent().getExtras());
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    m.b("SmsBlockOfferActivity", "onDestroy called, finishing, message blocked: " + this.g);
    a();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if (paramIntent.getAction() != null)
      if (paramIntent.getAction().equals("SmsBlockOfferActivity.REMOVE_UUID"))
      {
        String str3 = paramIntent.getStringExtra("uuid");
        m.b("SmsBlockOfferActivity", "onNewIntent: Removing uuid from queue: " + str3);
        Iterator localIterator2 = this.h.iterator();
        while (localIterator2.hasNext())
        {
          String str4 = ((Bundle)localIterator2.next()).getString("uuid");
          if ((str4 != null) && (str4.equals(str3)))
            localIterator2.remove();
        }
        if (this.b.equals(str3))
        {
          this.j = true;
          b();
        }
        c.a(false);
      }
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("SmsBlockOfferActivity.REMOVE_NUMBER"))
      {
        String str1 = paramIntent.getStringExtra("number");
        m.b("SmsBlockOfferActivity", "onNewIntent: Removing number from queue: " + str1);
        Iterator localIterator1 = this.h.iterator();
        while (localIterator1.hasNext())
        {
          String str2 = ((Bundle)localIterator1.next()).getString("number");
          if ((str2 != null) && (str2.equals(str1)))
            localIterator1.remove();
        }
        if (this.c.equals(str1))
        {
          this.j = true;
          b();
        }
      }
      else
      {
        m.b("SmsBlockOfferActivity", "onNewIntent: adding intent to queue.");
        this.h.add(paramIntent.getExtras());
      }
    }
  }

  protected void onStop()
  {
    super.onStop();
    m.b("SmsBlockOfferActivity", "onStop called, finishing, message blocked: " + this.g);
    a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.SmsBlockOfferActivity
 * JD-Core Version:    0.6.2
 */