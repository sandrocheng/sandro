package com.tencent.tmsecure.module.aresengine;

import a;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog.Calls;
import android.provider.Contacts.People;
import android.provider.ContactsContract.Contacts;
import android.provider.Telephony.Mms;
import android.provider.Telephony.Mms.Inbox;
import android.provider.Telephony.Mms.Sent;
import android.provider.Telephony.Sms;
import bud;
import bue;
import com.google.android.mms.MmsException;
import com.google.android.mms.pdu.EncodedStringValue;
import com.google.android.mms.pdu.GenericPdu;
import com.google.android.mms.pdu.NotificationInd;
import com.google.android.mms.pdu.PduPersister;
import com.google.android.mms.pdu.RetrieveConf;
import com.google.android.mms.pdu.SendReq;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

public final class DefaultSysDao extends AbsSysDao
{
  private static volatile DefaultSysDao a;
  private static final Uri b = Uri.parse("content://icc/adn");
  private e c;
  private ContentResolver d;
  private c e;
  private Context f;
  private int g;
  private int h;
  private final String[] i;
  private final String[] j;
  private final String[] k;

  private DefaultSysDao(Context paramContext)
  {
    String[] arrayOfString1 = new String[6];
    arrayOfString1[0] = "_id";
    arrayOfString1[m] = "number";
    arrayOfString1[2] = "name";
    arrayOfString1[3] = "type";
    arrayOfString1[4] = "duration";
    arrayOfString1[5] = "date";
    this.i = arrayOfString1;
    String[] arrayOfString2 = new String[7];
    arrayOfString2[0] = "_id";
    arrayOfString2[m] = "address";
    arrayOfString2[2] = "type";
    arrayOfString2[3] = "body";
    arrayOfString2[4] = "date";
    arrayOfString2[5] = "person";
    arrayOfString2[6] = "thread_id";
    this.j = arrayOfString2;
    String[] arrayOfString3 = new String[3];
    arrayOfString3[0] = "_id";
    arrayOfString3[m] = "date";
    arrayOfString3[2] = "read";
    this.k = arrayOfString3;
    this.f = paramContext;
    this.d = paramContext.getContentResolver();
    if (SDKUtil.getSDKVersion() >= 5)
      if (m == 0)
        break label191;
    label191: for (Object localObject = new b(); ; localObject = new a())
    {
      this.c = ((e)localObject);
      this.e = new c();
      return;
      m = 0;
      break;
    }
  }

