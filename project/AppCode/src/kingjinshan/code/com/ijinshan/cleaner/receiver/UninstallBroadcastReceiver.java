package com.ijinshan.cleaner.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Environment;
import com.ijinshan.cleaner.MonitorUninstallActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class UninstallBroadcastReceiver extends BroadcastReceiver
{
  private static final String d = "softdetail";
  boolean a = false;
  long b = 0L;
  private SQLiteDatabase c = null;
  private a e = null;
  private String f = "";

  private long a(File paramFile)
  {
    if ((paramFile != null) && (paramFile.isDirectory()) && (paramFile.exists()))
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int i = arrayOfFile.length;
        for (int j = 0; j < i; j++)
          a(arrayOfFile[j]);
      }
    }
    for (this.b += paramFile.length(); ; this.b += paramFile.length())
      do
        return this.b;
      while ((paramFile == null) || (!paramFile.isFile()));
  }

  private a a(String paramString)
  {
    String str1 = Environment.getExternalStorageDirectory().toString();
    String[] arrayOfString = { paramString };
    this.c = new com.ijinshan.cleaner.b.a().a();
    Cursor localCursor = this.c.query("softdetail", null, "apkname = ?", arrayOfString, null, null, null);
    ArrayList localArrayList = new ArrayList();
    Object localObject = "";
    if (localCursor.moveToFirst())
    {
      String str4;
      do
      {
        int i = localCursor.getInt(5);
        String str3 = localCursor.getString(4);
        str4 = localCursor.getString(1);
        if (i == 0)
          localArrayList.add(str3);
      }
      while (localCursor.moveToNext());
      localObject = str4;
    }
    localCursor.close();
    this.c.close();
    long l2;
    if (!localArrayList.isEmpty())
    {
      Iterator localIterator = localArrayList.iterator();
      String str2;
      for (l2 = 0L; localIterator.hasNext(); l2 += a(new File(str1 + str2)))
        str2 = (String)localIterator.next();
    }
    for (long l1 = l2; ; l1 = 0L)
    {
      a locala;
      if ((l1 >= 0L) && (localArrayList.size() > 0))
      {
        locala = new a(this);
        locala.a = paramString;
        locala.b = ((String)localObject);
        locala.c = localArrayList;
        locala.d = l1;
      }
      while (true)
      {
        return locala;
        locala = null;
      }
    }
  }

  private void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, MonitorUninstallActivity.class);
    localIntent.setFlags(268435456);
    localIntent.putExtra(MonitorUninstallActivity.a, MonitorUninstallActivity.b);
    Bundle localBundle = new Bundle();
    localBundle.putStringArrayList("filelist", this.e.c);
    localBundle.putString("name", this.e.b);
    localBundle.putLong("size", this.e.d);
    localIntent.putExtras(localBundle);
    paramContext.startActivity(localIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if ((str1 != null) && (str1.equals("android.intent.action.PACKAGE_REMOVED")))
    {
      Bundle localBundle1 = paramIntent.getExtras();
      if (localBundle1 != null)
        this.a = localBundle1.getBoolean("android.intent.extra.REPLACING");
      if (!this.a);
    }
    else
    {
      return;
    }
    this.f = paramIntent.getDataString().substring(8);
    String str2 = this.f;
    String str3 = Environment.getExternalStorageDirectory().toString();
    String[] arrayOfString = { str2 };
    this.c = new com.ijinshan.cleaner.b.a().a();
    Cursor localCursor = this.c.query("softdetail", null, "apkname = ?", arrayOfString, null, null, null);
    ArrayList localArrayList = new ArrayList();
    Object localObject = "";
    if (localCursor.moveToFirst())
    {
      String str6;
      do
      {
        int i = localCursor.getInt(5);
        String str5 = localCursor.getString(4);
        str6 = localCursor.getString(1);
        if (i == 0)
          localArrayList.add(str5);
      }
      while (localCursor.moveToNext());
      localObject = str6;
    }
    localCursor.close();
    this.c.close();
    long l = 0L;
    if (!localArrayList.isEmpty())
    {
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        l += a(new File(str3 + str4));
      }
    }
    a locala;
    if ((l >= 0L) && (localArrayList.size() > 0))
    {
      locala = new a(this);
      locala.a = str2;
      locala.b = ((String)localObject);
      locala.c = localArrayList;
      locala.d = l;
    }
    while (true)
    {
      this.e = locala;
      if (this.e == null)
        break;
      Intent localIntent = new Intent(paramContext, MonitorUninstallActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra(MonitorUninstallActivity.a, MonitorUninstallActivity.b);
      Bundle localBundle2 = new Bundle();
      localBundle2.putStringArrayList("filelist", this.e.c);
      localBundle2.putString("name", this.e.b);
      localBundle2.putLong("size", this.e.d);
      localIntent.putExtras(localBundle2);
      paramContext.startActivity(localIntent);
      break;
      locala = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.receiver.UninstallBroadcastReceiver
 * JD-Core Version:    0.6.2
 */