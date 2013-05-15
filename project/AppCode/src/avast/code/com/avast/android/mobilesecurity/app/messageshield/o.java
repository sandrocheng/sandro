package com.avast.android.mobilesecurity.app.messageshield;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.core.g;
import com.avast.android.mobilesecurity.app.filter.core.u;
import com.avast.android.mobilesecurity.engine.k;
import com.avast.android.mobilesecurity.engine.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class o extends AsyncTask
{
  private Context a;
  private a b;

  public o(Context paramContext, a parama)
  {
    this.a = paramContext;
    this.b = parama;
  }

  private void a(MessageToScan paramMessageToScan, Set paramSet)
  {
    m.c("OldMessagesScanTask: Remote scanning of message with UUID: " + paramMessageToScan.b + " and messageId: " + paramMessageToScan.c + " in background.");
    paramMessageToScan.d = (1 + paramMessageToScan.d);
    m.c("OldMessagesScanTask: Scan attempts after this scan: " + paramMessageToScan.d);
    k localk = this.b.b(paramMessageToScan.f, paramMessageToScan.g, paramMessageToScan.h, paramMessageToScan.e);
    l locall = a.c(localk);
    m.c("OldMessagesScanTask: Result for message with UUID: " + paramMessageToScan.b + ", " + locall.a.toString());
    if (a.a(localk))
    {
      m.c("OldMessagesScanTask: Showing message shield for message with UUID: " + paramMessageToScan.b);
      c.a(this.a, paramMessageToScan, paramSet, localk, 268435456);
    }
    if (paramMessageToScan.d > 20)
    {
      m.c("OldMessagesScanTask: Deleting message id from the rescan table because max scan attempts exceeded: " + paramMessageToScan.b);
      this.a.getContentResolver().delete(com.avast.android.mobilesecurity.p.a(paramMessageToScan.b), null, null);
    }
    while (true)
    {
      return;
      if (a.b(localk))
      {
        m.c("OldMessagesScanTask: Updating scan attempts for message: " + paramMessageToScan.b);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("scan_attempts", Integer.valueOf(paramMessageToScan.d));
        this.a.getContentResolver().update(com.avast.android.mobilesecurity.p.a(paramMessageToScan.b), localContentValues, null, null);
      }
      else
      {
        m.c("OldMessagesScanTask: Deleting message id from the rescan table: " + paramMessageToScan.b);
        this.a.getContentResolver().delete(com.avast.android.mobilesecurity.p.a(paramMessageToScan.b), null, null);
      }
    }
  }

  private void a(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    label7: MessageToScan localMessageToScan;
    while (true)
    {
      if (!localIterator.hasNext())
        break label344;
      localMessageToScan = (MessageToScan)localIterator.next();
      if (localMessageToScan.e == com.avast.android.mobilesecurity.engine.p.b)
        break;
      localIterator.remove();
    }
    try
    {
      Cursor localCursor2 = this.a.getContentResolver().query(ContentUris.withAppendedId(u.a, localMessageToScan.c), null, null, null, null);
      localCursor1 = localCursor2;
      if (localCursor1 == null);
    }
    finally
    {
      try
      {
        if (localCursor1.moveToFirst())
        {
          int i = localCursor1.getColumnIndex(u.e);
          int j = localCursor1.getColumnIndex(u.j);
          int k = localCursor1.getColumnIndex(u.f);
          int m = localCursor1.getColumnIndex(u.i);
          localMessageToScan.f = localCursor1.getString(i);
          localMessageToScan.h = localCursor1.getString(j);
          localMessageToScan.i = localCursor1.getLong(k);
          localMessageToScan.g = localCursor1.getString(m);
          String str1;
          label201: String str2;
          if (localMessageToScan.f == null)
          {
            str1 = "";
            localMessageToScan.f = str1;
            if (localMessageToScan.h != null)
              break label265;
            str2 = "";
            label218: localMessageToScan.h = str2;
            if (localMessageToScan.g != null)
              break label274;
          }
          label265: label274: for (String str3 = ""; ; str3 = localMessageToScan.g)
          {
            localMessageToScan.g = str3;
            if (localCursor1 == null)
              break;
            localCursor1.close();
            break;
            str1 = localMessageToScan.f;
            break label201;
            str2 = localMessageToScan.h;
            break label218;
          }
        }
        this.a.getContentResolver().delete(com.avast.android.mobilesecurity.p.a(localMessageToScan.b), null, null);
        localIterator.remove();
        if (localCursor1 == null)
          break label7;
        localCursor1.close();
        break label7;
        localObject1 = finally;
        Cursor localCursor1 = null;
        label329: if (localCursor1 != null)
          localCursor1.close();
        throw localObject1;
        label344: return;
      }
      finally
      {
        break label329;
      }
    }
  }

  private void b(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      MessageToScan localMessageToScan1 = (MessageToScan)localIterator1.next();
      if (localMessageToScan1.e == com.avast.android.mobilesecurity.engine.p.b)
        if (localArrayList.contains(Long.valueOf(localMessageToScan1.c)))
        {
          m.c("OldMessagesScanTask: Message with id: " + localMessageToScan1.c + " already scanned.");
          m.c("OldMessagesScanTask: Deleting row with id: " + localMessageToScan1.a);
          ContentResolver localContentResolver = this.a.getContentResolver();
          Uri localUri = com.avast.android.mobilesecurity.p.a();
          String[] arrayOfString = new String[1];
          arrayOfString[0] = String.valueOf(localMessageToScan1.a);
          localContentResolver.delete(localUri, "_id=?", arrayOfString);
        }
        else
        {
          HashSet localHashSet = new HashSet();
          Iterator localIterator2 = paramList.iterator();
          while (localIterator2.hasNext())
          {
            MessageToScan localMessageToScan2 = (MessageToScan)localIterator2.next();
            if ((localMessageToScan2 != localMessageToScan1) && (localMessageToScan2.f != null) && (localMessageToScan2.f.equals(localMessageToScan1.f)) && (localMessageToScan2.h != null) && (localMessageToScan2.h.equals(localMessageToScan1.h)))
              localHashSet.add(Long.valueOf(localMessageToScan2.c));
          }
          List localList = g.b(this.a.getContentResolver(), localMessageToScan1.f, localMessageToScan1.h, localMessageToScan1.i);
          if (localList != null)
            localHashSet.addAll(localList);
          localHashSet.remove(Long.valueOf(localMessageToScan1.c));
          a(localMessageToScan1, localHashSet);
          localArrayList.add(Long.valueOf(localMessageToScan1.c));
          localArrayList.addAll(localHashSet);
        }
    }
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    m.c("OldMessagesScanTask: Remote scanning of old messages in background.");
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.a.getContentResolver().query(com.avast.android.mobilesecurity.p.a(), null, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getColumnIndex("_id");
        int j = localCursor.getColumnIndex("uuid");
        int k = localCursor.getColumnIndex("message_id");
        int m = localCursor.getColumnIndex("scan_attempts");
        int n = localCursor.getColumnIndex("type");
        do
        {
          MessageToScan localMessageToScan = new MessageToScan();
          localMessageToScan.a = localCursor.getLong(i);
          localMessageToScan.b = localCursor.getString(j);
          localMessageToScan.c = localCursor.getLong(k);
          localMessageToScan.d = localCursor.getInt(m);
          localMessageToScan.e = com.avast.android.mobilesecurity.engine.p.a((short)localCursor.getInt(n));
          localArrayList.add(localMessageToScan);
        }
        while (localCursor.moveToNext());
      }
      localCursor.close();
    }
    m.c("OldMessagesScanTask: Messages to scan: " + localArrayList.size());
    a(localArrayList);
    m.c("OldMessagesScanTask: Messages found: " + localArrayList.size());
    b(localArrayList);
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.o
 * JD-Core Version:    0.6.2
 */