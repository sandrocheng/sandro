package com.antivirus.wipe;

import android.accounts.AccountManagerFuture;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.provider.Settings.System;
import com.antivirus.AvApplication;
import com.avg.toolkit.f.a;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.LinkedList;

public class ak
{
  private Context a;

  public ak(Context paramContext)
  {
    this.a = paramContext;
  }

  private void a(Uri paramUri, boolean paramBoolean)
  {
    try
    {
      this.a.getContentResolver().delete(paramUri, null, null);
      label14: if (paramBoolean)
        k();
      return;
    }
    catch (Exception localException)
    {
      break label14;
    }
  }

  public static boolean a()
  {
    boolean bool1 = true;
    int i = 0;
    if (Integer.parseInt(Build.VERSION.SDK) < 4);
    while (true)
    {
      return bool1;
      try
      {
        Class localClass = Class.forName("android.content.IContentService");
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Boolean.TYPE;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Boolean.valueOf(false);
        Object[] arrayOfObject2 = new Object[0];
        Class[] arrayOfClass2 = new Class[0];
        Object localObject2 = ContentResolver.class.getMethod("getContentService", arrayOfClass2).invoke(null, arrayOfObject2);
        while (true)
        {
          try
          {
            Method localMethod3 = localClass.getDeclaredMethod("setMasterSyncAutomatically", arrayOfClass1);
            localMethod3.invoke(localObject2, arrayOfObject1);
            Method localMethod4 = localClass.getDeclaredMethod("getMasterSyncAutomatically", arrayOfClass2);
            boolean bool3 = ((Boolean)localMethod4.invoke(localObject2, arrayOfObject2)).booleanValue();
            int j = 10;
            if ((bool3) && (j > 0))
            {
              Thread.sleep(2000L);
              localMethod3.invoke(localObject2, arrayOfObject1);
              boolean bool4 = ((Boolean)localMethod4.invoke(localObject2, arrayOfObject2)).booleanValue();
              j--;
              bool3 = bool4;
              continue;
            }
            bool2 = bool1;
            if (i == 0);
          }
          catch (Exception localException3)
          {
            try
            {
              Method localMethod1 = localClass.getDeclaredMethod("setListenForNetworkTickles", arrayOfClass1);
              Method localMethod2 = localClass.getMethod("cancelSync", new Class[] { Uri.class });
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = Uri.parse("content://gmail-ls/");
              Object[] arrayOfObject4 = new Object[1];
              arrayOfObject4[0] = Uri.parse("content://contacts/");
              Object[] arrayOfObject5 = new Object[1];
              arrayOfObject5[0] = Uri.parse("content://calendar/");
              localMethod2.invoke(localObject2, arrayOfObject5);
              localMethod2.invoke(localObject2, arrayOfObject4);
              localMethod2.invoke(localObject2, arrayOfObject3);
              localMethod1.invoke(localObject2, arrayOfObject1);
              bool2 = bool1;
              bool1 = bool2;
              break;
              localException3 = localException3;
              a.a(localException3);
              i = bool1;
              bool2 = false;
            }
            catch (Exception localException4)
            {
              try
              {
                a.a(localException4);
              }
              catch (Exception localException2)
              {
              }
            }
          }
          a.a(localException2);
        }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          Object localObject1 = localException1;
          boolean bool2 = false;
        }
      }
    }
  }

  public static boolean a(String paramString)
  {
    boolean bool1 = true;
    if (Integer.parseInt(Build.VERSION.SDK) >= 5);
    while (true)
    {
      try
      {
        Class localClass1 = Class.forName("android.accounts.AccountManager");
        Class localClass2 = Class.forName("android.accounts.Account");
        Class localClass3 = Class.forName("android.accounts.AccountManagerCallback");
        Method localMethod1 = localClass1.getDeclaredMethod("get", new Class[] { Context.class });
        Method localMethod2 = localClass1.getDeclaredMethod("getAccounts", new Class[0]);
        Method localMethod3 = localClass1.getDeclaredMethod("clearPassword", new Class[] { localClass2 });
        Method localMethod4 = localClass1.getDeclaredMethod("removeAccount", new Class[] { localClass2, localClass3, Handler.class });
        Field localField = localClass2.getDeclaredField("type");
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = AvApplication.b();
        Object localObject1 = localMethod1.invoke(null, arrayOfObject1);
        Object[] arrayOfObject2 = (Object[])localMethod2.invoke(localObject1, new Object[0]);
        if (arrayOfObject2 != null)
        {
          int i = arrayOfObject2.length;
          int j = 0;
          if (j < i)
          {
            Object localObject2 = arrayOfObject2[j];
            if (!localField.get(localObject2).toString().equals(paramString))
              break label286;
            localMethod3.invoke(localObject1, new Object[] { localObject2 });
            boolean bool3 = ((Boolean)((AccountManagerFuture)localMethod4.invoke(localObject1, new Object[] { localObject2, null, null })).getResult()).booleanValue();
            if (bool3)
              break label286;
            bool2 = false;
            j++;
            bool1 = bool2;
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        a.a("cannot delete account");
        a.a(localException);
      }
      return bool1;
      label286: boolean bool2 = bool1;
    }
  }

  private boolean b(String paramString)
  {
    HashSet localHashSet = new HashSet();
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(new File(paramString));
    boolean bool = true;
    while (localLinkedList.size() > 0)
    {
      File localFile = (File)localLinkedList.remove();
      if (localFile != null)
      {
        try
        {
          if ((!localFile.isDirectory()) || (a(localFile)))
            break label179;
          if (localFile.listFiles() == null)
            continue;
          if (localFile.listFiles().length != 0)
            break label109;
          localFile.delete();
        }
        catch (Exception localException)
        {
          a.a(localException);
          bool = false;
        }
        continue;
        label109: File[] arrayOfFile = localFile.listFiles();
        int i = arrayOfFile.length;
        for (int j = 0; j < i; j++)
          localLinkedList.add(arrayOfFile[j]);
        if (!localHashSet.contains(localFile.getAbsolutePath()))
        {
          localLinkedList.add(localFile);
          localHashSet.add(localFile.getAbsolutePath());
          continue;
          label179: localFile.delete();
        }
      }
    }
    localHashSet.clear();
    localLinkedList.clear();
    return bool;
  }

  public static void j()
  {
    int i = 0;
    if (Integer.parseInt(Build.VERSION.SDK) >= 5)
      try
      {
        Class localClass1 = Class.forName("android.accounts.AccountManager");
        Class localClass2 = Class.forName("android.accounts.Account");
        Class localClass3 = Class.forName("android.accounts.AccountManagerCallback");
        Method localMethod1 = localClass1.getDeclaredMethod("get", new Class[] { Context.class });
        Method localMethod2 = localClass1.getDeclaredMethod("getAccounts", new Class[0]);
        Method localMethod3 = localClass1.getDeclaredMethod("clearPassword", new Class[] { localClass2 });
        Method localMethod4 = localClass1.getDeclaredMethod("removeAccount", new Class[] { localClass2, localClass3, Handler.class });
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = AvApplication.b();
        Object localObject1 = localMethod1.invoke(null, arrayOfObject1);
        Object[] arrayOfObject2 = (Object[])localMethod2.invoke(localObject1, new Object[0]);
        if (arrayOfObject2 != null)
        {
          int j = arrayOfObject2.length;
          while (i < j)
          {
            Object localObject2 = arrayOfObject2[i];
            localMethod3.invoke(localObject1, new Object[] { localObject2 });
            localMethod4.invoke(localObject1, new Object[] { localObject2, null, null });
            i++;
          }
        }
      }
      catch (Exception localException)
      {
        a.a("cannot delete account");
        a.a(localException);
      }
  }

  private void k()
  {
    while (true)
    {
      int i;
      try
      {
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='400'", null);
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='410'", null);
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='700'", null);
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='200'", null);
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='300'", null);
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='600'", null);
        this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "logtype='500'", null);
        localCursor = this.a.getContentResolver().query(Uri.parse("content://logs/historys"), new String[] { "logtype", "_id" }, null, null, null);
        if (localCursor == null)
          return;
      }
      catch (Exception localException1)
      {
        Cursor localCursor;
        localException1.printStackTrace();
        continue;
        if (!localCursor.moveToNext())
        {
          localCursor.close();
          continue;
        }
        i = localCursor.getInt(localCursor.getColumnIndex("_id"));
        int j = localCursor.getInt(localCursor.getColumnIndex("logtype"));
        if ((j != 400) && (j != 410) && (j != 700) && (j != 200) && (j != 300) && (j != 600))
          if (j != 500)
            continue;
      }
      try
      {
        Thread.sleep(1000L);
        try
        {
          label290: this.a.getContentResolver().delete(Uri.parse("content://logs/historys"), "_id='" + i + "'", null);
        }
        catch (Exception localException3)
        {
          try
          {
            localException3.printStackTrace();
          }
          catch (Exception localException4)
          {
          }
        }
      }
      catch (Exception localException2)
      {
        break label290;
      }
    }
  }

  public boolean a(File paramFile)
  {
    if (paramFile == null)
      throw new NullPointerException("null file");
    if (paramFile.getParent() == null)
      if (paramFile.getCanonicalFile().equals(paramFile.getAbsoluteFile()))
        break label62;
    label62: for (boolean bool = true; ; bool = false)
    {
      return bool;
      paramFile = new File(paramFile.getParentFile().getCanonicalFile(), paramFile.getName());
      break;
    }
  }

  public void b()
  {
    int i = 0;
    String[] arrayOfString = { "content://call_log/calls" };
    int j = arrayOfString.length;
    while (i < j)
    {
      a(Uri.parse(arrayOfString[i]), true);
      i++;
    }
  }

  public void c()
  {
    try
    {
      localContentResolver = this.a.getContentResolver();
      int i = Integer.parseInt(Build.VERSION.SDK);
      if (i > 11)
        try
        {
          localContentResolver.delete(Uri.parse("content://com.android.browser/history"), null, null);
          return;
        }
        catch (Exception localException2)
        {
          while (true)
            a.a(localException2);
        }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        ContentResolver localContentResolver;
        a.a(localException1);
        continue;
        localContentResolver.delete(Uri.parse("content://browser/bookmarks"), "bookmark!=?", new String[] { "1" });
      }
    }
  }

  public void d()
  {
    try
    {
      localContentResolver = this.a.getContentResolver();
      int i = Integer.parseInt(Build.VERSION.SDK);
      if (i > 11)
        try
        {
          localContentResolver.delete(Uri.parse("content://com.android.browser/bookmarks"), null, null);
          return;
        }
        catch (Exception localException2)
        {
          while (true)
            a.a(localException2);
        }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        ContentResolver localContentResolver;
        a.a(localException1);
        continue;
        localContentResolver.delete(Uri.parse("content://browser/bookmarks"), "bookmark=?", new String[] { "1" });
      }
    }
  }

  public void e()
  {
    String[] arrayOfString = { "content://com.android.contacts/contacts", "content://com.android.contacts/data", "content://com.android.contacts/raw_contact_entities", "content://com.android.contacts/emails", "content://com.android.contacts/postals", "content://com.android.contacts/groups", "content://com.android.contacts/groups_summary", "content://contacts/people", "content://contacts/phones", "content://contacts/photos", "content://contacts/calls", "content://contacts/", "content://contacts/settings", "content://contacts/deleted_people", "content://contacts/people/with_email_or_im_filter", "content://contacts/groups", "content://contacts/deleted_groups", "content://contacts/groupmembership", "content://contacts/groupmembershipraw", "content://contacts/contact_methods", "content://contacts/contact_methods/email", "content://contacts/presence", "content://contacts/organizations", "content://contacts/photos", "content://contacts/extensions", "content://com.android.contacts/raw_contacts", "content://com.android.contacts/contacts", "content://com.android.contacts/data" };
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      a(Uri.parse(arrayOfString[j]), false);
  }

  public void f()
  {
    int i = 0;
    String[] arrayOfString = { "content://sms", "content://sms/inbox", "content://sms/sent", "content://mms/inbox", "content://mms", "content://mms-sms", "content://mms/address", "content://mms/part", "content://mms/sent", "content://mms/outbox" };
    int j = arrayOfString.length;
    while (i < j)
    {
      a(Uri.parse(arrayOfString[i]), true);
      i++;
    }
  }

  public void g()
  {
    int i = 0;
    String[] arrayOfString = { "content://browser/bookmarks", "content://sms", "content://sms/inbox", "content://sms/inbox", "content://mms/inbox", "content://mms/outbox", "content://media/external/video", "content://media/internal/audio", "content://media/external/audio", "content://media/internal/video", "content://media/external/audio/playlists", "content://call_log/calls", "content://browser/searches", "content://subscribedfeeds/feeds", "content://subscribedfeeds/deleted_feeds", "content://com.android.contacts/contacts", "content://com.android.contacts/data", "content://com.android.contacts/raw_contact_entities", "content://com.android.contacts/emails", "content://com.android.contacts/postals", "content://com.android.contacts/groups", "content://com.android.contacts/groups_summary", "content://com.android.email.provider", "content://com.android.email.provider/account/", "content://com.android.email.provider/mailbox/", "content://com.android.email.provider/message/", "content://com.android.email.provider/attachment/", "content://com.android.email.provider/body/", "content://com.android.email.provider/hostauth/", "content://com.android.email.provider/syncedMessage/", "content://com.android.email.provider/deletedMessage/", "content://android.server.checkin", "content://android.server.checkin/events", "content://android.server.checkin/stats", "content://android.server.checkin/properties", "content://android.server.checkin/crashes", "content://downloads/download", "content://contacts/people", "content://contacts/phones", "content://contacts/photos", "content://contacts/calls", "content://contacts/", "content://contacts/settings", "content://contacts/deleted_people", "content://contacts/people/with_email_or_im_filter", "content://contacts/groups", "content://contacts/deleted_groups", "content://contacts/groupmembership", "content://contacts/groupmembershipraw", "content://contacts/contact_methods", "content://contacts/contact_methods/email", "content://contacts/presence", "content://contacts/organizations", "content://contacts/photos", "content://contacts/extensions", "content://com.android.contacts/raw_contacts", "content://com.android.contacts/contacts", "content://com.android.contacts/data", "content://gmail-ls/conversations/", "content://gmail-ls/", "content://gmail-ls/labels/", "content://gmail-ls/messages/", "content://gmail-ls/settings/", "content://calendar/", "content://calendar/calendars", "content://calendar/attendees", "content://calendar/events", "content://calendar/deleted_events", "content://calendar/instances/whenbyday", "content://calendar/instances", "content://calendar/busybits/when", "content://calendar/busybits/", "content://calendar/reminders", "content://calendar/calendar_alerts", "content://calendar/calendar_alerts/by_instance", "content://calendar/extendedproperties", "content://com.android.browser/bookmarks", "content://com.android.browser/history" };
    int j = arrayOfString.length;
    while (i < j)
    {
      a(Uri.parse(arrayOfString[i]), true);
      i++;
    }
  }

  // ERROR //
  public boolean h()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: getstatic 38	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   5: invokestatic 44	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   8: bipush 7
    //   10: if_icmpgt +270 -> 280
    //   13: ldc_w 468
    //   16: invokestatic 52	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   19: astore 47
    //   21: aload 47
    //   23: invokevirtual 472	java/lang/Class:getConstructors	()[Ljava/lang/reflect/Constructor;
    //   26: astore 48
    //   28: iconst_0
    //   29: anewarray 4	java/lang/Object
    //   32: astore 49
    //   34: aload 48
    //   36: iconst_0
    //   37: aaload
    //   38: aload 49
    //   40: invokevirtual 478	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   43: astore 50
    //   45: aload 47
    //   47: ldc_w 480
    //   50: iconst_1
    //   51: anewarray 48	java/lang/Class
    //   54: dup
    //   55: iconst_0
    //   56: ldc 155
    //   58: aastore
    //   59: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   62: astore 51
    //   64: iconst_1
    //   65: anewarray 4	java/lang/Object
    //   68: astore 52
    //   70: aload 52
    //   72: iconst_0
    //   73: new 155	java/lang/String
    //   76: dup
    //   77: ldc_w 482
    //   80: invokespecial 483	java/lang/String:<init>	(Ljava/lang/String;)V
    //   83: aastore
    //   84: aload 51
    //   86: aload 50
    //   88: aload 52
    //   90: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   93: checkcast 485	android/os/IBinder
    //   96: astore 53
    //   98: ldc_w 487
    //   101: invokestatic 52	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   104: astore 54
    //   106: aload 54
    //   108: invokevirtual 491	java/lang/Class:getClasses	()[Ljava/lang/Class;
    //   111: iconst_0
    //   112: aaload
    //   113: astore 55
    //   115: aload 55
    //   117: ldc_w 493
    //   120: iconst_1
    //   121: anewarray 48	java/lang/Class
    //   124: dup
    //   125: iconst_0
    //   126: ldc_w 485
    //   129: aastore
    //   130: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   133: aload 55
    //   135: iconst_1
    //   136: anewarray 4	java/lang/Object
    //   139: dup
    //   140: iconst_0
    //   141: aload 53
    //   143: aastore
    //   144: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   147: astore 56
    //   149: iconst_1
    //   150: anewarray 48	java/lang/Class
    //   153: dup
    //   154: iconst_0
    //   155: ldc 155
    //   157: aastore
    //   158: astore 57
    //   160: aload 54
    //   162: ldc_w 495
    //   165: aload 57
    //   167: invokevirtual 68	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   170: astore 58
    //   172: aload 54
    //   174: ldc_w 497
    //   177: aload 57
    //   179: invokevirtual 68	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   182: astore 59
    //   184: iconst_1
    //   185: anewarray 4	java/lang/Object
    //   188: astore 60
    //   190: aload 60
    //   192: iconst_0
    //   193: invokestatic 502	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   196: invokevirtual 503	java/io/File:toString	()Ljava/lang/String;
    //   199: aastore
    //   200: aload 58
    //   202: aload 56
    //   204: aload 60
    //   206: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   209: pop
    //   210: aload 59
    //   212: aload 56
    //   214: aload 60
    //   216: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   219: pop
    //   220: iload_1
    //   221: ifne +672 -> 893
    //   224: aload_0
    //   225: invokestatic 502	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   228: invokevirtual 205	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   231: invokespecial 505	com/antivirus/wipe/ak:b	(Ljava/lang/String;)Z
    //   234: istore 8
    //   236: iload 8
    //   238: istore_3
    //   239: new 178	java/io/File
    //   242: dup
    //   243: ldc_w 507
    //   246: invokespecial 180	java/io/File:<init>	(Ljava/lang/String;)V
    //   249: astore 4
    //   251: aload 4
    //   253: ifnull +25 -> 278
    //   256: aload 4
    //   258: invokevirtual 193	java/io/File:isDirectory	()Z
    //   261: ifeq +17 -> 278
    //   264: aload_0
    //   265: aload 4
    //   267: invokevirtual 503	java/io/File:toString	()Ljava/lang/String;
    //   270: invokespecial 505	com/antivirus/wipe/ak:b	(Ljava/lang/String;)Z
    //   273: istore 6
    //   275: iload 6
    //   277: istore_3
    //   278: iload_3
    //   279: ireturn
    //   280: getstatic 38	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   283: invokestatic 44	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   286: bipush 7
    //   288: if_icmplt +293 -> 581
    //   291: getstatic 38	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   294: invokestatic 44	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   297: bipush 11
    //   299: if_icmpgt +282 -> 581
    //   302: ldc_w 468
    //   305: invokestatic 52	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   308: astore 28
    //   310: aload 28
    //   312: invokevirtual 472	java/lang/Class:getConstructors	()[Ljava/lang/reflect/Constructor;
    //   315: astore 29
    //   317: iconst_0
    //   318: anewarray 4	java/lang/Object
    //   321: astore 30
    //   323: aload 29
    //   325: iconst_0
    //   326: aaload
    //   327: aload 30
    //   329: invokevirtual 478	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   332: astore 31
    //   334: aload 28
    //   336: ldc_w 480
    //   339: iconst_1
    //   340: anewarray 48	java/lang/Class
    //   343: dup
    //   344: iconst_0
    //   345: ldc 155
    //   347: aastore
    //   348: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   351: astore 32
    //   353: iconst_1
    //   354: anewarray 4	java/lang/Object
    //   357: astore 33
    //   359: aload 33
    //   361: iconst_0
    //   362: new 155	java/lang/String
    //   365: dup
    //   366: ldc_w 482
    //   369: invokespecial 483	java/lang/String:<init>	(Ljava/lang/String;)V
    //   372: aastore
    //   373: aload 32
    //   375: aload 31
    //   377: aload 33
    //   379: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   382: checkcast 485	android/os/IBinder
    //   385: astore 34
    //   387: ldc_w 509
    //   390: invokestatic 52	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   393: astore 35
    //   395: aload 35
    //   397: invokevirtual 491	java/lang/Class:getClasses	()[Ljava/lang/Class;
    //   400: iconst_0
    //   401: aaload
    //   402: astore 36
    //   404: aload 36
    //   406: ldc_w 493
    //   409: iconst_1
    //   410: anewarray 48	java/lang/Class
    //   413: dup
    //   414: iconst_0
    //   415: ldc_w 485
    //   418: aastore
    //   419: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   422: aload 36
    //   424: iconst_1
    //   425: anewarray 4	java/lang/Object
    //   428: dup
    //   429: iconst_0
    //   430: aload 34
    //   432: aastore
    //   433: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   436: astore 37
    //   438: iconst_1
    //   439: anewarray 48	java/lang/Class
    //   442: dup
    //   443: iconst_0
    //   444: ldc 155
    //   446: aastore
    //   447: astore 38
    //   449: iconst_2
    //   450: anewarray 48	java/lang/Class
    //   453: astore 39
    //   455: aload 39
    //   457: iconst_0
    //   458: ldc 155
    //   460: aastore
    //   461: aload 39
    //   463: iconst_1
    //   464: getstatic 58	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   467: aastore
    //   468: aload 35
    //   470: ldc_w 511
    //   473: aload 39
    //   475: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   478: astore 40
    //   480: aload 35
    //   482: ldc_w 513
    //   485: aload 38
    //   487: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   490: astore 41
    //   492: iconst_2
    //   493: anewarray 4	java/lang/Object
    //   496: astore 42
    //   498: aload 42
    //   500: iconst_0
    //   501: invokestatic 502	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   504: invokevirtual 503	java/io/File:toString	()Ljava/lang/String;
    //   507: aastore
    //   508: aload 42
    //   510: iconst_1
    //   511: iconst_1
    //   512: invokestatic 62	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   515: aastore
    //   516: iconst_1
    //   517: anewarray 4	java/lang/Object
    //   520: astore 43
    //   522: aload 43
    //   524: iconst_0
    //   525: invokestatic 502	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   528: invokevirtual 503	java/io/File:toString	()Ljava/lang/String;
    //   531: aastore
    //   532: aload 40
    //   534: aload 37
    //   536: aload 42
    //   538: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   541: pop
    //   542: ldc2_w 85
    //   545: invokestatic 92	java/lang/Thread:sleep	(J)V
    //   548: aload 41
    //   550: aload 37
    //   552: aload 43
    //   554: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   557: astore 45
    //   559: aload 45
    //   561: ifnull +347 -> 908
    //   564: aload 45
    //   566: checkcast 40	java/lang/Integer
    //   569: invokevirtual 516	java/lang/Integer:intValue	()I
    //   572: ifne +336 -> 908
    //   575: iload_1
    //   576: istore 46
    //   578: goto +333 -> 911
    //   581: ldc_w 468
    //   584: invokestatic 52	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   587: astore 9
    //   589: aload 9
    //   591: invokevirtual 472	java/lang/Class:getConstructors	()[Ljava/lang/reflect/Constructor;
    //   594: astore 10
    //   596: iconst_0
    //   597: anewarray 4	java/lang/Object
    //   600: astore 11
    //   602: aload 10
    //   604: iconst_0
    //   605: aaload
    //   606: aload 11
    //   608: invokevirtual 478	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   611: astore 12
    //   613: aload 9
    //   615: ldc_w 480
    //   618: iconst_1
    //   619: anewarray 48	java/lang/Class
    //   622: dup
    //   623: iconst_0
    //   624: ldc 155
    //   626: aastore
    //   627: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   630: astore 13
    //   632: iconst_1
    //   633: anewarray 4	java/lang/Object
    //   636: astore 14
    //   638: aload 14
    //   640: iconst_0
    //   641: new 155	java/lang/String
    //   644: dup
    //   645: ldc_w 482
    //   648: invokespecial 483	java/lang/String:<init>	(Ljava/lang/String;)V
    //   651: aastore
    //   652: aload 13
    //   654: aload 12
    //   656: aload 14
    //   658: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   661: checkcast 485	android/os/IBinder
    //   664: astore 15
    //   666: ldc_w 509
    //   669: invokestatic 52	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   672: astore 16
    //   674: aload 16
    //   676: invokevirtual 491	java/lang/Class:getClasses	()[Ljava/lang/Class;
    //   679: iconst_0
    //   680: aaload
    //   681: astore 17
    //   683: aload 17
    //   685: ldc_w 493
    //   688: iconst_1
    //   689: anewarray 48	java/lang/Class
    //   692: dup
    //   693: iconst_0
    //   694: ldc_w 485
    //   697: aastore
    //   698: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   701: aload 17
    //   703: iconst_1
    //   704: anewarray 4	java/lang/Object
    //   707: dup
    //   708: iconst_0
    //   709: aload 15
    //   711: aastore
    //   712: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   715: astore 18
    //   717: iconst_1
    //   718: anewarray 48	java/lang/Class
    //   721: dup
    //   722: iconst_0
    //   723: ldc 155
    //   725: aastore
    //   726: astore 19
    //   728: iconst_3
    //   729: anewarray 48	java/lang/Class
    //   732: astore 20
    //   734: aload 20
    //   736: iconst_0
    //   737: ldc 155
    //   739: aastore
    //   740: aload 20
    //   742: iconst_1
    //   743: getstatic 58	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   746: aastore
    //   747: aload 20
    //   749: iconst_2
    //   750: getstatic 58	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   753: aastore
    //   754: aload 16
    //   756: ldc_w 511
    //   759: aload 20
    //   761: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   764: astore 21
    //   766: aload 16
    //   768: ldc_w 513
    //   771: aload 19
    //   773: invokevirtual 79	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   776: astore 22
    //   778: iconst_3
    //   779: anewarray 4	java/lang/Object
    //   782: astore 23
    //   784: aload 23
    //   786: iconst_0
    //   787: invokestatic 502	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   790: invokevirtual 503	java/io/File:toString	()Ljava/lang/String;
    //   793: aastore
    //   794: aload 23
    //   796: iconst_1
    //   797: iconst_1
    //   798: invokestatic 62	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   801: aastore
    //   802: aload 23
    //   804: iconst_2
    //   805: iconst_1
    //   806: invokestatic 62	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   809: aastore
    //   810: iconst_1
    //   811: anewarray 4	java/lang/Object
    //   814: astore 24
    //   816: aload 24
    //   818: iconst_0
    //   819: invokestatic 502	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   822: invokevirtual 503	java/io/File:toString	()Ljava/lang/String;
    //   825: aastore
    //   826: aload 21
    //   828: aload 18
    //   830: aload 23
    //   832: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   835: pop
    //   836: ldc2_w 85
    //   839: invokestatic 92	java/lang/Thread:sleep	(J)V
    //   842: aload 22
    //   844: aload 18
    //   846: aload 24
    //   848: invokevirtual 74	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   851: astore 26
    //   853: aload 26
    //   855: ifnull +18 -> 873
    //   858: aload 26
    //   860: checkcast 40	java/lang/Integer
    //   863: invokevirtual 516	java/lang/Integer:intValue	()I
    //   866: istore 27
    //   868: iload 27
    //   870: ifeq -650 -> 220
    //   873: iconst_0
    //   874: istore_1
    //   875: goto -655 -> 220
    //   878: astore_2
    //   879: aload_2
    //   880: invokestatic 113	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   883: goto -10 -> 873
    //   886: astore 7
    //   888: aload 7
    //   890: invokestatic 113	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   893: iload_1
    //   894: istore_3
    //   895: goto -656 -> 239
    //   898: astore 5
    //   900: aload 5
    //   902: invokestatic 113	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   905: goto -627 -> 278
    //   908: iconst_0
    //   909: istore 46
    //   911: iload 46
    //   913: istore_1
    //   914: goto -694 -> 220
    //
    // Exception table:
    //   from	to	target	type
    //   2	220	878	java/lang/Exception
    //   280	868	878	java/lang/Exception
    //   224	236	886	java/lang/Exception
    //   239	275	898	java/lang/Exception
  }

  public void i()
  {
    try
    {
      Settings.System.putInt(this.a.getContentResolver(), "lockscreen.lockedoutpermanently", 1);
      label15: return;
    }
    catch (Exception localException)
    {
      break label15;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.ak
 * JD-Core Version:    0.6.2
 */