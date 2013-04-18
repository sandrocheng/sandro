package com.ijinshan.kinghelper.common;

import android.a.w;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.provider.CallLog.Calls;
import android.provider.Contacts.People;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.a.a;
import com.ijinshan.kinghelper.firewall.dd;
import com.keniu.security.protection.ui.ag;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PickListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private static final int P = 0;
  protected static final String a = "PickListActivity";
  public static final String b = "vnd.android.cursor.dir/contact";
  public static final String c = "vnd.android.cursor.dir/sms";
  public static final String d = "PickListActivity1_action_type";
  public static final String e = "PickListActivity1_report_action";
  public static final String f = "PickListActivity1_white_action";
  public static final String g = "_PickListActivity1_black_action";
  public static final String h = "PickListActivity1_onekeycall_action";
  public static final String i = "PickListActivity1_ec_action";
  public static final String j = "PickListActivity1_ec_conversion_sms";
  private static final int k = 1;
  private static final SimpleDateFormat l = new SimpleDateFormat("HH:mm MM/dd");
  private static final int m = 12288;
  private static final int n = 16384;
  private static final String o = PickListActivity.class.getName() + "_user_report_add2black_show_dialog_status";
  private int A;
  private int B;
  private int C;
  private boolean D = false;
  private Handler E = null;
  private HandlerThread F = null;
  private t G;
  private ListView H;
  private NumSortView I;
  private TextView J;
  private HashMap K;
  private String[] L;
  private Handler M;
  private q N;
  private boolean O = false;
  private Handler Q = new h(this);
  private Map R = new HashMap();
  private SparseBooleanArray p;
  private ProgressBar q;
  private View r;
  private TextView s;
  private Button t;
  private Button u;
  private String v;
  private String w;
  private r x;
  private int y;
  private int z;

  private Dialog a(DialogInterface.OnDismissListener paramOnDismissListener, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    ((TextView)localView.findViewById(2131231003)).setText(2131427715);
    ((CheckBox)localView.findViewById(2131231005)).setOnCheckedChangeListener(new i(this));
    localaq.a(localView);
    localaq.a(2131427714);
    localaq.a(getString(2131427653), paramOnClickListener1);
    localaq.b(getString(2131427654), paramOnClickListener2);
    ap localap = localaq.c();
    localap.setOnDismissListener(paramOnDismissListener);
    return localap;
  }

  private String a(int paramInt)
  {
    try
    {
      String str = (String)this.R.get(Integer.valueOf(paramInt));
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static String a(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    Date localDate = new Date(paramLong);
    String str;
    if ((1900 + localDate.getYear() == localCalendar.get(1)) && (localDate.getMonth() == localCalendar.get(2)) && (localDate.getDate() == localCalendar.get(5)))
      if (localDate.getHours() >= 13)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(localDate.getHours() - 12);
        arrayOfObject3[1] = Integer.valueOf(localDate.getMinutes());
        str = String.format("下午 %02d:%02d", arrayOfObject3);
      }
    while (true)
    {
      return str;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(localDate.getHours());
      arrayOfObject2[1] = Integer.valueOf(localDate.getMinutes());
      str = String.format("上午 %02d:%02d", arrayOfObject2);
      continue;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(1 + localDate.getMonth());
      arrayOfObject1[1] = Integer.valueOf(localDate.getDate());
      str = String.format("%02d/%02d", arrayOfObject1);
    }
  }

  private String a(Cursor paramCursor)
  {
    String str1 = paramCursor.getString(paramCursor.getColumnIndex("address"));
    String str5;
    if ((this.D) && (TextUtils.isEmpty(str1)))
    {
      String str3 = paramCursor.getString(paramCursor.getColumnIndex("_id"));
      if (!TextUtils.isEmpty(str3))
      {
        String str4 = new String("msg_id=? and type=137");
        Cursor localCursor = getContentResolver().query(Uri.parse("content://mms/" + str3 + "/addr"), null, str4, new String[] { str3 }, null);
        if (localCursor != null)
          if (localCursor.moveToFirst())
          {
            str5 = localCursor.getString(localCursor.getColumnIndex("address"));
            localCursor.close();
          }
      }
    }
    for (String str2 = str5; ; str2 = str1)
    {
      return str2;
      str5 = str1;
      break;
    }
  }

  private static String a(String paramString, ArrayList paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer("");
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      int i1 = 0;
      if (i1 < paramArrayList.size())
      {
        if (i1 == 0)
          localStringBuffer.append(paramString).append(" = ").append("'").append((String)paramArrayList.get(i1)).append("'");
        while (true)
        {
          i1++;
          break;
          localStringBuffer.append(" or ").append(paramString).append(" = ").append("'").append((String)paramArrayList.get(i1)).append("'");
        }
      }
    }
    return localStringBuffer.toString();
  }

  public static ArrayList a(Context paramContext, ArrayList paramArrayList, int paramInt1, int paramInt2, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = paramArrayList.size();
    int i2 = 0;
    int i3 = 0;
    int i4 = 0;
    String str;
    int i5;
    if (i3 < i1)
    {
      str = (String)paramArrayList.get(i3);
      if (!com.ijinshan.kinghelper.firewall.a.e.a(str, 2))
        break label356;
      i5 = 1;
    }
    for (int i6 = 1; ; i6 = 0)
    {
      int i7;
      if (com.ijinshan.kinghelper.firewall.a.e.a(str, 1))
        i7 = 1;
      for (int i8 = 1; ; i8 = 0)
      {
        if ((i6 == 0) && (i8 == 0))
        {
          com.ijinshan.kinghelper.firewall.a.e.a(paramInt1, str, com.ijinshan.kinghelper.a.j.a(paramContext, com.ijinshan.kinghelper.a.i.a(str)), paramInt2);
          System.out.println("add: " + str);
          localArrayList.add(str);
        }
        i3++;
        i4 = i5;
        i2 = i7;
        break;
        if (paramInt1 == 1)
          if (!"PickListActivity1_report_action".equals(paramString))
          {
            if (localArrayList.size() != 0)
              break label233;
            if ((i2 == 0) || (i4 == 0))
              break label195;
            Toast.makeText(paramContext, 2131427631, 0).show();
          }
        while (true)
        {
          return localArrayList;
          label195: if (i2 != 0)
          {
            Toast.makeText(paramContext, 2131427630, 0).show();
          }
          else if (i4 != 0)
          {
            Toast.makeText(paramContext, 2131427629, 0).show();
            continue;
            label233: Toast.makeText(paramContext, 2131427628, 0).show();
            continue;
            if ((paramInt1 == 2) && (!"PickListActivity1_report_action".equals(paramString)))
              if (localArrayList.size() == 0)
              {
                if ((i2 != 0) && (i4 != 0))
                  Toast.makeText(paramContext, 2131427631, 0).show();
                else if (i2 != 0)
                  Toast.makeText(paramContext, 2131427630, 0).show();
                else if (i4 != 0)
                  Toast.makeText(paramContext, 2131427629, 0).show();
              }
              else
                Toast.makeText(paramContext, 2131427627, 0).show();
          }
        }
        i7 = i2;
      }
      label356: i5 = i4;
    }
  }

  private ArrayList a(ArrayList paramArrayList, Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = paramArrayList.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      paramCursor.moveToPosition(((Integer)paramArrayList.get(i2)).intValue());
      String str1 = paramCursor.getString(paramCursor.getColumnIndex("address"));
      String str2 = paramCursor.getString(paramCursor.getColumnIndex("body"));
      if (!localArrayList.contains(str1))
        localArrayList.add(str1);
      com.ijinshan.kinghelper.firewall.core.i.b(getApplicationContext(), str1, str2, 5, null);
    }
    return localArrayList;
  }

  private ArrayList a(boolean paramBoolean)
  {
    ArrayList localArrayList1 = this.x.b();
    ArrayList localArrayList2 = new ArrayList();
    Cursor localCursor1 = this.x.getCursor();
    int i1 = localArrayList1.size();
    String str1;
    if (!"vnd.android.cursor.dir/calls".equals(this.v))
      if ("vnd.android.cursor.dir/sms".equals(this.v))
        str1 = "address";
    label384: label391: for (String str2 = str1; ; str2 = null)
    {
      int i2 = 0;
      label68: String str4;
      String str7;
      label266: String str3;
      if (i2 < i1)
      {
        localCursor1.moveToPosition(((Integer)localArrayList1.get(i2)).intValue());
        if ("vnd.android.cursor.dir/sms".equals(this.v))
        {
          str4 = localCursor1.getString(localCursor1.getColumnIndex("address"));
          if ((!this.D) || (!TextUtils.isEmpty(str4)))
            break label384;
          String str5 = localCursor1.getString(localCursor1.getColumnIndex("_id"));
          if (TextUtils.isEmpty(str5))
            break label384;
          String str6 = new String("msg_id=? and type=137");
          Cursor localCursor2 = getContentResolver().query(Uri.parse("content://mms/" + str5 + "/addr"), null, str6, new String[] { str5 }, null);
          if (localCursor2 == null)
            break label384;
          if (!localCursor2.moveToFirst())
            break label377;
          str7 = localCursor2.getString(localCursor2.getColumnIndex("address"));
          localCursor2.close();
          str3 = str7;
        }
      }
      while (true)
      {
        label277: if (!localArrayList2.contains(str3))
        {
          if (!paramBoolean)
            break label365;
          localArrayList2.add(com.ijinshan.kinghelper.a.i.a(str3));
        }
        while (true)
        {
          i2++;
          break label68;
          if (!"vnd.android.cursor.dir/contact".equals(this.v))
            break label391;
          if (Integer.parseInt(Build.VERSION.SDK) > 4)
          {
            str1 = "data1";
            break;
          }
          str1 = "number";
          break;
          str3 = localCursor1.getString(localCursor1.getColumnIndex(str2));
          break label277;
          label365: localArrayList2.add(str3);
        }
        return localArrayList2;
        label377: str7 = str4;
        break label266;
        str3 = str4;
      }
    }
  }

  private void a(int paramInt, String paramString)
  {
    try
    {
      this.R.put(Integer.valueOf(paramInt), paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(u paramu)
  {
    String str = paramu.c.getText().toString();
    if ((str != null) && (!str.equals("")))
      ag.c(this, str.replace("-", ""));
    this.x.a();
    finish();
  }

  private void a(ArrayList paramArrayList)
  {
    if ("vnd.android.cursor.dir/calls".equals(this.v))
      b(paramArrayList);
    while (true)
    {
      return;
      if ("vnd.android.cursor.dir/sms".equals(this.v))
      {
        c(paramArrayList);
      }
      else if ("vnd.android.cursor.dir/contact".equals(this.v))
      {
        b(paramArrayList);
        c(paramArrayList);
      }
    }
  }

  private static String b(String paramString)
  {
    String str;
    if (paramString == null)
      str = "#";
    while (true)
    {
      return str;
      if (paramString.trim().length() == 0)
      {
        str = "#";
      }
      else
      {
        char c1 = paramString.trim().substring(0, 1).charAt(0);
        if (Pattern.compile("^[A-Za-z]+$").matcher(c1 + "").matches())
          str = (c1 + "").toUpperCase();
        else
          str = "#";
      }
    }
  }

  private void b(int paramInt)
  {
    if ((this.L != null) && (this.L.length > paramInt))
    {
      this.J.setText(this.L[paramInt]);
      this.J.setVisibility(0);
      this.M.removeCallbacks(this.N);
      this.M.postDelayed(this.N, 1500L);
    }
  }

  private void b(ArrayList paramArrayList)
  {
    String str1 = a("number", paramArrayList);
    if (TextUtils.isEmpty(str1))
      return;
    Cursor localCursor = getContentResolver().query(CallLog.Calls.CONTENT_URI, null, str1, null, "date DESC");
    ArrayList localArrayList2;
    if (localCursor != null)
    {
      if (localCursor.getCount() > 0)
      {
        localArrayList2 = new ArrayList();
        int i1 = localCursor.getColumnIndex("_id");
        int i2 = localCursor.getColumnIndex("type");
        int i3 = localCursor.getColumnIndex("number");
        int i4 = localCursor.getColumnIndex("duration");
        int i5 = localCursor.getColumnIndex("date");
        ContentValues localContentValues = new ContentValues();
        a.a(getApplicationContext());
        while (localCursor.moveToNext())
        {
          String str3 = localCursor.getString(i1);
          String str4 = localCursor.getString(i2);
          String str5 = localCursor.getString(i3);
          String str6 = localCursor.getString(i4);
          long l1 = localCursor.getLong(i5);
          localContentValues.clear();
          localContentValues.put("type", str4);
          localContentValues.put("number", str5);
          localContentValues.put("new", Integer.valueOf(0));
          localContentValues.put("duration", str6);
          localContentValues.put("date", Long.valueOf(l1));
          localContentValues.put("firewall_log_description", getString(2131427600));
          localContentValues.put("firewall_log_rule_id", "0");
          if (a.b(localContentValues) > 0L)
            localArrayList2.add(str3);
        }
      }
      localArrayList2 = null;
      localCursor.close();
    }
    for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = null)
    {
      String str2 = a("_id", localArrayList1);
      if (TextUtils.isEmpty(str2))
        break;
      getContentResolver().delete(CallLog.Calls.CONTENT_URI, str2, null);
      break;
    }
  }

  private void c(ArrayList paramArrayList)
  {
    String str1 = a("address", paramArrayList);
    if (TextUtils.isEmpty(str1))
      return;
    Cursor localCursor = getContentResolver().query(w.a, null, str1, null, "date DESC");
    ArrayList localArrayList2;
    if ((localCursor != null) && (localCursor.getCount() > 0))
    {
      localArrayList2 = new ArrayList();
      int i1 = localCursor.getColumnIndex("_id");
      int i2 = localCursor.getColumnIndex("address");
      int i3 = localCursor.getColumnIndex("subject");
      int i4 = localCursor.getColumnIndex("service_center");
      int i5 = localCursor.getColumnIndex("protocol");
      int i6 = localCursor.getColumnIndex("person");
      int i7 = localCursor.getColumnIndex("body");
      int i8 = localCursor.getColumnIndex("date");
      ContentValues localContentValues = new ContentValues();
      a.a(getApplicationContext());
      while (localCursor.moveToNext())
      {
        String str3 = localCursor.getString(i1);
        String str4 = localCursor.getString(i2);
        String str5 = localCursor.getString(i3);
        String str6 = localCursor.getString(i4);
        String str7 = localCursor.getString(i5);
        String str8 = localCursor.getString(i6);
        String str9 = localCursor.getString(i7);
        long l1 = localCursor.getLong(i8);
        localContentValues.clear();
        localContentValues.put("address", str4);
        localContentValues.put("subject", str5);
        localContentValues.put("service_center", str6);
        localContentValues.put("read", Integer.valueOf(1));
        localContentValues.put("protocol", str7);
        localContentValues.put("person", str8);
        localContentValues.put("body", str9);
        localContentValues.put("date", Long.valueOf(l1));
        localContentValues.put("firewall_log_description", getString(2131427600));
        localContentValues.put("firewall_log_time", Long.valueOf(l1));
        localContentValues.put("firewall_log_rule_id", "0");
        localContentValues.put("firewall_from", Integer.valueOf(a.e));
        localContentValues.put("logtype", Integer.valueOf(a.g));
        if (a.a(localContentValues) > 0L)
          localArrayList2.add(str3);
      }
      localCursor.close();
    }
    for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = null)
    {
      String str2 = a("_id", localArrayList1);
      if (TextUtils.isEmpty(str2))
        break;
      getContentResolver().delete(android.a.t.a, str2, null);
      break;
    }
  }

  private void d()
  {
    Object localObject;
    String str3;
    String[] arrayOfString;
    String str1;
    String str2;
    if ("vnd.android.cursor.dir/calls".equals(this.v))
    {
      localObject = CallLog.Calls.CONTENT_URI;
      str3 = "date DESC";
      arrayOfString = null;
      str1 = null;
      str2 = str3;
    }
    while (true)
    {
      label30: if (localObject != null)
        this.G.startQuery(1, null, (Uri)localObject, null, str1, arrayOfString, str2);
      while (true)
      {
        return;
        if ("vnd.android.cursor.dir/sms".equals(this.v))
        {
          if ((!this.D) || (com.jxphone.mosecurity.d.l.c))
          {
            Uri localUri1 = w.a;
            arrayOfString = new String[] { "wappush_message" };
            str2 = "date DESC";
            str1 = "address !=? ";
            localObject = localUri1;
            break label30;
          }
          Uri localUri2 = Uri.parse("content://mms-sms/conversations?simple=false");
          str2 = "date DESC";
          localObject = localUri2;
          str1 = null;
          arrayOfString = null;
          break label30;
        }
        if (!"vnd.android.cursor.dir/contact".equals(this.v))
          break label196;
        int i1 = Integer.parseInt(Build.VERSION.SDK);
        if (i1 > 4);
        for (localObject = com.ijinshan.kinghelper.a.e.h; ; localObject = Contacts.People.CONTENT_URI)
        {
          if (i1 <= 7)
            break label181;
          str3 = "sort_key";
          break;
        }
        label181: str3 = "display_name COLLATE LOCALIZED ASC";
        break;
        a();
      }
      label196: localObject = null;
      str1 = null;
      arrayOfString = null;
      str2 = null;
    }
  }

  private Dialog e()
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    TextView localTextView = (TextView)localView.findViewById(2131231003);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    localCheckBox.setChecked(dd.k());
    localTextView.setText(2131427651);
    localaq.a(localView);
    localaq.a(2131427652);
    localaq.a(getString(2131427653), new j(this));
    localaq.b(getString(2131427654), new k(this));
    ap localap = localaq.c();
    localap.setOnDismissListener(new l(this, localCheckBox));
    return localap;
  }

  private Dialog f()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.b(2131427529);
    localaq.a(2131427528);
    localaq.a(getString(2131427653), new m(this));
    localaq.b(getString(2131427654), new n(this));
    return localaq.c();
  }

  private void g()
  {
    ArrayList localArrayList1 = this.x.b();
    Cursor localCursor = this.x.getCursor();
    int i1 = localArrayList1.size();
    ArrayList localArrayList2;
    SharedPreferences localSharedPreferences1;
    if ("vnd.android.cursor.dir/calls".equals(this.v))
    {
      localArrayList2 = new ArrayList();
      for (int i2 = 0; i2 < i1; i2++)
      {
        localCursor.moveToPosition(((Integer)localArrayList1.get(i2)).intValue());
        String str = localCursor.getString(localCursor.getColumnIndex("number"));
        if (!localArrayList2.contains(str))
          localArrayList2.add(str);
        com.ijinshan.kinghelper.firewall.core.i.b(getApplicationContext(), str, null, 4, null);
      }
      localSharedPreferences1 = com.ijinshan.kpref.t.b(this);
      if (localSharedPreferences1.getBoolean(getString(2131427789), true))
        showDialog(12288);
    }
    while (true)
    {
      return;
      h();
      if (localSharedPreferences1.getBoolean(o, true))
        a(this, localArrayList2, 2, this.C, this.w);
      this.x.a();
      finish();
      continue;
      if ("vnd.android.cursor.dir/sms".equals(this.v))
      {
        SharedPreferences localSharedPreferences2 = com.ijinshan.kpref.t.b(this);
        ArrayList localArrayList3 = a(localArrayList1, localCursor);
        if (localSharedPreferences2.getBoolean(getString(2131427789), true))
        {
          showDialog(12288);
        }
        else
        {
          h();
          if (localSharedPreferences2.getBoolean(o, true))
            a(this, localArrayList3, 2, this.C, this.w);
          this.x.a();
          finish();
        }
      }
    }
  }

  private void h()
  {
    if (com.ijinshan.kinghelper.a.j.c(this))
      Toast.makeText(this, 2131427632, 1).show();
    while (true)
    {
      return;
      Toast.makeText(this, 2131427633, 1).show();
    }
  }

  private ArrayList i()
  {
    ArrayList localArrayList1 = this.x.b();
    ArrayList localArrayList2 = new ArrayList();
    Cursor localCursor1 = this.x.getCursor();
    int i1 = localArrayList1.size();
    int i2;
    if (Integer.parseInt(Build.VERSION.SDK) > 4)
      i2 = 1;
    while (true)
    {
      int i6;
      int i7;
      int i8;
      int i9;
      label104: int i10;
      label113: ContactItem localContactItem;
      int i11;
      Uri localUri;
      String str;
      Cursor localCursor2;
      if (i2 != 0)
      {
        int i12 = localCursor1.getColumnIndex("display_name");
        int i13 = localCursor1.getColumnIndex("data1");
        int i14 = localCursor1.getColumnIndex("contact_id");
        i6 = localCursor1.getColumnIndex("data2");
        i7 = i13;
        i8 = i12;
        i9 = i14;
        ContentResolver localContentResolver = getContentResolver();
        i10 = 0;
        if (i10 >= i1)
          break;
        localCursor1.moveToPosition(((Integer)localArrayList1.get(i10)).intValue());
        localContactItem = new ContactItem();
        localContactItem.b = localCursor1.getString(i7);
        localContactItem.a = localCursor1.getString(i8);
        localContactItem.c = localCursor1.getInt(i6);
        i11 = localCursor1.getInt(i9);
        if (i2 == 0)
          break label392;
        StringBuilder localStringBuilder = new StringBuilder("content://com.android.contacts/contacts/");
        localStringBuilder.append(String.valueOf(i11));
        localStringBuilder.append("/photo");
        localUri = Uri.parse(localStringBuilder.toString());
        str = "data15";
        localCursor2 = localContentResolver.query(localUri, new String[] { str }, null, null, null);
        if (localCursor2 == null);
      }
      try
      {
        if (localCursor2.moveToFirst())
        {
          byte[] arrayOfByte = localCursor2.getBlob(0);
          if (arrayOfByte != null)
            localContactItem.d = arrayOfByte;
        }
        localCursor2.close();
        localArrayList2.add(localContactItem);
        i10++;
        break label113;
        i2 = 0;
        continue;
        int i3 = localCursor1.getColumnIndex("display_name");
        int i4 = localCursor1.getColumnIndex("number");
        int i5 = localCursor1.getColumnIndex("_id");
        i6 = localCursor1.getColumnIndex("type");
        i7 = i4;
        i8 = i3;
        i9 = i5;
        break label104;
        label392: localUri = Uri.withAppendedPath(ContentUris.withAppendedId(Contacts.People.CONTENT_URI, i11), "photo");
        str = "data";
      }
      finally
      {
        localCursor2.close();
      }
    }
    return localArrayList2;
  }

  private boolean j()
  {
    boolean bool;
    if (this.x == null)
      bool = false;
    while (true)
    {
      return bool;
      ArrayList localArrayList = this.x.b();
      if (this.x.getCount() <= 0)
      {
        Toast.makeText(this, this.z, 0).show();
        bool = false;
      }
      else if (localArrayList.size() <= 0)
      {
        Toast.makeText(this, this.A, 0).show();
        bool = false;
      }
      else
      {
        bool = true;
      }
    }
  }

  private void k()
  {
    this.J = ((TextView)LayoutInflater.from(this).inflate(2130903243, null));
    this.J.setVisibility(4);
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-2, -2, 2, 24, -3);
    ((WindowManager)getSystemService("window")).addView(this.J, localLayoutParams);
  }

  public final void a()
  {
    if ("vnd.android.cursor.dir/calls".equals(this.v))
      this.z = 2131427658;
    while (true)
    {
      this.s.setText(this.z);
      this.q.setVisibility(8);
      return;
      if ("vnd.android.cursor.dir/sms".equals(this.v))
        this.z = 2131427657;
      else if ("vnd.android.cursor.dir/contact".equals(this.v))
        this.z = 2131427659;
    }
  }

  public void onClick(View paramView)
  {
    ArrayList localArrayList2;
    Cursor localCursor;
    ArrayList localArrayList3;
    SharedPreferences localSharedPreferences1;
    if (paramView.getId() == 2131230863)
      if ("PickListActivity1_report_action".equals(this.w))
        if (j())
        {
          localArrayList2 = this.x.b();
          localCursor = this.x.getCursor();
          int i1 = localArrayList2.size();
          if (!"vnd.android.cursor.dir/calls".equals(this.v))
            break label242;
          localArrayList3 = new ArrayList();
          for (int i2 = 0; i2 < i1; i2++)
          {
            localCursor.moveToPosition(((Integer)localArrayList2.get(i2)).intValue());
            String str = localCursor.getString(localCursor.getColumnIndex("number"));
            if (!localArrayList3.contains(str))
              localArrayList3.add(str);
            com.ijinshan.kinghelper.firewall.core.i.b(getApplicationContext(), str, null, 4, null);
          }
          localSharedPreferences1 = com.ijinshan.kpref.t.b(this);
          if (!localSharedPreferences1.getBoolean(getString(2131427789), true))
            break label194;
          showDialog(12288);
        }
    while (true)
    {
      return;
      label194: h();
      if (localSharedPreferences1.getBoolean(o, true))
        a(this, localArrayList3, 2, this.C, this.w);
      this.x.a();
      finish();
      continue;
      label242: if ("vnd.android.cursor.dir/sms".equals(this.v))
      {
        SharedPreferences localSharedPreferences2 = com.ijinshan.kpref.t.b(this);
        ArrayList localArrayList4 = a(localArrayList2, localCursor);
        if (localSharedPreferences2.getBoolean(getString(2131427789), true))
        {
          showDialog(12288);
        }
        else
        {
          h();
          if (localSharedPreferences2.getBoolean(o, true))
            a(this, localArrayList4, 2, this.C, this.w);
          this.x.a();
          finish();
          continue;
          if ("PickListActivity1_white_action".equals(this.w))
          {
            if (j())
            {
              a(this, a(true), 1, this.C, this.w);
              this.x.a();
              finish();
            }
          }
          else if ("_PickListActivity1_black_action".equals(this.w))
          {
            if (j())
              if (a(this, a(true), 2, this.C, this.w).size() > 0)
                showDialog(16384);
              else
                finish();
          }
          else if (("PickListActivity1_onekeycall_action".equals(this.w)) && (j()))
          {
            ArrayList localArrayList1 = i();
            Intent localIntent = new Intent();
            localIntent.putParcelableArrayListExtra("contacts", localArrayList1);
            setResult(-1, localIntent);
            finish();
            this.x.a();
            continue;
            if (paramView.getId() == 2131230864)
              finish();
          }
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903059);
    TextView localTextView = (TextView)findViewById(2131230727);
    localTextView.setText(2131427328);
    this.H = getListView();
    this.q = ((ProgressBar)findViewById(2131230861));
    this.r = findViewById(2131230862);
    this.s = ((TextView)findViewById(2131230797));
    this.q.setIndeterminate(true);
    this.q.setVisibility(0);
    this.r.setVisibility(8);
    this.s.setVisibility(0);
    this.s.setText(2131427656);
    this.t = ((Button)findViewById(2131230863));
    this.t.setOnClickListener(this);
    this.u = ((Button)findViewById(2131230864));
    this.u.setOnClickListener(this);
    this.v = getIntent().getType();
    this.w = getIntent().getStringExtra("PickListActivity1_action_type");
    this.D = getIntent().getBooleanExtra("PickListActivity1_ec_conversion_sms", false);
    if ("vnd.android.cursor.dir/calls".equals(this.v))
    {
      this.C = 1;
      if ("PickListActivity1_report_action".equals(this.w))
      {
        this.y = 2131427648;
        this.B = 2131427532;
        this.A = 2131427661;
      }
    }
    label802: 
    while (true)
    {
      if ((this.y == 0) || (this.B == 0))
        finish();
      while (true)
      {
        return;
        if ((!"PickListActivity1_white_action".equals(this.w)) && (!"_PickListActivity1_black_action".equals(this.w)))
          break label802;
        this.y = 2131427583;
        this.B = 2131427541;
        this.A = 2131427662;
        break;
        if ("vnd.android.cursor.dir/sms".equals(this.v))
        {
          this.A = 2131427660;
          this.C = 1;
          if ("PickListActivity1_report_action".equals(this.w))
          {
            this.y = 2131427649;
            this.B = 2131427532;
            this.A = 2131427661;
            break;
          }
          if ((!"PickListActivity1_white_action".equals(this.w)) && (!"_PickListActivity1_black_action".equals(this.w)))
            break;
          this.y = 2131427582;
          this.B = 2131427541;
          this.A = 2131427662;
          break;
        }
        if (!"vnd.android.cursor.dir/contact".equals(this.v))
          break;
        this.A = 2131427661;
        this.C = 1;
        if ("PickListActivity1_report_action".equals(this.w))
        {
          this.y = 2131427650;
          this.B = 2131427532;
          this.A = 2131427661;
        }
        while (true)
        {
          this.H.setOnScrollListener(new p(this));
          this.M = new Handler();
          this.N = new q(this);
          this.I = ((NumSortView)findViewById(2131230860));
          this.I.setVisibility(0);
          this.I.a(new o(this));
          this.J = ((TextView)LayoutInflater.from(this).inflate(2130903243, null));
          this.J.setVisibility(4);
          WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams(-2, -2, 2, 24, -3);
          ((WindowManager)getSystemService("window")).addView(this.J, localLayoutParams);
          break;
          if (("PickListActivity1_white_action".equals(this.w)) || ("_PickListActivity1_black_action".equals(this.w)) || ("PickListActivity1_ec_action".equals(this.w)))
          {
            this.y = 2131427581;
            this.B = 2131427541;
            this.A = 2131427662;
          }
          else if ("PickListActivity1_onekeycall_action".equals(this.w))
          {
            this.y = 2131429183;
            this.B = 2131427541;
            this.A = 2131427662;
          }
        }
        localTextView.setText(this.y);
        this.t.setText(this.B);
        com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
        getListView().setOnItemClickListener(this);
        this.G = new t(this, this);
        if ("PickListActivity1_ec_action".equals(this.w))
          findViewById(2131230859).setVisibility(8);
      }
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    if (paramInt == 12288)
    {
      aq localaq1 = new aq(this, (byte)0);
      View localView = LayoutInflater.from(this).inflate(2130903097, null);
      TextView localTextView = (TextView)localView.findViewById(2131231003);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
      localCheckBox.setChecked(dd.k());
      localTextView.setText(2131427651);
      localaq1.a(localView);
      localaq1.a(2131427652);
      localaq1.a(getString(2131427653), new j(this));
      localaq1.b(getString(2131427654), new k(this));
      localObject = localaq1.c();
      ((ap)localObject).setOnDismissListener(new l(this, localCheckBox));
    }
    while (true)
    {
      return localObject;
      if (paramInt == 16384)
      {
        aq localaq2 = new aq(this, (byte)0);
        localaq2.b(2131427529);
        localaq2.a(2131427528);
        localaq2.a(getString(2131427653), new m(this));
        localaq2.b(getString(2131427654), new n(this));
        localObject = localaq2.c();
      }
      else
      {
        localObject = super.onCreateDialog(paramInt);
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.E.removeCallbacks(this.F);
    this.F.getLooper().quit();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.J != null)
      this.J.setVisibility(4);
    u localu = (u)paramView.getTag();
    if (localu.a.isChecked())
    {
      this.p.delete(localu.j);
      localu.a.setChecked(false);
    }
    while (true)
    {
      return;
      if ("PickListActivity1_ec_action".equals(this.w))
      {
        String str = localu.c.getText().toString();
        if ((str != null) && (!str.equals("")))
          ag.c(this, str.replace("-", ""));
        this.x.a();
        finish();
      }
      else
      {
        this.p.put(localu.j, true);
        localu.a.setChecked(true);
      }
    }
  }

  protected void onResume()
  {
    super.onResume();
    this.q.setVisibility(0);
    this.s.setText(2131427656);
    Object localObject;
    String str3;
    String[] arrayOfString;
    String str1;
    String str2;
    if ("vnd.android.cursor.dir/calls".equals(this.v))
    {
      localObject = CallLog.Calls.CONTENT_URI;
      str3 = "date DESC";
      arrayOfString = null;
      str1 = null;
      str2 = str3;
    }
    while (true)
    {
      label52: if (localObject != null)
        this.G.startQuery(1, null, (Uri)localObject, null, str1, arrayOfString, str2);
      while (true)
      {
        this.F = new HandlerThread("pick_list");
        this.F.start();
        this.E = new Handler(this.F.getLooper());
        return;
        if ("vnd.android.cursor.dir/sms".equals(this.v))
        {
          if ((!this.D) || (com.jxphone.mosecurity.d.l.c))
          {
            Uri localUri1 = w.a;
            arrayOfString = new String[] { "wappush_message" };
            str2 = "date DESC";
            str1 = "address !=? ";
            localObject = localUri1;
            break label52;
          }
          Uri localUri2 = Uri.parse("content://mms-sms/conversations?simple=false");
          str2 = "date DESC";
          localObject = localUri2;
          str1 = null;
          arrayOfString = null;
          break label52;
        }
        if (!"vnd.android.cursor.dir/contact".equals(this.v))
          break label257;
        int i1 = Integer.parseInt(Build.VERSION.SDK);
        if (i1 > 4);
        for (localObject = com.ijinshan.kinghelper.a.e.h; ; localObject = Contacts.People.CONTENT_URI)
        {
          if (i1 <= 7)
            break label242;
          str3 = "sort_key";
          break;
        }
        label242: str3 = "display_name COLLATE LOCALIZED ASC";
        break;
        a();
      }
      label257: localObject = null;
      str1 = null;
      arrayOfString = null;
      str2 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.PickListActivity
 * JD-Core Version:    0.6.2
 */