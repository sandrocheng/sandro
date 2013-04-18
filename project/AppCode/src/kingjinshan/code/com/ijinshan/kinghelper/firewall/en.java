package com.ijinshan.kinghelper.firewall;

import android.a.t;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.h;
import java.io.File;

final class en extends AsyncTask
{
  boolean a = false;
  private SQLiteDatabase c;

  private en(SmsBackupActivity paramSmsBackupActivity, byte paramByte)
  {
  }

  private void a(File paramFile, String[] paramArrayOfString)
  {
    this.c = SQLiteDatabase.openOrCreateDatabase(paramFile, null);
    this.c.setVersion(1);
    this.c.setLockingEnabled(true);
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("CREATE TABLE  if not exists ").append("sms_backup").append("(");
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      if (i < paramArrayOfString.length - 1)
        localStringBuilder1.append(paramArrayOfString[i] + " TEXT,");
      while (true)
      {
        i++;
        break;
        localStringBuilder1.append(paramArrayOfString[i] + " TEXT ");
      }
    }
    localStringBuilder1.append(")");
    this.c.execSQL(localStringBuilder1.toString());
    StringBuilder localStringBuilder2 = new StringBuilder();
    localStringBuilder2.append("CREATE TABLE if not exists ").append("sms_backup_friend").append("(");
    localStringBuilder2.append("id INTEGER,");
    localStringBuilder2.append("address text,");
    localStringBuilder2.append("body text,");
    localStringBuilder2.append("date INTEGER,");
    localStringBuilder2.append("status INTEGER,");
    localStringBuilder2.append("type INTEGER,");
    localStringBuilder2.append("list_type INTEGER ");
    localStringBuilder2.append(")");
    this.c.execSQL(localStringBuilder2.toString());
  }

  private void a(Integer paramInteger)
  {
    SmsBackupActivity.a(this.b).setVisibility(4);
    SmsBackupActivity.b(this.b).setEnabled(true);
    SmsBackupActivity.c(this.b).setEnabled(true);
    if (paramInteger.intValue() >= 0)
      SmsBackupActivity.d(this.b).setText(this.b.getString(2131427731, new Object[] { paramInteger }));
    while (true)
    {
      SmsBackupActivity.a(this.b, 0);
      SmsBackupActivity.e(this.b);
      return;
      SmsBackupActivity.d(this.b).setText(2131427732);
    }
  }

  private void a(Integer[] paramArrayOfInteger)
  {
    TextView localTextView = SmsBackupActivity.d(this.b);
    SmsBackupActivity localSmsBackupActivity = this.b;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = (paramArrayOfInteger[1] + "/" + paramArrayOfInteger[0]);
    localTextView.setText(localSmsBackupActivity.getString(2131427729, arrayOfObject));
  }

  private static boolean a(SQLiteDatabase paramSQLiteDatabase, ContentValues paramContentValues)
  {
    String str1 = paramContentValues.getAsString("address");
    if (TextUtils.isEmpty(str1))
      str1 = "";
    String str2 = paramContentValues.getAsString("date");
    if (TextUtils.isEmpty(str2))
      str2 = "";
    String[] arrayOfString = { str1, str2 };
    Cursor localCursor = paramSQLiteDatabase.query("sms_backup", new String[] { "_id" }, "address =? and date=?", arrayOfString, null, null, null);
    int j;
    if (localCursor != null)
    {
      j = localCursor.getCount();
      localCursor.close();
    }
    for (int i = j; ; i = 0)
    {
      if (i > 0);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
  }

  private static boolean a(SQLiteDatabase paramSQLiteDatabase, l paraml)
  {
    String str = paraml.b();
    if (TextUtils.isEmpty(str))
      str = "";
    long l = paraml.d();
    String[] arrayOfString = new String[2];
    arrayOfString[0] = str;
    arrayOfString[1] = String.valueOf(l);
    Cursor localCursor = paramSQLiteDatabase.query("sms_backup_friend", new String[] { "id" }, "address =? and date=? ", arrayOfString, null, null, null);
    int j;
    if (localCursor != null)
    {
      j = localCursor.getCount();
      localCursor.close();
    }
    for (int i = j; ; i = 0)
    {
      if (i > 0);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
  }

  private Integer b()
  {
    Integer localInteger;
    if (!com.ijinshan.kinghelper.a.j.b())
    {
      SmsBackupActivity localSmsBackupActivity3 = this.b;
      eo localeo = new eo(this);
      localSmsBackupActivity3.runOnUiThread(localeo);
      if (this.c != null)
      {
        this.c.close();
        this.c = null;
      }
      localInteger = Integer.valueOf(-1);
    }
    Cursor localCursor1;
    int i;
    l[] arrayOfl;
    int j;
    int k;
    File localFile2;
    File localFile4;
    while (true)
    {
      return localInteger;
      if (com.ijinshan.kinghelper.a.j.a() <= 102400L)
      {
        SmsBackupActivity localSmsBackupActivity2 = this.b;
        ep localep = new ep(this);
        localSmsBackupActivity2.runOnUiThread(localep);
        localInteger = Integer.valueOf(-1);
      }
      else if (this.a)
      {
        if (this.c != null)
        {
          this.c.close();
          this.c = null;
        }
        localInteger = Integer.valueOf(-1);
      }
      else
      {
        localCursor1 = this.b.getContentResolver().query(t.a, null, null, null, "date DESC");
        i = 0;
        if (localCursor1 != null)
          i = localCursor1.getCount();
        arrayOfl = h.a(this.b).a(c.b);
        j = arrayOfl.length;
        k = i + j;
        SmsBackupActivity.a(this.b).setMax(k);
        File localFile1 = new File(SmsBackupActivity.a()).getParentFile();
        if (!localFile1.exists())
          localFile1.mkdirs();
        localFile2 = new File(Environment.getExternalStorageDirectory() + "/mosecurity/SMSBackup/smsbak.bak.tmp");
        if (localFile2.exists())
          localFile2.delete();
        File localFile3 = new File(SmsBackupActivity.b());
        localFile4 = new File(SmsBackupActivity.a());
        if (!localFile3.exists())
          break;
        if (com.ijinshan.kinghelper.a.j.b(localFile3, localFile2))
          break label409;
        if (localCursor1 != null)
          localCursor1.close();
        if (this.c != null)
          this.c.close();
        localFile2.delete();
        SmsBackupActivity localSmsBackupActivity1 = this.b;
        eq localeq = new eq(this);
        localSmsBackupActivity1.runOnUiThread(localeq);
        localFile2.delete();
        localInteger = Integer.valueOf(-1);
      }
    }
    if (localFile4.exists())
      SmsBackupActivity.a(localFile4, localFile2);
    while (true)
    {
      label409: this.c = SQLiteDatabase.openOrCreateDatabase(localFile2, null);
      this.c.setLockingEnabled(true);
      if (!this.a)
        break label493;
      if (localCursor1 != null)
        localCursor1.close();
      if (this.c != null)
      {
        this.c.close();
        this.c = null;
      }
      localFile2.delete();
      localInteger = Integer.valueOf(-1);
      break;
      a(localFile2, localCursor1.getColumnNames());
    }
    label493: int n;
    label522: label663: label812: int m;
    if (localCursor1 != null)
    {
      int i7 = localCursor1.getCount();
      if (i7 > 0)
      {
        ContentValues localContentValues2 = new ContentValues();
        n = 1;
        if (localCursor1.moveToNext())
        {
          localContentValues2.clear();
          DatabaseUtils.cursorRowToContentValues(localCursor1, localContentValues2);
          SQLiteDatabase localSQLiteDatabase2 = this.c;
          String str3 = localContentValues2.getAsString("address");
          if (TextUtils.isEmpty(str3))
            str3 = "";
          String str4 = localContentValues2.getAsString("date");
          if (TextUtils.isEmpty(str4))
            str4 = "";
          String[] arrayOfString2 = { str3, str4 };
          Cursor localCursor3 = localSQLiteDatabase2.query("sms_backup", new String[] { "_id" }, "address =? and date=?", arrayOfString2, null, null, null);
          int i8 = 0;
          if (localCursor3 != null)
          {
            i8 = localCursor3.getCount();
            localCursor3.close();
          }
          int i9;
          if (i8 > 0)
          {
            i9 = 1;
            if (i9 != 0)
              break label812;
            if (TextUtils.isEmpty(localContentValues2.getAsString("address")))
              localContentValues2.put("address", "");
            this.c.insert("sms_backup", null, localContentValues2);
          }
          while (true)
          {
            n = 1 + localCursor1.getPosition();
            SmsBackupActivity.a(this.b).setProgress(n);
            Integer[] arrayOfInteger2 = new Integer[2];
            arrayOfInteger2[0] = Integer.valueOf(k);
            arrayOfInteger2[1] = Integer.valueOf(n);
            publishProgress(arrayOfInteger2);
            if (!this.a)
              break label522;
            if (localCursor1 != null)
              localCursor1.close();
            if (this.c != null)
            {
              this.c.close();
              this.c = null;
            }
            localFile2.delete();
            localInteger = Integer.valueOf(-1);
            break;
            i9 = 0;
            break label663;
            Log.e("SmsBackupActivity", "isSystemSmsExistBackup skip>>" + localContentValues2);
          }
        }
      }
      else
      {
        n = 1;
      }
      localCursor1.close();
      m = i7;
    }
    while (true)
    {
      ContentValues localContentValues1 = new ContentValues();
      int i1 = arrayOfl.length;
      int i2 = 0;
      label924: int i6;
      for (int i3 = n; ; i3 = i6)
      {
        if (i2 >= i1)
          break label1259;
        l locall = arrayOfl[i2];
        localContentValues1.clear();
        localContentValues1.put("id", Integer.valueOf(locall.a()));
        String str1;
        if (TextUtils.isEmpty(locall.b()))
        {
          str1 = "";
          localContentValues1.put("address", str1);
          localContentValues1.put("body", locall.c());
          localContentValues1.put("date", Long.valueOf(locall.d()));
          localContentValues1.put("status", Integer.valueOf(locall.g()));
          localContentValues1.put("type", Integer.valueOf(locall.f()));
          localContentValues1.put("list_type", Integer.valueOf(locall.e().ordinal()));
          SQLiteDatabase localSQLiteDatabase1 = this.c;
          String str2 = locall.b();
          if (TextUtils.isEmpty(str2))
            str2 = "";
          long l = locall.d();
          String[] arrayOfString1 = new String[2];
          arrayOfString1[0] = str2;
          arrayOfString1[1] = String.valueOf(l);
          Cursor localCursor2 = localSQLiteDatabase1.query("sms_backup_friend", new String[] { "id" }, "address =? and date=? ", arrayOfString1, null, null, null);
          int i4 = 0;
          if (localCursor2 != null)
          {
            i4 = localCursor2.getCount();
            localCursor2.close();
          }
          if (i4 <= 0)
            break label1243;
        }
        label1243: for (int i5 = 1; ; i5 = 0)
        {
          if (i5 == 0)
            this.c.insert("sms_backup_friend", null, localContentValues1);
          ProgressBar localProgressBar = SmsBackupActivity.a(this.b);
          i6 = i3 + 1;
          localProgressBar.setProgress(i3);
          Integer[] arrayOfInteger1 = new Integer[2];
          arrayOfInteger1[0] = Integer.valueOf(k);
          arrayOfInteger1[1] = Integer.valueOf(i6);
          publishProgress(arrayOfInteger1);
          if (!this.a)
            break label1249;
          if (this.c != null)
          {
            this.c.close();
            this.c = null;
          }
          localFile2.delete();
          localInteger = Integer.valueOf(-1);
          break;
          str1 = locall.b();
          break label924;
        }
        label1249: i2++;
      }
      label1259: if (this.c != null)
      {
        this.c.close();
        this.c = null;
      }
      File localFile5 = new File(Environment.getExternalStorageDirectory() + "/mosecurity/SMSBackup/smsbak.bak.tmp2");
      if (localFile5.exists())
        localFile5.delete();
      if (com.ijinshan.kinghelper.a.j.a(localFile2, localFile5))
      {
        localFile2.delete();
        new File(SmsBackupActivity.b()).delete();
        localFile5.renameTo(new File(SmsBackupActivity.b()));
        new File(SmsBackupActivity.a()).delete();
        localInteger = Integer.valueOf(j + m);
        break;
      }
      localFile2.delete();
      localFile5.delete();
      localInteger = Integer.valueOf(-1);
      break;
      m = i;
      n = 1;
    }
  }

  final void a()
  {
    this.a = true;
  }

  protected final void onCancelled()
  {
    if (this.c != null)
    {
      this.c.close();
      this.c = null;
    }
    SmsBackupActivity.a(this.b).setVisibility(4);
    SmsBackupActivity.b(this.b).setEnabled(true);
    SmsBackupActivity.c(this.b).setEnabled(true);
    SmsBackupActivity.d(this.b).setText(2131427732);
    SmsBackupActivity.a(this.b, 0);
    SmsBackupActivity.e(this.b);
  }

  protected final void onPreExecute()
  {
    SmsBackupActivity.a(this.b, 1);
    SmsBackupActivity.a(this.b).setVisibility(0);
    SmsBackupActivity.a(this.b).setMax(100);
    SmsBackupActivity.a(this.b).setProgress(0);
    SmsBackupActivity.b(this.b).setEnabled(false);
    SmsBackupActivity.c(this.b).setEnabled(false);
    SmsBackupActivity.d(this.b).setText(this.b.getString(2131427729, new Object[] { "0" }));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.en
 * JD-Core Version:    0.6.2
 */