  private boolean a(Uri paramUri, SmsEntity paramSmsEntity, String paramString)
  {
    boolean bool;
    if ((paramUri == null) || (paramSmsEntity == null))
      bool = false;
    label150: label154: 
    while (true)
    {
      return bool;
      Cursor localCursor = this.d.query(paramUri, this.k, paramString, null, "_id DESC");
      int m;
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        m = 1;
        label50: if (m == 0)
          break label150;
        paramSmsEntity.id = localCursor.getInt(0);
        paramSmsEntity.date = (1000L * localCursor.getLong(1));
        if (0L == paramSmsEntity.date)
          paramSmsEntity.date = System.currentTimeMillis();
        paramSmsEntity.read = localCursor.getInt(2);
      }
      for (bool = true; ; bool = false)
      {
        while (true)
        {
          if ((localCursor == null) || (localCursor.isClosed()))
            break label154;
          try
          {
            localCursor.close();
          }
          catch (Exception localException)
          {
          }
        }
        break;
        m = 0;
        break label50;
      }
    }
  }

  private boolean a(Uri paramUri, SmsEntity paramSmsEntity, boolean paramBoolean)
  {
    boolean bool;
    if ((paramUri == null) || (paramSmsEntity == null))
      bool = false;
    while (true)
    {
      return bool;
      PduPersister localPduPersister = PduPersister.getPduPersister(this.f);
      try
      {
        localGenericPdu = localPduPersister.load(paramUri);
        paramSmsEntity.mmsData = new MmsData();
        if (((localGenericPdu instanceof RetrieveConf)) || ((localGenericPdu instanceof SendReq)) || ((localGenericPdu instanceof NotificationInd)))
        {
          if ((localGenericPdu instanceof SendReq))
          {
            paramSmsEntity.mmsData.a((SendReq)localGenericPdu);
            if (paramSmsEntity.mmsData.mmsContentConfigHeader == null);
          }
          EncodedStringValue localEncodedStringValue;
          for (paramSmsEntity.phonenum = paramSmsEntity.mmsData.mmsContentConfigHeader.a(); ; paramSmsEntity.phonenum = localEncodedStringValue.getString())
          {
            paramSmsEntity.protocolType = 1;
            bool = true;
            if ((!bool) || (!paramBoolean))
              break;
            a(paramUri, paramSmsEntity, null);
            break;
            if (!(localGenericPdu instanceof RetrieveConf))
              break label195;
            paramSmsEntity.mmsData.a((RetrieveConf)localGenericPdu);
            localEncodedStringValue = localGenericPdu.getFrom();
            if (localEncodedStringValue == null)
              break label218;
          }
        }
      }
      catch (MmsException localMmsException)
      {
        while (true)
        {
          GenericPdu localGenericPdu;
          localMmsException.printStackTrace();
          bool = false;
          continue;
          label195: if ((localGenericPdu instanceof NotificationInd))
          {
            paramSmsEntity.mmsData.a((NotificationInd)localGenericPdu);
            continue;
            label218: paramSmsEntity.phonenum = "";
          }
        }
      }
    }
  }

  private static SmsEntity c(Cursor paramCursor)
  {
    SmsEntity localSmsEntity = new SmsEntity();
    localSmsEntity.id = paramCursor.getInt(0);
    localSmsEntity.phonenum = paramCursor.getString(1);
    localSmsEntity.type = paramCursor.getInt(2);
    localSmsEntity.body = paramCursor.getString(3);
    localSmsEntity.date = paramCursor.getLong(4);
    return localSmsEntity;
  }

  private static CallLogEntity d(Cursor paramCursor)
  {
    CallLogEntity localCallLogEntity = new CallLogEntity();
    localCallLogEntity.id = paramCursor.getInt(0);
    localCallLogEntity.phonenum = paramCursor.getString(1).replaceAll("[ -]+", "");
    localCallLogEntity.type = paramCursor.getInt(3);
    localCallLogEntity.duration = paramCursor.getLong(4);
    localCallLogEntity.date = paramCursor.getLong(5);
    return localCallLogEntity;
  }

  public static DefaultSysDao getInstance(Context paramContext)
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new DefaultSysDao(paramContext);
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean contains(String paramString)
  {
    new d((byte)0);
    c localc = this.e;
    boolean bool1 = a.j(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      int m = localc.a(a.k(paramString));
      bool2 = false;
      if (m != -1)
        bool2 = true;
    }
    return bool2;
  }

  public final List<CallLogEntity> getAllCallLog()
  {
    ArrayList localArrayList = new ArrayList();
    label143: label151: label155: 
    while (true)
    {
      Cursor localCursor;
      int m;
      synchronized (CallLog.Calls.CONTENT_URI)
      {
        localCursor = this.d.query(CallLog.Calls.CONTENT_URI, this.i, null, null, "date DESC");
        if ((localCursor == null) || (!localCursor.moveToFirst()))
          break label151;
        m = 1;
        break label143;
        if (localCursor.isAfterLast())
          if (localCursor != null)
          {
            boolean bool = localCursor.isClosed();
            if (bool);
          }
      }
      try
      {
        localCursor.close();
        label92: return localArrayList;
        if (a.j(localCursor.getString(1)))
          localArrayList.add(d(localCursor));
        localCursor.moveToNext();
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (Exception localException)
      {
        break label92;
      }
      while (true)
      {
        if (m == 0)
          break label155;
        break;
        m = 0;
      }
    }
  }

  public final List<ContactEntity> getAllContact()
  {
    try
    {
      List localList = this.c.b();
      localObject = localList;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        Object localObject = new ArrayList();
    }
  }

  public final CallLogEntity getLastCallLog()
  {
    try
    {
      synchronized (CallLog.Calls.CONTENT_URI)
      {
        Cursor localCursor2 = this.d.query(CallLog.Calls.CONTENT_URI, this.i, null, null, "_id DESC");
        localCursor1 = localCursor2;
        if (localCursor1 == null);
      }
    }
    catch (Exception localException1)
    {
      try
      {
        Cursor localCursor1;
        int m;
        CallLogEntity localCallLogEntity;
        if (localCursor1.moveToFirst())
        {
          m = 1;
          localObject1 = null;
          if (m != 0)
            localCallLogEntity = d(localCursor1);
        }
        for (localObject1 = localCallLogEntity; ; localObject1 = null)
        {
          while (true)
          {
            if (localCursor1 != null)
            {
              boolean bool = localCursor1.isClosed();
              if (bool);
            }
            try
            {
              localCursor1.close();
              label86: if (localObject1 != null)
                if (localObject1.phonenum.length() != 1)
                  break label133;
              label133: for (String str = "null"; ; str = localObject1.phonenum)
              {
                localObject1.phonenum = str;
                return localObject1;
                m = 0;
                break;
                localObject2 = finally;
                throw localObject2;
              }
            }
            catch (Exception localException2)
            {
              break label86;
            }
          }
          localException1 = localException1;
          localCursor1 = null;
        }
      }
      catch (Exception localException3)
      {
        while (true)
          Object localObject1 = null;
      }
    }
  }

  public final SmsEntity getLastInBoxMms(int paramInt1, int paramInt2)
  {
    SmsEntity localSmsEntity1 = new SmsEntity();
    SmsEntity localSmsEntity2;
    while (true)
    {
      synchronized (Telephony.Mms.CONTENT_URI)
      {
        String str = "read=" + paramInt2;
        if (!a(Telephony.Mms.Inbox.CONTENT_URI, localSmsEntity1, str))
          break label141;
        long l = System.currentTimeMillis() - localSmsEntity1.date;
        if ((paramInt1 >= 0) && (l > paramInt1 * 1000))
        {
          localSmsEntity2 = null;
          break;
        }
        boolean bool = a(ContentUris.withAppendedId(Telephony.Mms.Inbox.CONTENT_URI, localSmsEntity1.id), localSmsEntity1, false);
        localSmsEntity2 = null;
        if (!bool)
          if (localSmsEntity2 != null)
            localSmsEntity2.type = 1;
      }
      localSmsEntity2 = localSmsEntity1;
      continue;
      label141: localSmsEntity2 = localSmsEntity1;
    }
    return localSmsEntity2;
  }

  public final SmsEntity getLastInBoxSms(int paramInt1, int paramInt2)
  {
    while (true)
    {
      Cursor localCursor;
      int m;
      synchronized (Telephony.Sms.CONTENT_URI)
      {
        String str = "type=1 AND read=" + paramInt2;
        localCursor = this.d.query(Telephony.Sms.CONTENT_URI, this.j, str, null, "_id DESC");
        if ((localCursor != null) && (localCursor.moveToFirst()))
        {
          m = 1;
          if (m == 0)
            break label162;
          localSmsEntity = c(localCursor);
          long l = System.currentTimeMillis() - localSmsEntity.date;
          if ((paramInt1 >= 0) && ((l > paramInt1 * 1000) || (l < 0L)))
            break label168;
          if (localCursor != null)
          {
            boolean bool = localCursor.isClosed();
            if (bool);
          }
        }
      }
      try
      {
        localCursor.close();
        label139: return localSmsEntity;
        m = 0;
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (Exception localException)
      {
        break label139;
      }
      label162: SmsEntity localSmsEntity = null;
      continue;
      label168: localSmsEntity = null;
    }
  }

  public final SmsEntity getLastOutBoxMms(int paramInt)
  {
    return getLastSentMms(paramInt);
  }

  public final SmsEntity getLastOutBoxSms(int paramInt)
  {
    return getLastSentSms(paramInt);
  }

  public final SmsEntity getLastSentMms(int paramInt)
  {
    SmsEntity localSmsEntity1 = new SmsEntity();
    SmsEntity localSmsEntity2;
    while (true)
    {
      synchronized (Telephony.Mms.CONTENT_URI)
      {
        if (!a(Telephony.Mms.Sent.CONTENT_URI, localSmsEntity1, null))
          break label145;
        if ((paramInt > 0) && (localSmsEntity1.date + paramInt * 1000 < System.currentTimeMillis()) && ((paramInt > 10) || (this.g >= localSmsEntity1.id)))
        {
          this.g = localSmsEntity1.id;
          localSmsEntity2 = null;
          break;
        }
        this.g = localSmsEntity1.id;
        boolean bool = a(ContentUris.withAppendedId(Telephony.Mms.Sent.CONTENT_URI, localSmsEntity1.id), localSmsEntity1, false);
        localSmsEntity2 = null;
        if (!bool)
          if (localSmsEntity2 != null)
            localSmsEntity2.type = 2;
      }
      localSmsEntity2 = localSmsEntity1;
      continue;
      label145: localSmsEntity2 = localSmsEntity1;
    }
    return localSmsEntity2;
  }

  // ERROR //
  public final SmsEntity getLastSentSms(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 341	android/provider/Telephony$Sms:CONTENT_URI	Landroid/net/Uri;
    //   5: astore_3
    //   6: aload_3
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield 79	com/tencent/tmsecure/module/aresengine/DefaultSysDao:d	Landroid/content/ContentResolver;
    //   12: getstatic 341	android/provider/Telephony$Sms:CONTENT_URI	Landroid/net/Uri;
    //   15: aload_0
    //   16: getfield 65	com/tencent/tmsecure/module/aresengine/DefaultSysDao:j	[Ljava/lang/String;
    //   19: ldc_w 361
    //   22: aconst_null
    //   23: ldc 113
    //   25: invokevirtual 119	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore 7
    //   30: aconst_null
    //   31: astore_2
    //   32: aload 7
    //   34: ifnull +88 -> 122
    //   37: aload 7
    //   39: invokeinterface 108 1 0
    //   44: ifeq +78 -> 122
    //   47: iconst_1
    //   48: istore 8
    //   50: aconst_null
    //   51: astore_2
    //   52: iload 8
    //   54: ifeq +86 -> 140
    //   57: aload 7
    //   59: invokestatic 345	com/tencent/tmsecure/module/aresengine/DefaultSysDao:c	(Landroid/database/Cursor;)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
    //   62: astore 11
    //   64: iload_1
    //   65: ifle +63 -> 128
    //   68: aload 11
    //   70: getfield 137	com/tencent/tmsecure/module/aresengine/SmsEntity:date	J
    //   73: iload_1
    //   74: sipush 1000
    //   77: imul
    //   78: i2l
    //   79: ladd
    //   80: invokestatic 143	java/lang/System:currentTimeMillis	()J
    //   83: lcmp
    //   84: ifge +44 -> 128
    //   87: iload_1
    //   88: bipush 10
    //   90: if_icmpgt +15 -> 105
    //   93: aload_0
    //   94: getfield 363	com/tencent/tmsecure/module/aresengine/DefaultSysDao:h	I
    //   97: aload 11
    //   99: getfield 128	com/tencent/tmsecure/module/aresengine/SmsEntity:id	I
    //   102: if_icmplt +26 -> 128
    //   105: aload_0
    //   106: aload 11
    //   108: getfield 128	com/tencent/tmsecure/module/aresengine/SmsEntity:id	I
    //   111: putfield 363	com/tencent/tmsecure/module/aresengine/DefaultSysDao:h	I
    //   114: aload_3
    //   115: monitorexit
    //   116: aconst_null
    //   117: astore 5
    //   119: aload 5
    //   121: areturn
    //   122: iconst_0
    //   123: istore 8
    //   125: goto -75 -> 50
    //   128: aload_0
    //   129: aload 11
    //   131: getfield 128	com/tencent/tmsecure/module/aresengine/SmsEntity:id	I
    //   134: putfield 363	com/tencent/tmsecure/module/aresengine/DefaultSysDao:h	I
    //   137: aload 11
    //   139: astore_2
    //   140: aload 7
    //   142: ifnull +41 -> 183
    //   145: aload 7
    //   147: invokeinterface 148 1 0
    //   152: istore 9
    //   154: iload 9
    //   156: ifne +27 -> 183
    //   159: aload 7
    //   161: invokeinterface 151 1 0
    //   166: aload_2
    //   167: astore 5
    //   169: aload_3
    //   170: monitorexit
    //   171: goto -52 -> 119
    //   174: astore 6
    //   176: aload_3
    //   177: monitorexit
    //   178: aload 6
    //   180: athrow
    //   181: astore 10
    //   183: aload_2
    //   184: astore 5
    //   186: goto -17 -> 169
    //   189: astore 4
    //   191: aload 4
    //   193: invokevirtual 364	java/lang/Exception:printStackTrace	()V
    //   196: aload_2
    //   197: astore 5
    //   199: goto -30 -> 169
    //   202: astore 4
    //   204: aload 11
    //   206: astore_2
    //   207: goto -16 -> 191
    //
    // Exception table:
    //   from	to	target	type
    //   8	64	174	finally
    //   68	114	174	finally
    //   114	116	174	finally
    //   128	137	174	finally
    //   145	154	174	finally
    //   159	166	174	finally
    //   169	171	174	finally
    //   191	196	174	finally
    //   159	166	181	java/lang/Exception
    //   8	64	189	java/lang/Exception
    //   145	154	189	java/lang/Exception
    //   68	114	202	java/lang/Exception
    //   128	137	202	java/lang/Exception
  }

  public final SmsEntity getMms(int paramInt1, int paramInt2)
  {
    Uri localUri = ContentUris.withAppendedId(Telephony.Mms.Inbox.CONTENT_URI, paramInt1);
    if (paramInt2 == 2)
      localUri = ContentUris.withAppendedId(Telephony.Mms.Sent.CONTENT_URI, paramInt1);
    SmsEntity localSmsEntity1 = new SmsEntity();
    if (!a(localUri, localSmsEntity1, true));
    for (SmsEntity localSmsEntity2 = null; ; localSmsEntity2 = localSmsEntity1)
      return localSmsEntity2;
  }

  // ERROR //
  public final List<ContactEntity> getSimContact()
  {
    // Byte code:
    //   0: iconst_3
    //   1: anewarray 41	java/lang/String
    //   4: dup
    //   5: iconst_0
    //   6: ldc 43
    //   8: aastore
    //   9: dup
    //   10: iconst_1
    //   11: ldc 47
    //   13: aastore
    //   14: dup
    //   15: iconst_2
    //   16: ldc 45
    //   18: aastore
    //   19: astore_1
    //   20: new 273	java/util/ArrayList
    //   23: dup
    //   24: invokespecial 274	java/util/ArrayList:<init>	()V
    //   27: astore_2
    //   28: getstatic 35	com/tencent/tmsecure/module/aresengine/DefaultSysDao:b	Landroid/net/Uri;
    //   31: astore_3
    //   32: aload_3
    //   33: monitorenter
    //   34: aload_0
    //   35: getfield 79	com/tencent/tmsecure/module/aresengine/DefaultSysDao:d	Landroid/content/ContentResolver;
    //   38: getstatic 35	com/tencent/tmsecure/module/aresengine/DefaultSysDao:b	Landroid/net/Uri;
    //   41: aload_1
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: invokevirtual 119	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 7
    //   50: aload 7
    //   52: ifnull +34 -> 86
    //   55: aload 7
    //   57: ifnull +207 -> 264
    //   60: aload 7
    //   62: invokeinterface 108 1 0
    //   67: ifeq +197 -> 264
    //   70: iconst_1
    //   71: istore 10
    //   73: goto +180 -> 253
    //   76: aload 7
    //   78: invokeinterface 284 1 0
    //   83: ifeq +52 -> 135
    //   86: aload 7
    //   88: ifnull +24 -> 112
    //   91: aload 7
    //   93: invokeinterface 148 1 0
    //   98: istore 8
    //   100: iload 8
    //   102: ifne +10 -> 112
    //   105: aload 7
    //   107: invokeinterface 151 1 0
    //   112: aload_3
    //   113: monitorexit
    //   114: aload_2
    //   115: astore 6
    //   117: goto +144 -> 261
    //   120: astore 5
    //   122: aload 5
    //   124: invokevirtual 364	java/lang/Exception:printStackTrace	()V
    //   127: aload_3
    //   128: monitorexit
    //   129: aload_2
    //   130: astore 6
    //   132: goto +129 -> 261
    //   135: new 368	com/tencent/tmsecure/module/aresengine/ContactEntity
    //   138: dup
    //   139: invokespecial 369	com/tencent/tmsecure/module/aresengine/ContactEntity:<init>	()V
    //   142: astore 11
    //   144: aload 11
    //   146: aload 7
    //   148: aload 7
    //   150: ldc 43
    //   152: invokeinterface 372 2 0
    //   157: invokeinterface 123 2 0
    //   162: putfield 373	com/tencent/tmsecure/module/aresengine/ContactEntity:id	I
    //   165: aload 11
    //   167: aload 7
    //   169: aload 7
    //   171: ldc 47
    //   173: invokeinterface 372 2 0
    //   178: invokeinterface 228 2 0
    //   183: putfield 375	com/tencent/tmsecure/module/aresengine/ContactEntity:name	Ljava/lang/String;
    //   186: aload 11
    //   188: aload 7
    //   190: aload 7
    //   192: ldc 45
    //   194: invokeinterface 372 2 0
    //   199: invokeinterface 228 2 0
    //   204: putfield 376	com/tencent/tmsecure/module/aresengine/ContactEntity:phonenum	Ljava/lang/String;
    //   207: aload 11
    //   209: iconst_1
    //   210: putfield 380	com/tencent/tmsecure/module/aresengine/ContactEntity:isSimContact	Z
    //   213: aload 11
    //   215: getfield 376	com/tencent/tmsecure/module/aresengine/ContactEntity:phonenum	Ljava/lang/String;
    //   218: ifnull +12 -> 230
    //   221: aload_2
    //   222: aload 11
    //   224: invokeinterface 292 2 0
    //   229: pop
    //   230: aload 7
    //   232: invokeinterface 295 1 0
    //   237: pop
    //   238: goto -162 -> 76
    //   241: astore 4
    //   243: aload_3
    //   244: monitorexit
    //   245: aload 4
    //   247: athrow
    //   248: astore 9
    //   250: goto -138 -> 112
    //   253: iload 10
    //   255: ifeq -169 -> 86
    //   258: goto -182 -> 76
    //   261: aload 6
    //   263: areturn
    //   264: iconst_0
    //   265: istore 10
    //   267: goto -14 -> 253
    //
    // Exception table:
    //   from	to	target	type
    //   34	50	120	java/lang/Exception
    //   34	50	241	finally
    //   60	100	241	finally
    //   105	112	241	finally
    //   112	238	241	finally
    //   105	112	248	java/lang/Exception
  }

  // ERROR //
  public final Uri insert(SmsEntity paramSmsEntity)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 196	com/tencent/tmsecure/module/aresengine/SmsEntity:protocolType	I
    //   4: ifeq +11 -> 15
    //   7: aload_1
    //   8: getfield 196	com/tencent/tmsecure/module/aresengine/SmsEntity:protocolType	I
    //   11: iconst_2
    //   12: if_icmpne +101 -> 113
    //   15: new 384	android/content/ContentValues
    //   18: dup
    //   19: invokespecial 385	android/content/ContentValues:<init>	()V
    //   22: astore_2
    //   23: aload_2
    //   24: ldc 57
    //   26: aload_1
    //   27: getfield 193	com/tencent/tmsecure/module/aresengine/SmsEntity:phonenum	Ljava/lang/String;
    //   30: invokevirtual 389	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload_2
    //   34: ldc 59
    //   36: aload_1
    //   37: getfield 232	com/tencent/tmsecure/module/aresengine/SmsEntity:body	Ljava/lang/String;
    //   40: invokevirtual 389	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_2
    //   44: ldc 53
    //   46: aload_1
    //   47: getfield 137	com/tencent/tmsecure/module/aresengine/SmsEntity:date	J
    //   50: invokestatic 395	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   53: invokevirtual 398	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   56: aload_2
    //   57: ldc 67
    //   59: aload_1
    //   60: getfield 145	com/tencent/tmsecure/module/aresengine/SmsEntity:read	I
    //   63: invokestatic 403	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   66: invokevirtual 406	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   69: aload_2
    //   70: ldc 49
    //   72: aload_1
    //   73: getfield 230	com/tencent/tmsecure/module/aresengine/SmsEntity:type	I
    //   76: invokestatic 403	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   79: invokevirtual 406	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   82: getstatic 341	android/provider/Telephony$Sms:CONTENT_URI	Landroid/net/Uri;
    //   85: astore_3
    //   86: aload_3
    //   87: monitorenter
    //   88: aload_0
    //   89: getfield 79	com/tencent/tmsecure/module/aresengine/DefaultSysDao:d	Landroid/content/ContentResolver;
    //   92: getstatic 341	android/provider/Telephony$Sms:CONTENT_URI	Landroid/net/Uri;
    //   95: aload_2
    //   96: invokevirtual 409	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   99: astore 5
    //   101: aload_3
    //   102: monitorexit
    //   103: aload 5
    //   105: areturn
    //   106: astore 4
    //   108: aload_3
    //   109: monitorexit
    //   110: aload 4
    //   112: athrow
    //   113: aload_1
    //   114: getfield 196	com/tencent/tmsecure/module/aresengine/SmsEntity:protocolType	I
    //   117: istore 6
    //   119: aconst_null
    //   120: astore 5
    //   122: iload 6
    //   124: iconst_1
    //   125: if_icmpne -22 -> 103
    //   128: aload_1
    //   129: getfield 171	com/tencent/tmsecure/module/aresengine/SmsEntity:mmsData	Lcom/tencent/tmsecure/module/aresengine/MmsData;
    //   132: astore 7
    //   134: aconst_null
    //   135: astore 5
    //   137: aload 7
    //   139: ifnull -36 -> 103
    //   142: aload_1
    //   143: invokevirtual 412	com/tencent/tmsecure/module/aresengine/SmsEntity:d	()Lcom/google/android/mms/pdu/GenericPdu;
    //   146: astore 9
    //   148: aconst_null
    //   149: astore 5
    //   151: aload 9
    //   153: ifnull -50 -> 103
    //   156: aload_0
    //   157: getfield 71	com/tencent/tmsecure/module/aresengine/DefaultSysDao:f	Landroid/content/Context;
    //   160: invokestatic 160	com/google/android/mms/pdu/PduPersister:getPduPersister	(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    //   163: astore 10
    //   165: getstatic 312	android/provider/Telephony$Mms:CONTENT_URI	Landroid/net/Uri;
    //   168: astore 11
    //   170: aload 11
    //   172: monitorenter
    //   173: aload_1
    //   174: getfield 230	com/tencent/tmsecure/module/aresengine/SmsEntity:type	I
    //   177: istore 14
    //   179: aconst_null
    //   180: astore 5
    //   182: iload 14
    //   184: iconst_1
    //   185: if_icmpne +74 -> 259
    //   188: getstatic 329	android/provider/Telephony$Mms$Inbox:CONTENT_URI	Landroid/net/Uri;
    //   191: astore 15
    //   193: invokestatic 85	com/tencent/tmsecure/utils/SDKUtil:getSDKVersion	()I
    //   196: istore 16
    //   198: aconst_null
    //   199: astore 5
    //   201: iload 16
    //   203: bipush 17
    //   205: if_icmpge +65 -> 270
    //   208: aconst_null
    //   209: astore 5
    //   211: aload 10
    //   213: ifnull +91 -> 304
    //   216: aload 10
    //   218: aload 9
    //   220: aload 15
    //   222: invokevirtual 416	com/google/android/mms/pdu/PduPersister:persist	(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    //   225: astore 18
    //   227: aload 18
    //   229: astore 17
    //   231: aload 17
    //   233: astore 5
    //   235: aload 11
    //   237: monitorexit
    //   238: goto -135 -> 103
    //   241: astore 13
    //   243: aload 11
    //   245: monitorexit
    //   246: aload 13
    //   248: athrow
    //   249: astore 8
    //   251: aload 8
    //   253: invokevirtual 364	java/lang/Exception:printStackTrace	()V
    //   256: goto -153 -> 103
    //   259: getstatic 357	android/provider/Telephony$Mms$Sent:CONTENT_URI	Landroid/net/Uri;
    //   262: astore 15
    //   264: aconst_null
    //   265: astore 5
    //   267: goto -74 -> 193
    //   270: aload 10
    //   272: aload 9
    //   274: aload 15
    //   276: iconst_1
    //   277: iconst_1
    //   278: aconst_null
    //   279: invokevirtual 419	com/google/android/mms/pdu/PduPersister:persist	(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    //   282: astore 19
    //   284: aload 19
    //   286: astore 5
    //   288: goto -53 -> 235
    //   291: astore 12
    //   293: aload 12
    //   295: invokevirtual 215	com/google/android/mms/MmsException:printStackTrace	()V
    //   298: aconst_null
    //   299: astore 5
    //   301: goto -66 -> 235
    //   304: aconst_null
    //   305: astore 17
    //   307: goto -76 -> 231
    //
    // Exception table:
    //   from	to	target	type
    //   88	103	106	finally
    //   173	227	241	finally
    //   235	238	241	finally
    //   259	284	241	finally
    //   293	298	241	finally
    //   142	173	249	java/lang/Exception
    //   243	249	249	java/lang/Exception
    //   173	227	291	com/google/android/mms/MmsException
    //   259	284	291	com/google/android/mms/MmsException
  }

  public final boolean remove(CallLogEntity paramCallLogEntity)
  {
    synchronized (CallLog.Calls.CONTENT_URI)
    {
      if (this.d.delete(CallLog.Calls.CONTENT_URI, "_id=" + paramCallLogEntity.id, null) > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }

  public final boolean remove(SmsEntity paramSmsEntity)
  {
    int m = 1;
    ??? = Telephony.Sms.CONTENT_URI;
    if (paramSmsEntity.protocolType == m);
    synchronized (Telephony.Mms.CONTENT_URI)
    {
      if (this.d.delete(???, "_id=" + paramSmsEntity.id, null) > 0)
        return m;
      int n = 0;
    }
  }

  public final boolean supportThisPhone()
  {
    return false;
  }

  final class a
    implements DefaultSysDao.e
  {
    private final Uri a = Contacts.People.CONTENT_URI;

    a()
    {
    }

    public final Uri a()
    {
      return this.a;
    }

    public final List<ContactEntity> b()
    {
      ArrayList localArrayList = new ArrayList();
      String[] arrayOfString = { "_id", "number", "display_name" };
      Cursor localCursor = DefaultSysDao.a(DefaultSysDao.this).query(this.a, arrayOfString, null, null, "name asc");
      if (DefaultSysDao.a(localCursor));
      try
      {
        while (true)
        {
          boolean bool = localCursor.isAfterLast();
          if (bool)
          {
            DefaultSysDao.b(localCursor);
            return localArrayList;
          }
          String str = localCursor.getString(1);
          if (a.j(str))
          {
            ContactEntity localContactEntity = new ContactEntity();
            localContactEntity.id = localCursor.getInt(0);
            localContactEntity.phonenum = str.replaceAll("[ -]+", "");
            localContactEntity.name = localCursor.getString(2);
            localArrayList.add(localContactEntity);
          }
          localCursor.moveToNext();
        }
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  final class b
    implements DefaultSysDao.e
  {
    private Uri a = ContactsContract.Contacts.CONTENT_URI;

    b()
    {
    }

    public final Uri a()
    {
      return this.a;
    }

    // ERROR //
    public final List<ContactEntity> b()
    {
      // Byte code:
      //   0: new 30	java/util/HashMap
      //   3: dup
      //   4: invokespecial 31	java/util/HashMap:<init>	()V
      //   7: astore_1
      //   8: new 30	java/util/HashMap
      //   11: dup
      //   12: invokespecial 31	java/util/HashMap:<init>	()V
      //   15: astore_2
      //   16: new 33	java/util/ArrayList
      //   19: dup
      //   20: invokespecial 34	java/util/ArrayList:<init>	()V
      //   23: astore_3
      //   24: aload_0
      //   25: getfield 24	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:a	Landroid/net/Uri;
      //   28: astore 4
      //   30: aload 4
      //   32: monitorenter
      //   33: aload_0
      //   34: getfield 14	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:b	Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
      //   37: invokestatic 39	com/tencent/tmsecure/module/aresengine/DefaultSysDao:a	(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;
      //   40: aload_0
      //   41: getfield 24	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:a	Landroid/net/Uri;
      //   44: aconst_null
      //   45: ldc 41
      //   47: aconst_null
      //   48: aconst_null
      //   49: invokevirtual 47	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   52: astore 6
      //   54: aload_0
      //   55: getfield 14	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:b	Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
      //   58: pop
      //   59: aload 6
      //   61: invokestatic 50	com/tencent/tmsecure/module/aresengine/DefaultSysDao:a	(Landroid/database/Cursor;)Z
      //   64: ifeq +39 -> 103
      //   67: aload 6
      //   69: ldc 52
      //   71: invokeinterface 58 2 0
      //   76: istore 27
      //   78: aload 6
      //   80: ldc 60
      //   82: invokeinterface 58 2 0
      //   87: istore 28
      //   89: aload 6
      //   91: invokeinterface 64 1 0
      //   96: istore 30
      //   98: iload 30
      //   100: ifeq +128 -> 228
      //   103: aload_0
      //   104: getfield 14	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:b	Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
      //   107: pop
      //   108: aload 6
      //   110: invokestatic 67	com/tencent/tmsecure/module/aresengine/DefaultSysDao:b	(Landroid/database/Cursor;)V
      //   113: aload 4
      //   115: monitorexit
      //   116: getstatic 70	android/provider/ContactsContract$CommonDataKinds$Phone:CONTENT_URI	Landroid/net/Uri;
      //   119: astore 9
      //   121: aload 9
      //   123: monitorenter
      //   124: aload_0
      //   125: getfield 14	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:b	Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
      //   128: invokestatic 39	com/tencent/tmsecure/module/aresengine/DefaultSysDao:a	(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;
      //   131: getstatic 70	android/provider/ContactsContract$CommonDataKinds$Phone:CONTENT_URI	Landroid/net/Uri;
      //   134: aconst_null
      //   135: aconst_null
      //   136: aconst_null
      //   137: aconst_null
      //   138: invokevirtual 47	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   141: astore 11
      //   143: aload_0
      //   144: getfield 14	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:b	Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
      //   147: pop
      //   148: aload 11
      //   150: invokestatic 50	com/tencent/tmsecure/module/aresengine/DefaultSysDao:a	(Landroid/database/Cursor;)Z
      //   153: ifeq +39 -> 192
      //   156: aload 11
      //   158: ldc 72
      //   160: invokeinterface 58 2 0
      //   165: istore 21
      //   167: aload 11
      //   169: ldc 74
      //   171: invokeinterface 58 2 0
      //   176: istore 22
      //   178: aload 11
      //   180: invokeinterface 64 1 0
      //   185: istore 24
      //   187: iload 24
      //   189: ifeq +94 -> 283
      //   192: aload_0
      //   193: getfield 14	com/tencent/tmsecure/module/aresengine/DefaultSysDao$b:b	Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
      //   196: pop
      //   197: aload 11
      //   199: invokestatic 67	com/tencent/tmsecure/module/aresengine/DefaultSysDao:b	(Landroid/database/Cursor;)V
      //   202: aload 9
      //   204: monitorexit
      //   205: aload_2
      //   206: invokevirtual 78	java/util/HashMap:entrySet	()Ljava/util/Set;
      //   209: invokeinterface 84 1 0
      //   214: astore 14
      //   216: aload 14
      //   218: invokeinterface 89 1 0
      //   223: ifne +115 -> 338
      //   226: aload_3
      //   227: areturn
      //   228: aload_1
      //   229: aload 6
      //   231: iload 27
      //   233: invokeinterface 93 2 0
      //   238: invokestatic 99	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   241: aload 6
      //   243: iload 28
      //   245: invokeinterface 103 2 0
      //   250: invokevirtual 107	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   253: pop
      //   254: aload 6
      //   256: invokeinterface 110 1 0
      //   261: pop
      //   262: goto -173 -> 89
      //   265: astore 29
      //   267: aload 29
      //   269: invokevirtual 113	java/lang/Exception:printStackTrace	()V
      //   272: goto -169 -> 103
      //   275: astore 5
      //   277: aload 4
      //   279: monitorexit
      //   280: aload 5
      //   282: athrow
      //   283: aload_2
      //   284: aload 11
      //   286: iload 21
      //   288: invokeinterface 103 2 0
      //   293: aload 11
      //   295: iload 22
      //   297: invokeinterface 93 2 0
      //   302: invokestatic 99	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   305: invokevirtual 107	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
      //   308: pop
      //   309: aload 11
      //   311: invokeinterface 110 1 0
      //   316: pop
      //   317: goto -139 -> 178
      //   320: astore 23
      //   322: aload 23
      //   324: invokevirtual 113	java/lang/Exception:printStackTrace	()V
      //   327: goto -135 -> 192
      //   330: astore 10
      //   332: aload 9
      //   334: monitorexit
      //   335: aload 10
      //   337: athrow
      //   338: aload 14
      //   340: invokeinterface 117 1 0
      //   345: checkcast 119	java/util/Map$Entry
      //   348: astore 15
      //   350: aload 15
      //   352: invokeinterface 122 1 0
      //   357: checkcast 124	java/lang/String
      //   360: astore 16
      //   362: aload 15
      //   364: invokeinterface 127 1 0
      //   369: checkcast 95	java/lang/Integer
      //   372: invokevirtual 131	java/lang/Integer:intValue	()I
      //   375: istore 17
      //   377: aload_1
      //   378: iload 17
      //   380: invokestatic 99	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   383: invokevirtual 135	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
      //   386: checkcast 124	java/lang/String
      //   389: astore 18
      //   391: aload 16
      //   393: invokestatic 140	a:j	(Ljava/lang/String;)Z
      //   396: ifeq -180 -> 216
      //   399: aload 16
      //   401: ifnull -185 -> 216
      //   404: aload 16
      //   406: invokevirtual 144	java/lang/String:trim	()Ljava/lang/String;
      //   409: invokevirtual 147	java/lang/String:length	()I
      //   412: ifle -196 -> 216
      //   415: new 149	com/tencent/tmsecure/module/aresengine/ContactEntity
      //   418: dup
      //   419: invokespecial 150	com/tencent/tmsecure/module/aresengine/ContactEntity:<init>	()V
      //   422: astore 19
      //   424: aload 19
      //   426: iload 17
      //   428: putfield 154	com/tencent/tmsecure/module/aresengine/ContactEntity:id	I
      //   431: aload 19
      //   433: aload 18
      //   435: putfield 158	com/tencent/tmsecure/module/aresengine/ContactEntity:name	Ljava/lang/String;
      //   438: aload 19
      //   440: aload 16
      //   442: ldc 160
      //   444: ldc 162
      //   446: invokevirtual 166	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
      //   449: putfield 169	com/tencent/tmsecure/module/aresengine/ContactEntity:phonenum	Ljava/lang/String;
      //   452: aload_3
      //   453: aload 19
      //   455: invokeinterface 175 2 0
      //   460: pop
      //   461: goto -245 -> 216
      //
      // Exception table:
      //   from	to	target	type
      //   89	98	265	java/lang/Exception
      //   228	262	265	java/lang/Exception
      //   33	89	275	finally
      //   89	98	275	finally
      //   103	116	275	finally
      //   228	262	275	finally
      //   267	272	275	finally
      //   178	187	320	java/lang/Exception
      //   283	317	320	java/lang/Exception
      //   124	178	330	finally
      //   178	187	330	finally
      //   192	205	330	finally
      //   283	317	330	finally
      //   322	327	330	finally
    }
  }

  public final class c
  {
    public byte[] a = new byte[0];
    public DefaultSysDao.d[] b = new DefaultSysDao.d[0];
    public ContentObserver c;
    public boolean d = false;
    public int e = 0;
    public Runnable f = new bud(this);

    public c()
    {
      Timer localTimer = new Timer();
      localTimer.schedule(new bue(this, localTimer), 20000L);
    }

    final int a(int paramInt)
    {
      while (true)
      {
        int i;
        int j;
        synchronized (this.a)
        {
          i = -1 + this.b.length;
          j = 0;
          continue;
          return k;
          k = (i + j) / 2;
          int m = this.b[k].a;
          if (paramInt == m)
            continue;
          if (paramInt > m)
            j = k + 1;
          else
            i = k - 1;
        }
        int k = -1;
      }
    }

    public final boolean a()
    {
      synchronized (this.a)
      {
        boolean bool = this.d;
        return bool;
      }
    }

    protected final void finalize()
      throws Throwable
    {
      if (this.c != null)
        DefaultSysDao.a(DefaultSysDao.this).unregisterContentObserver(this.c);
      super.finalize();
    }
  }

  public static final class d
  {
    public int a;
  }

  public static abstract interface e
  {
    public abstract Uri a();

    public abstract List<ContactEntity> b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.DefaultSysDao
 * JD-Core Version:    0.6.2
 */