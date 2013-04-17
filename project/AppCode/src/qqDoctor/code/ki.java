import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.Contacts.People;
import android.provider.Contacts.Phones;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.module.aresengine.AbsSysDao;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.tools.ISingleton;
import com.tencent.tmsecure.utils.SDKUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ki extends AbsSysDao
  implements ISingleton
{
  private Context a = QQPimApplication.a();
  private ContentResolver b = this.a.getContentResolver();
  private ki.c c;
  private AbsSysDao d;

  public ki()
  {
    if (SDKUtil.getSDKVersion() < 5);
    for (Object localObject = new ki.a((byte)0); ; localObject = new ki.b((byte)0))
    {
      this.c = ((ki.c)localObject);
      this.d = DefaultSysDao.getInstance(this.a);
      return;
    }
  }

  public static String a(String paramString)
  {
    hp localhp = f.c();
    localhp.b();
    return localhp.a.a(paramString);
  }

  private int e(String paramString)
  {
    int i = -1;
    Cursor localCursor1 = this.b.query(Uri.parse("content://mms-sms/canonical-addresses"), null, "address" + fu.g(paramString), null, null);
    int k;
    if (localCursor1 != null)
      if (localCursor1.moveToFirst())
      {
        k = localCursor1.getInt(localCursor1.getColumnIndexOrThrow("_id"));
        localCursor1.close();
      }
    for (int j = k; ; j = i)
    {
      new StringBuilder("recipientId: ").append(j).toString();
      if (j == i);
      while (true)
      {
        return i;
        Cursor localCursor2 = this.b.query(Uri.parse("content://mms-sms/conversations?simple=true"), null, "recipient_ids =" + j, null, null);
        if (localCursor2 != null)
        {
          if (localCursor2.moveToFirst())
            i = localCursor2.getInt(localCursor2.getColumnIndexOrThrow("_id"));
          localCursor2.close();
        }
        new StringBuilder("threadId: ").append(i).toString();
      }
      k = i;
      break;
    }
  }

  public final int a(int paramInt)
  {
    String str = "_id = " + paramInt;
    return this.b.delete(gu.b, str, null);
  }

  public final SmsEntity a(int paramInt1, int paramInt2)
  {
    try
    {
      Uri localUri = Uri.parse("content://sms");
      long l = System.currentTimeMillis();
      String str = "type=" + paramInt2 + " and date>" + (l - paramInt1 * 1000) + " and date<" + (l + paramInt1 * 1000);
      localCursor = this.b.query(localUri, new String[] { "_id", "address", "type", "body", "date", "person", "thread_id" }, str, null, "_id DESC");
      if (localCursor != null)
        if (localCursor.moveToFirst())
        {
          localSmsEntity = new SmsEntity();
          localSmsEntity.id = localCursor.getInt(0);
          localSmsEntity.phonenum = localCursor.getString(1);
          localSmsEntity.type = localCursor.getInt(2);
          localSmsEntity.body = localCursor.getString(3);
          localSmsEntity.date = localCursor.getLong(4);
        }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        try
        {
          Cursor localCursor;
          localCursor.close();
          return localSmsEntity;
          localException1 = localException1;
          Exception localException2 = localException1;
          localSmsEntity = null;
          localException2.printStackTrace();
          continue;
        }
        catch (Exception localException3)
        {
          continue;
        }
        SmsEntity localSmsEntity = null;
        continue;
        localSmsEntity = null;
      }
    }
  }

  public final List<mk> a()
  {
    return gu.a(this.b.query(gu.b, null, null, null, "date DESC"), true);
  }

  public final List<mk> a(String paramString, List<Integer> paramList)
  {
    new StringBuilder("getSMSMMSByAddress: ").append(paramString).toString();
    ArrayList localArrayList1 = new ArrayList();
    if ((paramList == null) || (paramList.size() == 0));
    StringBuffer localStringBuffer;
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      return localArrayList2;
      localStringBuffer = new StringBuffer();
      localStringBuffer.append(" IN (");
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        int i4 = ((Integer)localIterator1.next()).intValue();
        localStringBuffer.append(i4 + ",");
      }
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      localStringBuffer.append(")");
      String str1 = "(type" + localStringBuffer + ")AND(" + fu.a("address", paramString) + ")";
      Cursor localCursor1 = this.b.query(gu.b, null, str1, null, "date ASC");
      if (localCursor1 != null)
      {
        localArrayList1.addAll(gu.a(localCursor1, true));
        localCursor1.close();
      }
      new StringBuilder("smslog count: ").append(localArrayList1.size()).toString();
      if ((u.a().b() <= 1) && (!ft.e()))
        break;
    }
    int i = e(paramString);
    Cursor localCursor2;
    ArrayList localArrayList3;
    int j;
    int k;
    int m;
    int n;
    if (i != -1)
    {
      String str2 = "(thread_id=" + i + ")AND(m_type" + " IN (128,130" + ",132))" + "AND(msg_box" + localStringBuffer + ")";
      localCursor2 = this.b.query(gu.c, null, str2, null, null);
      if ((localCursor2 != null) && (localCursor2.moveToFirst()))
      {
        localArrayList3 = new ArrayList();
        j = localCursor2.getColumnIndexOrThrow("_id");
        k = localCursor2.getColumnIndexOrThrow("msg_box");
        m = localCursor2.getColumnIndexOrThrow("read");
        String str3 = u.a().d();
        if (str3 == null)
          break label679;
        n = localCursor2.getColumnIndex(str3);
      }
    }
    while (true)
      if (!localCursor2.isAfterLast())
      {
        int i1 = localCursor2.getInt(j);
        int i2 = localCursor2.getInt(k);
        SmsEntity localSmsEntity = this.d.getMms(i1, i2);
        if (localSmsEntity != null)
        {
          mk localmk = new mk(localSmsEntity);
          localmk.id = i1;
          localmk.type = i2;
          int i3 = localCursor2.getInt(m);
          localmk.read = i3;
          localmk.a = i3;
          if (n >= 0)
            localmk.f = localCursor2.getString(n);
          localArrayList3.add(localmk);
        }
        localCursor2.moveToNext();
      }
      else
      {
        Iterator localIterator2 = localArrayList3.iterator();
        while (localIterator2.hasNext())
          ((mk)localIterator2.next()).e = i;
        new StringBuilder("mmslog count: ").append(localArrayList3.size()).toString();
        localArrayList1.addAll(localArrayList3);
        if (localCursor2 != null)
          localCursor2.close();
        localArrayList2 = localArrayList1;
        break;
        label679: n = -1;
      }
  }

  public final boolean a(int paramInt, List<Integer> paramList)
  {
    new StringBuilder("deleteSMSByThreadId threadId: ").append(paramInt).toString();
    boolean bool;
    if ((paramList == null) || (paramList.size() == 0))
      bool = false;
    while (true)
    {
      return bool;
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(" IN (");
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        int k = ((Integer)localIterator.next()).intValue();
        localStringBuffer.append(k + ",");
      }
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      localStringBuffer.append(")");
      String str1 = "(thread_id=" + paramInt + ")AND(type" + localStringBuffer + ")";
      String str2 = "(thread_id=" + paramInt + ")AND(msg_box" + localStringBuffer + ")";
      int i = this.b.delete(gu.b, str1, null);
      int j = this.b.delete(gu.c, str2, null);
      if ((i > 0) || (j > 0))
        bool = true;
      else
        bool = false;
    }
  }

  public final boolean a(long paramLong)
  {
    int i = 1;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("read", Integer.valueOf(i));
    if (this.a.getContentResolver().update(gu.a, localContentValues, "date=" + paramLong, null) > 0);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    return this.c.a(paramString1, paramString2);
  }

  public final boolean a(List<mk> paramList)
  {
    boolean bool2;
    if (paramList.size() > 0)
    {
      ContentValues[] arrayOfContentValues1 = new ContentValues[paramList.size()];
      for (int i = 0; i < paramList.size(); i++)
        arrayOfContentValues1[i] = gu.a((mk)paramList.get(i), true);
      bool1 = false;
      int j = 0;
      if (-1 + (j + 500) < arrayOfContentValues1.length)
      {
        ContentValues[] arrayOfContentValues3 = new ContentValues[500];
        for (int n = 0; n < 500; n++)
          arrayOfContentValues3[n] = arrayOfContentValues1[(j + n)];
        if (this.b.bulkInsert(gu.a, arrayOfContentValues3) > 0);
        for (bool1 = true; ; bool1 = false)
        {
          if (!bool1)
            break label225;
          j += 500;
          break;
        }
      }
      if (arrayOfContentValues1.length - j > 0)
      {
        ContentValues[] arrayOfContentValues2 = new ContentValues[arrayOfContentValues1.length - j];
        for (int k = 0; j + k < arrayOfContentValues1.length; k++)
          arrayOfContentValues2[k] = arrayOfContentValues1[(j + k)];
        int m = this.b.bulkInsert(gu.a, arrayOfContentValues2);
        bool2 = false;
        if (m > 0)
          bool2 = true;
      }
    }
    for (boolean bool1 = bool2; ; bool1 = true)
      label225: return bool1;
  }

  public final List<mk> b()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.b.query(gu.c, null, "msg_box=1 OR msg_box=2", null, "date DESC");
    if ((localCursor != null) && (localCursor.moveToFirst()))
    {
      int i = localCursor.getColumnIndexOrThrow("_id");
      int j = localCursor.getColumnIndexOrThrow("msg_box");
      int k = localCursor.getColumnIndexOrThrow("read");
      int m = localCursor.getColumnIndexOrThrow("thread_id");
      int n = -1;
      String str = u.a().d();
      if (str != null)
        n = localCursor.getColumnIndex(str);
      while (!localCursor.isAfterLast())
      {
        int i1 = localCursor.getInt(i);
        int i2 = localCursor.getInt(j);
        SmsEntity localSmsEntity = this.d.getMms(i1, i2);
        if (localSmsEntity != null)
        {
          mk localmk = new mk(localSmsEntity);
          localmk.id = i1;
          localmk.type = i2;
          localmk.e = localCursor.getInt(m);
          int i3 = localCursor.getInt(k);
          localmk.read = i3;
          localmk.a = i3;
          if (n >= 0)
            localmk.f = localCursor.getString(n);
          localArrayList.add(localmk);
        }
        localCursor.moveToNext();
      }
    }
    if (localCursor != null)
      localCursor.close();
    return localArrayList;
  }

  public final List<ky> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor;
    try
    {
      localCursor = this.b.query(dy.a, null, paramString, null, "date DESC");
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getColumnIndex("_id");
        int j = localCursor.getColumnIndex("number");
        int k = localCursor.getColumnIndex("date");
        int m = localCursor.getColumnIndex("duration");
        int n = localCursor.getColumnIndex("type");
        int i1 = localCursor.getColumnIndex("new");
        int i2 = localCursor.getColumnIndex("name");
        int i3 = localCursor.getColumnIndex("numbertype");
        int i4 = localCursor.getColumnIndex("numberlabel");
        while (!localCursor.isAfterLast())
        {
          ky localky = new ky();
          if (j >= 0)
            localky.phonenum = localCursor.getString(j);
          if (k >= 0)
            localky.date = localCursor.getLong(k);
          if (m >= 0)
            localky.duration = localCursor.getInt(m);
          if (n >= 0)
            localky.type = localCursor.getInt(n);
          if (i1 >= 0)
            localky.a = localCursor.getInt(i1);
          if (i2 >= 0)
            localky.name = localCursor.getString(i2);
          if (i3 >= 0)
            localky.b = localCursor.getInt(i3);
          if (i4 >= 0)
            localky.c = localCursor.getString(i4);
          if (i >= 0)
            localky.id = localCursor.getInt(i);
          localArrayList.add(localky);
          localCursor.moveToNext();
        }
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
    while (true)
    {
      return localArrayList;
      localCursor.close();
    }
  }

  public final mk b(int paramInt)
  {
    return gu.a(this.b.query(gu.b, null, "thread_id=" + paramInt, null, "date DESC"));
  }

  public final boolean b(String paramString, List<Integer> paramList)
  {
    boolean bool;
    if ((paramList == null) || (paramList.size() == 0))
    {
      bool = false;
      return bool;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(" IN (");
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      int m = ((Integer)localIterator.next()).intValue();
      localStringBuffer.append(m + ",");
    }
    localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
    localStringBuffer.append(")");
    String str1 = "(type" + localStringBuffer + ")AND(" + fu.a("address", paramString) + ")";
    int i = this.b.delete(gu.b, str1, null);
    int j = e(paramString);
    String str2;
    if (j != -1)
      str2 = "(thread_id=" + j + ")AND(msg_box" + localStringBuffer + ")";
    for (int k = this.b.delete(gu.c, str2, null); ; k = 0)
    {
      if ((i > 0) || (k > 0))
      {
        bool = true;
        break;
      }
      bool = false;
      break;
    }
  }

  public final boolean b(List<ky> paramList)
  {
    if (paramList.size() > 0)
    {
      ContentValues[] arrayOfContentValues = new ContentValues[paramList.size()];
      for (int i = 0; i < paramList.size(); i++)
        arrayOfContentValues[i] = f.a((ky)paramList.get(i), 1, true);
      int j = this.b.bulkInsert(dy.a, arrayOfContentValues);
      bool = false;
      if (j <= 0);
    }
    for (boolean bool = true; ; bool = true)
      return bool;
  }

  public final List<mk> c()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.b.query(gu.c, null, "msg_box=1", null, "date DESC");
    if ((localCursor != null) && (localCursor.moveToFirst()))
    {
      int i = localCursor.getColumnIndexOrThrow("_id");
      int j = localCursor.getColumnIndexOrThrow("msg_box");
      int k = localCursor.getColumnIndexOrThrow("read");
      int m = localCursor.getColumnIndexOrThrow("thread_id");
      int n = -1;
      String str = u.a().d();
      if (str != null)
        n = localCursor.getColumnIndex(str);
      while (!localCursor.isAfterLast())
      {
        int i1 = localCursor.getInt(i);
        int i2 = localCursor.getInt(j);
        SmsEntity localSmsEntity = this.d.getMms(i1, i2);
        if (localSmsEntity != null)
        {
          mk localmk = new mk(localSmsEntity);
          localmk.id = i1;
          localmk.type = i2;
          localmk.e = localCursor.getInt(m);
          int i3 = localCursor.getInt(k);
          localmk.read = i3;
          localmk.a = i3;
          if (n >= 0)
            localmk.f = localCursor.getString(n);
          localArrayList.add(localmk);
        }
        localCursor.moveToNext();
      }
    }
    if (localCursor != null)
      localCursor.close();
    return localArrayList;
  }

  public final List<mk> c(int paramInt)
  {
    String str1;
    List localList;
    int i;
    label57: mk localmk;
    String str2;
    if ((paramInt == 1) || (paramInt == 2))
    {
      str1 = "type=" + paramInt;
      localList = gu.a(this.b.query(gu.b, null, str1, null, "date DESC"), true);
      i = -1 + localList.size();
      if (i < 0)
        break label120;
      localmk = (mk)localList.get(i);
      str2 = fu.e(localmk.a());
      if (str2 != null)
        break label110;
      localList.remove(i);
    }
    while (true)
    {
      i--;
      break label57;
      str1 = null;
      break;
      label110: localmk.phonenum = str2;
    }
    label120: return localList;
  }

  public final List<ky> c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor;
    try
    {
      localCursor = this.b.query(dy.a, null, "number" + fu.g(paramString), null, "date DESC");
      if (localCursor.moveToFirst())
      {
        int i = localCursor.getColumnIndex("number");
        int j = localCursor.getColumnIndex("date");
        int k = localCursor.getColumnIndex("duration");
        int m = localCursor.getColumnIndex("type");
        int n = localCursor.getColumnIndex("new");
        int i1 = localCursor.getColumnIndex("name");
        int i2 = localCursor.getColumnIndex("numbertype");
        int i3 = localCursor.getColumnIndex("numberlabel");
        while (!localCursor.isAfterLast())
        {
          ky localky = new ky();
          if (i >= 0)
            localky.phonenum = localCursor.getString(i);
          if (j >= 0)
            localky.date = localCursor.getLong(j);
          if (k >= 0)
            localky.duration = localCursor.getInt(k);
          if (m >= 0)
            localky.type = localCursor.getInt(m);
          if (n >= 0)
            localky.a = localCursor.getInt(n);
          if (i1 >= 0)
            localky.name = localCursor.getString(i1);
          if (i2 >= 0)
            localky.b = localCursor.getInt(i2);
          if (i3 >= 0)
            localky.c = localCursor.getString(i3);
          localArrayList.add(localky);
          localCursor.moveToNext();
        }
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
    while (true)
    {
      return localArrayList;
      localCursor.close();
    }
  }

  public boolean contains(String paramString)
  {
    return this.d.contains(paramString);
  }

  public final boolean d(String paramString)
  {
    if (this.b.delete(dy.a, "number" + fu.g(paramString), null) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public List<CallLogEntity> getAllCallLog()
  {
    return this.d.getAllCallLog();
  }

  public List<ContactEntity> getAllContact()
  {
    return this.d.getAllContact();
  }

  public CallLogEntity getLastCallLog()
  {
    return this.d.getLastCallLog();
  }

  public SmsEntity getLastInBoxMms(int paramInt1, int paramInt2)
  {
    return this.d.getLastInBoxMms(paramInt1, paramInt2);
  }

  public SmsEntity getLastInBoxSms(int paramInt1, int paramInt2)
  {
    return this.d.getLastInBoxSms(paramInt1, paramInt2);
  }

  public SmsEntity getLastOutBoxMms(int paramInt)
  {
    return this.d.getLastOutBoxMms(paramInt);
  }

  public SmsEntity getLastOutBoxSms(int paramInt)
  {
    return this.d.getLastOutBoxSms(paramInt);
  }

  public SmsEntity getLastSentMms(int paramInt)
  {
    return this.d.getLastSentMms(paramInt);
  }

  public SmsEntity getLastSentSms(int paramInt)
  {
    return this.d.getLastSentSms(paramInt);
  }

  public SmsEntity getMms(int paramInt1, int paramInt2)
  {
    return this.d.getMms(paramInt1, paramInt2);
  }

  public List<ContactEntity> getSimContact()
  {
    return this.d.getSimContact();
  }

  // ERROR //
  public Uri insert(SmsEntity paramSmsEntity)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 494	com/tencent/tmsecure/module/aresengine/SmsEntity:protocolType	I
    //   4: ifeq +11 -> 15
    //   7: aload_1
    //   8: getfield 494	com/tencent/tmsecure/module/aresengine/SmsEntity:protocolType	I
    //   11: iconst_2
    //   12: if_icmpne +15 -> 27
    //   15: aload_0
    //   16: getfield 54	ki:d	Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    //   19: aload_1
    //   20: invokevirtual 496	com/tencent/tmsecure/module/aresengine/AbsSysDao:insert	(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;
    //   23: astore_3
    //   24: goto +521 -> 545
    //   27: aload_1
    //   28: getfield 494	com/tencent/tmsecure/module/aresengine/SmsEntity:protocolType	I
    //   31: iconst_1
    //   32: if_icmpne +441 -> 473
    //   35: aload_1
    //   36: getfield 500	com/tencent/tmsecure/module/aresengine/SmsEntity:raw	Landroid/content/Intent;
    //   39: ifnonnull +180 -> 219
    //   42: aload_0
    //   43: getfield 54	ki:d	Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
    //   46: aload_1
    //   47: invokevirtual 496	com/tencent/tmsecure/module/aresengine/AbsSysDao:insert	(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;
    //   50: astore 19
    //   52: aload_1
    //   53: getfield 501	com/tencent/tmsecure/module/aresengine/SmsEntity:read	I
    //   56: iconst_1
    //   57: if_icmpne +482 -> 539
    //   60: new 361	android/content/ContentValues
    //   63: dup
    //   64: iconst_3
    //   65: invokespecial 504	android/content/ContentValues:<init>	(I)V
    //   68: astore 20
    //   70: aload 20
    //   72: ldc_w 316
    //   75: iconst_1
    //   76: invokestatic 366	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   79: invokevirtual 370	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   82: aload_1
    //   83: instanceof 329
    //   86: ifeq +446 -> 532
    //   89: aload_1
    //   90: checkcast 329	mk
    //   93: getfield 340	mk:f	Ljava/lang/String;
    //   96: astore 23
    //   98: aload 23
    //   100: ifnull +432 -> 532
    //   103: invokestatic 292	u:a	()Lu;
    //   106: invokevirtual 318	u:d	()Ljava/lang/String;
    //   109: astore 24
    //   111: aload 24
    //   113: ifnull +419 -> 532
    //   116: aload 20
    //   118: ifnonnull +407 -> 525
    //   121: new 361	android/content/ContentValues
    //   124: dup
    //   125: iconst_2
    //   126: invokespecial 504	android/content/ContentValues:<init>	(I)V
    //   129: astore 21
    //   131: aload 21
    //   133: aload 24
    //   135: aload 23
    //   137: invokevirtual 507	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   140: aload_1
    //   141: getfield 511	com/tencent/tmsecure/module/aresengine/SmsEntity:mmsData	Lcom/tencent/tmsecure/module/aresengine/MmsData;
    //   144: ifnull +42 -> 186
    //   147: aload_1
    //   148: getfield 511	com/tencent/tmsecure/module/aresengine/SmsEntity:mmsData	Lcom/tencent/tmsecure/module/aresengine/MmsData;
    //   151: getfield 517	com/tencent/tmsecure/module/aresengine/MmsData:mmsNotificationIndHeader	Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;
    //   154: ifnull +32 -> 186
    //   157: aload 21
    //   159: ifnonnull +13 -> 172
    //   162: new 361	android/content/ContentValues
    //   165: dup
    //   166: iconst_1
    //   167: invokespecial 504	android/content/ContentValues:<init>	(I)V
    //   170: astore 21
    //   172: aload 21
    //   174: ldc_w 519
    //   177: sipush 128
    //   180: invokestatic 366	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   183: invokevirtual 370	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   186: aload 19
    //   188: ifnull +25 -> 213
    //   191: aload 21
    //   193: ifnull +20 -> 213
    //   196: aload_0
    //   197: getfield 25	ki:a	Landroid/content/Context;
    //   200: invokevirtual 31	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   203: aload 19
    //   205: aload 21
    //   207: aconst_null
    //   208: aconst_null
    //   209: invokevirtual 378	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   212: pop
    //   213: aload 19
    //   215: astore_3
    //   216: goto +329 -> 545
    //   219: invokestatic 292	u:a	()Lu;
    //   222: invokevirtual 294	u:b	()I
    //   225: iconst_1
    //   226: if_icmple +293 -> 519
    //   229: invokestatic 292	u:a	()Lu;
    //   232: invokevirtual 521	u:c	()Ljava/lang/String;
    //   235: astore 6
    //   237: aload_0
    //   238: getfield 25	ki:a	Landroid/content/Context;
    //   241: invokestatic 527	com/google/android/mms/pdu/PduPersister:getPduPersister	(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    //   244: astore 7
    //   246: aload_1
    //   247: getfield 500	com/tencent/tmsecure/module/aresengine/SmsEntity:raw	Landroid/content/Intent;
    //   250: ldc_w 529
    //   253: invokevirtual 535	android/content/Intent:getByteArrayExtra	(Ljava/lang/String;)[B
    //   256: astore 8
    //   258: aload 8
    //   260: ifnonnull +8 -> 268
    //   263: aconst_null
    //   264: astore_3
    //   265: goto +280 -> 545
    //   268: new 537	com/google/android/mms/pdu/PduParser
    //   271: dup
    //   272: aload 8
    //   274: invokespecial 540	com/google/android/mms/pdu/PduParser:<init>	([B)V
    //   277: invokevirtual 543	com/google/android/mms/pdu/PduParser:parse	()Lcom/google/android/mms/pdu/GenericPdu;
    //   280: astore 9
    //   282: aload 9
    //   284: ifnonnull +8 -> 292
    //   287: aconst_null
    //   288: astore_3
    //   289: goto +256 -> 545
    //   292: aload 6
    //   294: ifnull +184 -> 478
    //   297: aload_1
    //   298: getfield 500	com/tencent/tmsecure/module/aresengine/SmsEntity:raw	Landroid/content/Intent;
    //   301: aload 6
    //   303: invokevirtual 546	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   306: astore 13
    //   308: aload 13
    //   310: ifnonnull +15 -> 325
    //   313: invokestatic 292	u:a	()Lu;
    //   316: aload_1
    //   317: getfield 500	com/tencent/tmsecure/module/aresengine/SmsEntity:raw	Landroid/content/Intent;
    //   320: invokevirtual 549	u:a	(Landroid/content/Intent;)Ljava/lang/String;
    //   323: astore 13
    //   325: aload 7
    //   327: aload 9
    //   329: getstatic 551	gu:d	Landroid/net/Uri;
    //   332: invokevirtual 555	com/google/android/mms/pdu/PduPersister:persist	(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    //   335: astore 14
    //   337: invokestatic 292	u:a	()Lu;
    //   340: invokevirtual 318	u:d	()Ljava/lang/String;
    //   343: astore 16
    //   345: aload 16
    //   347: invokestatic 561	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   350: ifne +47 -> 397
    //   353: aload 13
    //   355: invokestatic 561	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   358: ifne +39 -> 397
    //   361: new 361	android/content/ContentValues
    //   364: dup
    //   365: iconst_1
    //   366: invokespecial 504	android/content/ContentValues:<init>	(I)V
    //   369: astore 17
    //   371: aload 17
    //   373: aload 16
    //   375: aload 13
    //   377: invokevirtual 507	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   380: aload_0
    //   381: getfield 25	ki:a	Landroid/content/Context;
    //   384: invokevirtual 31	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   387: aload 14
    //   389: aload 17
    //   391: aconst_null
    //   392: aconst_null
    //   393: invokevirtual 378	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   396: pop
    //   397: aload 14
    //   399: astore_3
    //   400: aload_3
    //   401: ifnull +144 -> 545
    //   404: aload 9
    //   406: invokevirtual 566	com/google/android/mms/pdu/GenericPdu:getMessageType	()I
    //   409: sipush 130
    //   412: if_icmpne +133 -> 545
    //   415: new 361	android/content/ContentValues
    //   418: dup
    //   419: iconst_1
    //   420: invokespecial 504	android/content/ContentValues:<init>	(I)V
    //   423: astore 11
    //   425: aload 11
    //   427: ldc_w 519
    //   430: sipush 128
    //   433: invokestatic 366	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   436: invokevirtual 370	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   439: aload_0
    //   440: getfield 25	ki:a	Landroid/content/Context;
    //   443: invokevirtual 31	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   446: aload_3
    //   447: aload 11
    //   449: aconst_null
    //   450: aconst_null
    //   451: invokevirtual 378	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   454: pop
    //   455: goto +90 -> 545
    //   458: astore 5
    //   460: aload 5
    //   462: invokevirtual 214	java/lang/Exception:printStackTrace	()V
    //   465: goto +80 -> 545
    //   468: astore_2
    //   469: aload_2
    //   470: invokevirtual 214	java/lang/Exception:printStackTrace	()V
    //   473: aconst_null
    //   474: astore_3
    //   475: goto +70 -> 545
    //   478: aload 7
    //   480: aload 9
    //   482: getstatic 551	gu:d	Landroid/net/Uri;
    //   485: invokevirtual 555	com/google/android/mms/pdu/PduPersister:persist	(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    //   488: astore 10
    //   490: aload 10
    //   492: astore_3
    //   493: goto -93 -> 400
    //   496: astore 4
    //   498: aload 4
    //   500: astore 5
    //   502: aconst_null
    //   503: astore_3
    //   504: goto -44 -> 460
    //   507: astore 15
    //   509: aload 14
    //   511: astore_3
    //   512: aload 15
    //   514: astore 5
    //   516: goto -56 -> 460
    //   519: aconst_null
    //   520: astore 6
    //   522: goto -285 -> 237
    //   525: aload 20
    //   527: astore 21
    //   529: goto -398 -> 131
    //   532: aload 20
    //   534: astore 21
    //   536: goto -396 -> 140
    //   539: aconst_null
    //   540: astore 20
    //   542: goto -460 -> 82
    //   545: aload_3
    //   546: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   404	455	458	java/lang/Exception
    //   0	213	468	java/lang/Exception
    //   460	465	468	java/lang/Exception
    //   219	337	496	java/lang/Exception
    //   478	490	496	java/lang/Exception
    //   337	397	507	java/lang/Exception
  }

  public void onCreate()
  {
  }

  public boolean remove(CallLogEntity paramCallLogEntity)
  {
    return this.d.remove(paramCallLogEntity);
  }

  public boolean remove(SmsEntity paramSmsEntity)
  {
    try
    {
      boolean bool2 = this.d.remove(paramSmsEntity);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool1 = false;
      }
    }
  }

  public boolean supportThisPhone()
  {
    return false;
  }

  final class a
    implements ki.c
  {
    private a()
    {
    }

    public final boolean a(String paramString1, String paramString2)
    {
      int i = 1;
      if (ki.this.contains(paramString1));
      ContentValues localContentValues;
      Uri localUri;
      for (i = 0; ; i = 0)
      {
        return i;
        localContentValues = new ContentValues();
        localContentValues.put("name", paramString2);
        localUri = ki.a(ki.this).insert(Contacts.People.CONTENT_URI, localContentValues);
        if (localUri != null)
          break;
      }
      localContentValues.clear();
      if (paramString1.length() >= 11);
      for (int j = 2; ; j = i)
      {
        localContentValues.put("type", Integer.valueOf(j));
        localContentValues.put("number", paramString1);
        localContentValues.put("person", Integer.valueOf(Integer.parseInt(localUri.getLastPathSegment())));
        if (ki.a(ki.this).insert(Contacts.Phones.CONTENT_URI, localContentValues) != null)
          break;
        i = 0;
        break;
      }
    }
  }

  final class b
    implements ki.c
  {
    private b()
    {
    }

    public final boolean a(String paramString1, String paramString2)
    {
      boolean bool;
      if (ki.this.contains(paramString1))
        bool = false;
      while (true)
      {
        return bool;
        long l1 = -1L;
        try
        {
          ArrayList localArrayList = new ArrayList();
          localArrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
          localArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", paramString2).build());
          localArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", paramString1).withValue("data2", Integer.valueOf(1)).withValue("data3", "").build());
          ContentProviderResult[] arrayOfContentProviderResult = ki.a(ki.this).applyBatch("com.android.contacts", localArrayList);
          if ((arrayOfContentProviderResult != null) && (arrayOfContentProviderResult.length > 0))
          {
            long l2 = ContentUris.parseId(arrayOfContentProviderResult[0].uri);
            l1 = l2;
          }
          if (l1 > 0L)
            bool = true;
        }
        catch (OperationApplicationException localOperationApplicationException)
        {
          while (true)
            localOperationApplicationException.printStackTrace();
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
          bool = false;
        }
      }
    }
  }

  static abstract interface c
  {
    public abstract boolean a(String paramString1, String paramString2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ki
 * JD-Core Version:    0.6.2
 */