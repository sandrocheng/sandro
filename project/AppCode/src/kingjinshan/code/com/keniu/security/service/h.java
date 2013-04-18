package com.keniu.security.service;

import android.a.t;
import android.a.w;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.a.a;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;

final class h extends Thread
{
  private int b = 0;
  private boolean c = false;

  h(RubbishSMSScanServiceCtrl paramRubbishSMSScanServiceCtrl)
  {
  }

  public final void a()
  {
    this.c = true;
  }

  public final void run()
  {
    this.a.d();
    Cursor localCursor = this.a.getContentResolver().query(w.a, null, null, null, "date DESC");
    if (localCursor != null)
    {
      e.a(this.a.getApplicationContext());
      int i = localCursor.getColumnIndex("_id");
      int j = localCursor.getColumnIndex("address");
      int k = localCursor.getColumnIndex("body");
      int m = localCursor.getColumnIndex("subject");
      int n = localCursor.getColumnIndex("service_center");
      int i1 = localCursor.getColumnIndex("protocol");
      int i2 = localCursor.getColumnIndex("date");
      int i3 = localCursor.getCount();
      ContentValues localContentValues = new ContentValues();
      int i6;
      for (int i4 = 0; localCursor.moveToNext(); i4 = i6)
        while (true)
        {
          int i5 = localCursor.getInt(i);
          String str1 = i.a(localCursor.getString(j));
          String str2 = localCursor.getString(k);
          if (this.c)
            break label495;
          RubbishSMSScanServiceCtrl localRubbishSMSScanServiceCtrl = this.a;
          i6 = i4 + 1;
          localRubbishSMSScanServiceCtrl.a(i4, i3);
          g localg = e.a(i.a(str1), str2, false);
          if ((localg != null) && (localg.c == 2))
          {
            localContentValues.clear();
            String str3 = localCursor.getString(m);
            String str4 = localCursor.getString(n);
            int i7 = localCursor.getInt(i1);
            long l = localCursor.getLong(i2);
            localContentValues.put("address", str1);
            localContentValues.put("subject", str3);
            localContentValues.put("service_center", str4);
            localContentValues.put("read", Integer.valueOf(1));
            localContentValues.put("protocol", Integer.valueOf(i7));
            localContentValues.put("body", str2.toString());
            localContentValues.put("date", Long.valueOf(l));
            localContentValues.put("person", Integer.valueOf(-1));
            localContentValues.put("firewall_log_time", Long.valueOf(l));
            localContentValues.put("firewall_log_description", localg.h);
            localContentValues.put("firewall_log_rule_id", Integer.valueOf(localg.i));
            localContentValues.put("firewall_from", Integer.valueOf(a.d));
            localContentValues.put("logtype", Integer.valueOf(a.g));
            if (a.a(localContentValues) > 0L)
            {
              this.b = (1 + this.b);
              try
              {
                ContentResolver localContentResolver = this.a.getContentResolver();
                Uri localUri = t.a;
                String[] arrayOfString = new String[1];
                arrayOfString[0] = String.valueOf(i5);
                localContentResolver.delete(localUri, "_id=?", arrayOfString);
                i4 = i6;
              }
              catch (Exception localException)
              {
              }
            }
          }
        }
      label495: localCursor.close();
    }
    this.a.a(this.c, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.h
 * JD-Core Version:    0.6.2
 */