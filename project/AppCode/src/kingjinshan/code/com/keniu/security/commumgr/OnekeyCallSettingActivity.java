package com.keniu.security.commumgr;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.Toast;
import com.ijinshan.kinghelper.common.ContactItem;
import com.ijinshan.kinghelper.common.PickListActivity;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.util.ArrayList;
import java.util.Map;

public class OnekeyCallSettingActivity extends BaseTitleActivity
  implements View.OnClickListener
{
  private static final int a = 1;
  private static final String[] j = { "content://com.android.launcher.settings/favorites", "content://com.android.launcher2.settings/favorites", "content://com.sec.android.app.twlauncher.settings/favorites", "content://com.htc.launcher.settings/favorites" };
  private ListView b;
  private p c;
  private String d;
  private int e;
  private long f;
  private Handler g;
  private r h;
  private r i;

  private static Cursor a(ContentResolver paramContentResolver, String paramString)
  {
    try
    {
      Cursor localCursor2 = paramContentResolver.query(Uri.parse(paramString), new String[] { "title", "intent", "icon" }, "itemType=0 or itemType=1 or itemType=3", null, null);
      localCursor1 = localCursor2;
      return localCursor1;
    }
    catch (Exception localException)
    {
      while (true)
        Cursor localCursor1 = null;
    }
  }

  private Bitmap a(ContactItem paramContactItem)
  {
    Resources localResources = getResources();
    float f1 = localResources.getDisplayMetrics().scaledDensity;
    if (paramContactItem.d != null);
    for (Bitmap localBitmap1 = BitmapFactory.decodeByteArray(paramContactItem.d, 0, paramContactItem.d.length); ; localBitmap1 = null)
    {
      Drawable localDrawable;
      if (localBitmap1 == null)
      {
        localDrawable = localResources.getDrawable(2130837690);
        if (!(localDrawable instanceof BitmapDrawable));
      }
      for (Bitmap localBitmap2 = ((BitmapDrawable)localDrawable).getBitmap(); ; localBitmap2 = localBitmap1)
      {
        Object localObject;
        if (localBitmap2 == null)
        {
          localObject = null;
          return localObject;
        }
        int k = localResources.getDimensionPixelSize(17104896);
        Bitmap localBitmap3 = Bitmap.createBitmap(k, k, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap3);
        Paint localPaint1 = new Paint();
        localPaint1.setDither(true);
        localPaint1.setFilterBitmap(true);
        localCanvas.drawBitmap(localBitmap2, new Rect(0, 0, localBitmap2.getWidth(), localBitmap2.getHeight()), new Rect(0, 0, k, k), localPaint1);
        String str;
        switch (paramContactItem.c)
        {
        case 4:
        case 5:
        default:
          str = null;
        case 1:
        case 2:
        case 3:
        case 6:
        case 7:
        }
        while (true)
        {
          if (str != null)
          {
            Paint localPaint2 = new Paint(257);
            localPaint2.setTextSize(20.0F * f1);
            localPaint2.setTypeface(Typeface.DEFAULT_BOLD);
            localPaint2.setColor(localResources.getColor(2131296337));
            localPaint2.setShadowLayer(3.0F, 1.0F, 1.0F, localResources.getColor(2131296338));
            localCanvas.drawText(str, 2.0F * f1, f1 * 16.0F, localPaint2);
          }
          localObject = localBitmap3;
          break;
          str = getString(2131429178);
          continue;
          str = getString(2131429179);
          continue;
          str = getString(2131429180);
          continue;
          str = getString(2131429181);
          continue;
          str = getString(2131429182);
        }
      }
    }
  }

  private static String a(Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    String str3;
    if ((str1 != null) && (str1.compareTo("android.intent.action.CALL") == 0))
    {
      Uri localUri = paramIntent.getData();
      if (localUri != null)
      {
        str3 = localUri.toString();
        if ((str3 == null) || (!str3.startsWith("tel:")));
      }
    }
    for (String str2 = str3.substring(4); ; str2 = null)
      return str2;
  }

  private void a()
  {
    ContentResolver localContentResolver = getContentResolver();
    Object localObject;
    if (this.d != null)
      localObject = a(localContentResolver, this.d);
    while (true)
    {
      Cursor localCursor;
      if (localObject == null)
      {
        return;
        int k = 0;
        localCursor = null;
        while (true)
        {
          if (k >= j.length)
            break label345;
          localCursor = a(localContentResolver, j[k]);
          if (localCursor != null)
          {
            this.d = j[k];
            localObject = localCursor;
            break;
          }
          k++;
        }
      }
      if (((Cursor)localObject).getCount() != 0);
      while (true)
      {
        try
        {
          int m = ((Cursor)localObject).getColumnIndexOrThrow("title");
          int n = ((Cursor)localObject).getColumnIndexOrThrow("intent");
          int i1 = ((Cursor)localObject).getColumnIndexOrThrow("icon");
          boolean bool1 = ((Cursor)localObject).moveToFirst();
          if (bool1)
          {
            String str1 = ((Cursor)localObject).getString(n);
            if (str1 != null)
            {
              Intent localIntent = Intent.parseUri(str1, 0);
              if (localIntent != null)
              {
                String str2 = localIntent.getAction();
                if ((str2 == null) || (str2.compareTo("android.intent.action.CALL") != 0))
                  continue;
                Uri localUri = localIntent.getData();
                if (localUri == null)
                  continue;
                String str5 = localUri.toString();
                if ((str5 == null) || (!str5.startsWith("tel:")))
                  continue;
                str3 = str5.substring(4);
                if ((str3 != null) && (str3.length() != 0))
                {
                  String str4 = ((Cursor)localObject).getString(m);
                  byte[] arrayOfByte = ((Cursor)localObject).getBlob(i1);
                  if (arrayOfByte == null)
                    break label339;
                  Bitmap localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
                  if (localBitmap == null)
                    break label339;
                  localBitmapDrawable = new BitmapDrawable(localBitmap);
                  this.c.a(localBitmapDrawable, str4, str3);
                }
              }
            }
            boolean bool2 = ((Cursor)localObject).moveToNext();
            bool1 = bool2;
            continue;
            String str3 = null;
            continue;
          }
        }
        catch (Exception localException)
        {
        }
        ((Cursor)localObject).close();
        break;
        label339: BitmapDrawable localBitmapDrawable = null;
      }
      label345: localObject = localCursor;
    }
  }

  private void a(int paramInt)
  {
    this.g.postDelayed(new k(this), paramInt);
  }

  private void a(String paramString1, String paramString2)
  {
    Intent localIntent1 = new Intent();
    localIntent1.setAction("android.intent.action.CALL");
    localIntent1.setData(Uri.parse("tel:" + paramString2));
    Intent localIntent2 = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", paramString1);
    localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
    sendBroadcast(localIntent2);
  }

  public static boolean a(Context paramContext)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    int k = 0;
    if (k < j.length)
    {
      Cursor localCursor = a(localContentResolver, j[k]);
      if (localCursor != null)
        localCursor.close();
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      k++;
      break;
    }
  }

  private void b()
  {
    if (this.c == null);
    long l;
    do
    {
      return;
      l = System.currentTimeMillis();
    }
    while (500L + this.f > l);
    this.f = l;
    this.c.a();
    ContentResolver localContentResolver = getContentResolver();
    if (this.d != null);
    label59: Cursor localCursor;
    label552: label558: for (Object localObject = a(localContentResolver, this.d); ; localObject = localCursor)
    {
      if (localObject != null)
        if (((Cursor)localObject).getCount() == 0);
      while (true)
      {
        try
        {
          int m = ((Cursor)localObject).getColumnIndexOrThrow("title");
          int n = ((Cursor)localObject).getColumnIndexOrThrow("intent");
          int i1 = ((Cursor)localObject).getColumnIndexOrThrow("icon");
          boolean bool1 = ((Cursor)localObject).moveToFirst();
          if (bool1)
          {
            String str1 = ((Cursor)localObject).getString(n);
            if (str1 != null)
            {
              Intent localIntent = Intent.parseUri(str1, 0);
              if (localIntent != null)
              {
                String str2 = localIntent.getAction();
                if ((str2 == null) || (str2.compareTo("android.intent.action.CALL") != 0))
                  continue;
                Uri localUri = localIntent.getData();
                if (localUri == null)
                  continue;
                String str5 = localUri.toString();
                if ((str5 == null) || (!str5.startsWith("tel:")))
                  continue;
                str3 = str5.substring(4);
                if ((str3 != null) && (str3.length() != 0))
                {
                  String str4 = ((Cursor)localObject).getString(m);
                  byte[] arrayOfByte = ((Cursor)localObject).getBlob(i1);
                  if (arrayOfByte == null)
                    break label552;
                  Bitmap localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
                  if (localBitmap == null)
                    break label552;
                  localBitmapDrawable = new BitmapDrawable(localBitmap);
                  this.c.a(localBitmapDrawable, str4, str3);
                }
              }
            }
            boolean bool2 = ((Cursor)localObject).moveToNext();
            bool1 = bool2;
            continue;
            int k = 0;
            localCursor = null;
            if (k >= j.length)
              break label558;
            localCursor = a(localContentResolver, j[k]);
            if (localCursor != null)
            {
              this.d = j[k];
              localObject = localCursor;
              break label59;
            }
            k++;
            continue;
            String str3 = null;
            continue;
          }
        }
        catch (Exception localException)
        {
        }
        ((Cursor)localObject).close();
        View localView1 = findViewById(2131230895);
        View localView2 = findViewById(2131230893);
        if (this.c.getCount() != 0)
        {
          localView1.setVisibility(8);
          localView2.setVisibility(0);
        }
        while (true)
        {
          if ((this.c.getCount() == 1) && (this.e == 1))
          {
            this.e = 2;
            aq localaq = new aq(this, (byte)0);
            localaq.a(2131427865);
            localaq.b(2131429120);
            ap localap = localaq.c();
            localap.a(getString(2131427864), new l(this));
            localap.b(getString(2131427866), new m(this));
            localap.show();
          }
          this.c.notifyDataSetChanged();
          break;
          localView1.setVisibility(0);
          localView2.setVisibility(8);
        }
        BitmapDrawable localBitmapDrawable = null;
      }
    }
  }

  private void b(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle == null);
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = localBundle.getParcelableArrayList("contacts");
    }
    while (localArrayList == null);
    int k = 0;
    int m = 0;
    label28: ContactItem localContactItem;
    int n;
    if (m < localArrayList.size())
    {
      localContactItem = (ContactItem)localArrayList.get(m);
      if (localContactItem == null)
        break label605;
      if (this.c.a(localContactItem.b) == -1)
        break label94;
      Toast.makeText(this, 2131429116, 0).show();
      n = k;
    }
    while (true)
    {
      m++;
      k = n;
      break label28;
      break;
      label94: if (this.e == 0)
        this.e = 1;
      Intent localIntent1 = new Intent("android.intent.action.CALL", Uri.fromParts("tel", localContactItem.b, null));
      Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      Resources localResources = getResources();
      float f1 = localResources.getDisplayMetrics().scaledDensity;
      if (localContactItem.d != null);
      for (Bitmap localBitmap1 = BitmapFactory.decodeByteArray(localContactItem.d, 0, localContactItem.d.length); ; localBitmap1 = null)
      {
        Drawable localDrawable;
        if (localBitmap1 == null)
        {
          localDrawable = localResources.getDrawable(2130837690);
          if (!(localDrawable instanceof BitmapDrawable));
        }
        for (Bitmap localBitmap2 = ((BitmapDrawable)localDrawable).getBitmap(); ; localBitmap2 = localBitmap1)
        {
          Object localObject;
          if (localBitmap2 == null)
          {
            localObject = null;
            localIntent2.putExtra("android.intent.extra.shortcut.ICON", (Parcelable)localObject);
            localIntent2.putExtra("android.intent.extra.shortcut.NAME", localContactItem.a);
            localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
            sendBroadcast(localIntent2);
            n = k + 1;
            a(n * 1000);
            break;
          }
          int i1 = localResources.getDimensionPixelSize(17104896);
          Bitmap localBitmap3 = Bitmap.createBitmap(i1, i1, Bitmap.Config.ARGB_8888);
          Canvas localCanvas = new Canvas(localBitmap3);
          Paint localPaint1 = new Paint();
          localPaint1.setDither(true);
          localPaint1.setFilterBitmap(true);
          Rect localRect1 = new Rect(0, 0, localBitmap2.getWidth(), localBitmap2.getHeight());
          Rect localRect2 = new Rect(0, 0, i1, i1);
          localCanvas.drawBitmap(localBitmap2, localRect1, localRect2, localPaint1);
          int i2 = localContactItem.c;
          String str = null;
          switch (i2)
          {
          case 4:
          case 5:
          default:
          case 1:
          case 2:
          case 3:
          case 6:
          case 7:
          }
          while (true)
          {
            if (str != null)
            {
              Paint localPaint2 = new Paint(257);
              localPaint2.setTextSize(20.0F * f1);
              localPaint2.setTypeface(Typeface.DEFAULT_BOLD);
              localPaint2.setColor(localResources.getColor(2131296337));
              localPaint2.setShadowLayer(3.0F, 1.0F, 1.0F, localResources.getColor(2131296338));
              float f2 = 2.0F * f1;
              float f3 = f1 * 16.0F;
              localCanvas.drawText(str, f2, f3, localPaint2);
            }
            localObject = localBitmap3;
            break;
            str = getString(2131429178);
            continue;
            str = getString(2131429179);
            continue;
            str = getString(2131429180);
            continue;
            str = getString(2131429181);
            continue;
            str = getString(2131429182);
          }
        }
      }
      label605: n = k;
    }
  }

  private void c()
  {
    Intent localIntent = new Intent(this, PickListActivity.class);
    localIntent.setType("vnd.android.cursor.dir/contact");
    localIntent.putExtra("PickListActivity1_action_type", "PickListActivity1_onekeycall_action");
    startActivityForResult(localIntent, 1);
  }

  private boolean d()
  {
    int k = this.c.getCount() - 1;
    if (k >= 0)
      if (!this.c.b(k));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      k--;
      break;
    }
  }

  private void e()
  {
    int k = this.c.getCount() - 1;
    int m = 0;
    int n;
    if (k >= 0)
    {
      if (!this.c.b(k))
        break label201;
      Map localMap = (Map)this.c.getItem(k);
      if (localMap == null)
        break label201;
      this.c.c(k);
      String str1 = (String)localMap.get("name");
      String str2 = (String)localMap.get("num");
      Intent localIntent1 = new Intent();
      localIntent1.setAction("android.intent.action.CALL");
      localIntent1.setData(Uri.parse("tel:" + str2));
      Intent localIntent2 = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
      localIntent2.putExtra("android.intent.extra.shortcut.NAME", str1);
      localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
      sendBroadcast(localIntent2);
      this.c.a(k);
      n = m + 1;
      a(n * 1000);
    }
    while (true)
    {
      k--;
      m = n;
      break;
      return;
      label201: n = m;
    }
  }

  private void f()
  {
    int k = this.c.getCount() - 1;
    if (k >= 0)
      if (!this.c.b(k));
    for (int m = 1; ; m = 0)
    {
      if (m != 0)
      {
        aq localaq = new aq(this, (byte)0);
        localaq.a(2131427865);
        localaq.b(2131429122);
        ap localap = localaq.c();
        localap.a(getString(2131427864), new n(this));
        localap.b(getString(2131427866), new o(this));
        localap.show();
      }
      return;
      k--;
      break;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default:
    case 1:
    }
    ArrayList localArrayList;
    do
    {
      Bundle localBundle;
      do
      {
        do
          return;
        while ((paramInt2 != -1) || (paramIntent == null));
        localBundle = paramIntent.getExtras();
      }
      while (localBundle == null);
      localArrayList = localBundle.getParcelableArrayList("contacts");
    }
    while (localArrayList == null);
    int k = 0;
    int m = 0;
    label70: ContactItem localContactItem;
    if (m < localArrayList.size())
    {
      localContactItem = (ContactItem)localArrayList.get(m);
      if (localContactItem != null)
      {
        if (this.c.a(localContactItem.b) == -1)
          break label130;
        Toast.makeText(this, 2131429116, 0).show();
      }
    }
    label130: Resources localResources;
    float f1;
    Bitmap localBitmap1;
    Object localObject;
    while (true)
    {
      m++;
      break label70;
      break;
      if (this.e == 0)
        this.e = 1;
      Intent localIntent1 = new Intent("android.intent.action.CALL", Uri.fromParts("tel", localContactItem.b, null));
      Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      localResources = getResources();
      f1 = localResources.getDisplayMetrics().scaledDensity;
      byte[] arrayOfByte = localContactItem.d;
      localBitmap1 = null;
      if (arrayOfByte != null)
        localBitmap1 = BitmapFactory.decodeByteArray(localContactItem.d, 0, localContactItem.d.length);
      if (localBitmap1 == null)
      {
        Drawable localDrawable = localResources.getDrawable(2130837690);
        if ((localDrawable instanceof BitmapDrawable))
          localBitmap1 = ((BitmapDrawable)localDrawable).getBitmap();
      }
      if (localBitmap1 != null)
        break label323;
      localObject = null;
      localIntent2.putExtra("android.intent.extra.shortcut.ICON", (Parcelable)localObject);
      localIntent2.putExtra("android.intent.extra.shortcut.NAME", localContactItem.a);
      localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
      sendBroadcast(localIntent2);
      k++;
      a(k * 1000);
    }
    label323: int n = localResources.getDimensionPixelSize(17104896);
    Bitmap localBitmap2 = Bitmap.createBitmap(n, n, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap2);
    Paint localPaint1 = new Paint();
    localPaint1.setDither(true);
    localPaint1.setFilterBitmap(true);
    Rect localRect1 = new Rect(0, 0, localBitmap1.getWidth(), localBitmap1.getHeight());
    Rect localRect2 = new Rect(0, 0, n, n);
    localCanvas.drawBitmap(localBitmap1, localRect1, localRect2, localPaint1);
    int i1 = localContactItem.c;
    String str = null;
    switch (i1)
    {
    case 4:
    case 5:
    default:
    case 1:
    case 2:
    case 3:
    case 6:
    case 7:
    }
    while (true)
    {
      if (str != null)
      {
        Paint localPaint2 = new Paint(257);
        localPaint2.setTextSize(20.0F * f1);
        localPaint2.setTypeface(Typeface.DEFAULT_BOLD);
        localPaint2.setColor(localResources.getColor(2131296337));
        localPaint2.setShadowLayer(3.0F, 1.0F, 1.0F, localResources.getColor(2131296338));
        float f2 = 2.0F * f1;
        float f3 = f1 * 16.0F;
        localCanvas.drawText(str, f2, f3, localPaint2);
      }
      localObject = localBitmap2;
      break;
      str = getString(2131429178);
      continue;
      str = getString(2131429179);
      continue;
      str = getString(2131429180);
      continue;
      str = getString(2131429181);
      continue;
      str = getString(2131429182);
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131230891:
    case 2131230892:
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent(this, PickListActivity.class);
      localIntent.setType("vnd.android.cursor.dir/contact");
      localIntent.putExtra("PickListActivity1_action_type", "PickListActivity1_onekeycall_action");
      startActivityForResult(localIntent, 1);
      continue;
      if (d())
      {
        aq localaq = new aq(this, (byte)0);
        localaq.a(2131427865);
        localaq.b(2131429122);
        ap localap = localaq.c();
        localap.a(getString(2131427864), new n(this));
        localap.b(getString(2131427866), new o(this));
        localap.show();
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
      a.i(this, "telman_onekey");
    super.a(paramBundle, 2130903065, 2131427574);
    findViewById(2131230891).setOnClickListener(this);
    findViewById(2131230892).setOnClickListener(this);
    this.b = ((ListView)findViewById(2131230894));
    this.c = new p(this, this);
    this.b.setAdapter(this.c);
    this.f = 0L;
    this.e = 0;
    this.g = new Handler();
    IntentFilter localIntentFilter1 = new IntentFilter("com.android.launcher.action.INSTALL_SHORTCUT");
    localIntentFilter1.setPriority(-1000);
    IntentFilter localIntentFilter2 = new IntentFilter("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntentFilter2.setPriority(-1000);
    this.h = new r(this);
    this.i = new r(this);
    registerReceiver(this.h, localIntentFilter1);
    registerReceiver(this.i, localIntentFilter2);
    b();
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.h != null)
      unregisterReceiver(this.h);
    if (this.i != null)
      unregisterReceiver(this.i);
  }

  protected void onResume()
  {
    super.onResume();
    a(500);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.OnekeyCallSettingActivity
 * JD-Core Version:    0.6.2
 */