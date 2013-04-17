import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tccdb.TccCryptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class jr
{
  hs a = hs.a();
  Context b = QQPimApplication.a();

  private mm a(Cursor paramCursor)
  {
    mm localmm = new mm();
    localmm.a = paramCursor.getInt(paramCursor.getColumnIndex("id"));
    localmm.f = paramCursor.getInt(paramCursor.getColumnIndex("sms_content_type"));
    localmm.b = paramCursor.getString(paramCursor.getColumnIndex("sender"));
    localmm.e = paramCursor.getInt(paramCursor.getColumnIndex("match_final_action"));
    localmm.d = paramCursor.getInt(paramCursor.getColumnIndex("match_time"));
    byte[] arrayOfByte1 = paramCursor.getBlob(paramCursor.getColumnIndex("sms"));
    long l = localmm.d;
    byte[] arrayOfByte2;
    if (arrayOfByte1 != null)
      arrayOfByte2 = TccCryptor.makePassword(this.b, (new hg().a + l).getBytes());
    for (String str = new String(TccCryptor.decrypt(this.b, arrayOfByte1, arrayOfByte2)); ; str = null)
    {
      localmm.c = str;
      localmm.n = paramCursor.getInt(paramCursor.getColumnIndex("sms_type"));
      localmm.g = mm.a(paramCursor.getString(paramCursor.getColumnIndex("vec_hit_ruels")));
      localmm.i = mm.b(paramCursor.getString(paramCursor.getColumnIndex("vec_user_action")));
      localmm.h = paramCursor.getInt(paramCursor.getColumnIndex("minus_mark"));
      localmm.j = paramCursor.getString(paramCursor.getColumnIndex("comment"));
      localmm.k = paramCursor.getLong(paramCursor.getColumnIndex("sms_log_date"));
      localmm.l = paramCursor.getLong(paramCursor.getColumnIndex("sys_log_date"));
      localmm.m = paramCursor.getInt(paramCursor.getColumnIndex("column_action_reason"));
      return localmm;
    }
  }

  public final ArrayList<mm> a(ArrayList<mm> paramArrayList, ArrayList<String> paramArrayList1, int paramInt)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    ArrayList localArrayList1 = new ArrayList();
    if ((paramArrayList != null) && (paramArrayList.size() >= 0))
    {
      Iterator localIterator2 = paramArrayList.iterator();
      while (localIterator2.hasNext())
      {
        mm localmm2 = (mm)localIterator2.next();
        localArrayList1.add(localmm2);
        localStringBuffer1.append(localmm2.a + ",");
      }
      if (localStringBuffer1.length() > 0)
        localStringBuffer1.deleteCharAt(-1 + localStringBuffer1.length());
      if (localArrayList1.size() < paramInt);
    }
    for (ArrayList localArrayList2 = localArrayList1; ; localArrayList2 = localArrayList1)
    {
      return localArrayList2;
      if ((paramArrayList1 != null) && (paramArrayList1.size() != 0))
        break;
      StringBuffer localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append("select * from smsreport_v2");
      if (localStringBuffer1.length() > 0)
        localStringBuffer2.append(" where id not in (" + localStringBuffer1.toString() + ")");
      localStringBuffer2.append(" order by id desc");
      localStringBuffer2.append(" limit 0," + (paramInt - localArrayList1.size()));
      Cursor localCursor1 = this.a.a(localStringBuffer2.toString());
      localCursor1.moveToFirst();
      for (int i = 0; i < localCursor1.getCount(); i++)
      {
        localArrayList1.add(a(localCursor1));
        localCursor1.moveToNext();
      }
      localCursor1.close();
      this.a.b();
    }
    StringBuffer localStringBuffer3 = new StringBuffer();
    localStringBuffer3.append("select * from smsreport_v2");
    if (localStringBuffer1.length() > 0)
      localStringBuffer3.append(" where id not in (" + localStringBuffer1.toString() + ")");
    localStringBuffer3.append(" order by id desc");
    localStringBuffer3.append(" limit 0,500");
    Cursor localCursor2 = this.a.a(localStringBuffer3.toString());
    localCursor2.moveToFirst();
    ArrayList localArrayList3 = new ArrayList();
    int j = 0;
    int k = localCursor2.getCount();
    int m = 0;
    mm localmm1;
    label476: String str;
    int i1;
    if (j < k)
    {
      int n = localArrayList1.size();
      m = 0;
      if (n < paramInt)
      {
        localmm1 = a(localCursor2);
        Iterator localIterator1 = paramArrayList1.iterator();
        if (!localIterator1.hasNext())
          break label634;
        str = (String)localIterator1.next();
        if ((localmm1.c == null) || ("".equals(localmm1.c)))
          i1 = 0;
      }
    }
    while (true)
    {
      label522: if (i1 != 0)
        localArrayList1.add(localmm1);
      while (true)
      {
        localCursor2.moveToNext();
        j++;
        break;
        if (!localmm1.c.contains(str))
          break label476;
        i1 = 1;
        break label522;
        localArrayList3.add(localmm1);
      }
      while ((localArrayList1.size() < paramInt) && (m < localArrayList3.size()))
      {
        localArrayList1.add(localArrayList3.get(m));
        m++;
      }
      localCursor2.close();
      this.a.b();
      break;
      label634: i1 = 0;
    }
  }

  public final mm a(long paramLong)
  {
    Cursor localCursor = this.a.a("smsreport_v2", null, "sms_log_date=" + paramLong, null, null, null, null);
    int i = localCursor.getCount();
    mm localmm = null;
    if (i > 0)
    {
      localCursor.moveToNext();
      localmm = a(localCursor);
    }
    localCursor.close();
    this.a.b();
    return localmm;
  }

  public final void a(List<mm> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      mm localmm = (mm)localIterator.next();
      localStringBuffer.append(localmm.a + ",");
    }
    if (localStringBuffer.length() > 0)
    {
      String str = "id in (" + localStringBuffer.deleteCharAt(-1 + localStringBuffer.length()).toString() + ")";
      this.a.a("smsreport_v2", str, null);
      this.a.b();
    }
  }

  public final void a(mm parammm)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(parammm);
    this.a.a(new js(this, localArrayList));
  }

  public final mm b(long paramLong)
  {
    Cursor localCursor = this.a.a("smsreport_v2", null, "sys_log_date=" + paramLong, null, null, null, null);
    int i = localCursor.getCount();
    mm localmm = null;
    if (i > 0)
    {
      localCursor.moveToNext();
      localmm = a(localCursor);
    }
    localCursor.close();
    this.a.b();
    return localmm;
  }

  public final void b(mm parammm)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("vec_user_action", mm.b(parammm.i));
    localContentValues.put("sms_log_date", Long.valueOf(parammm.k));
    localContentValues.put("sys_log_date", Long.valueOf(parammm.l));
    this.a.a("smsreport_v2", localContentValues, "id=" + parammm.a, null);
    this.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jr
 * JD-Core Version:    0.6.2
 */