import android.content.ContentValues;
import com.tencent.tccdb.TccCryptor;
import java.util.Iterator;
import java.util.List;

final class js
  implements dv
{
  js(jr paramjr, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    if (localIterator.hasNext())
    {
      mm localmm = (mm)localIterator.next();
      jr localjr = this.b;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("sender", localmm.b);
      localContentValues.put("match_time", Integer.valueOf(localmm.d));
      String str = localmm.c;
      long l = localmm.d;
      byte[] arrayOfByte2;
      if ((str != null) && (!str.equals("")))
        arrayOfByte2 = TccCryptor.makePassword(localjr.b, (new hg().a + l).getBytes());
      for (byte[] arrayOfByte1 = TccCryptor.encrypt(localjr.b, str.getBytes(), arrayOfByte2); ; arrayOfByte1 = null)
      {
        localContentValues.put("sms", arrayOfByte1);
        localContentValues.put("sms_type", Integer.valueOf(localmm.n));
        localContentValues.put("match_final_action", Integer.valueOf(localmm.e));
        localContentValues.put("sms_content_type", Integer.valueOf(localmm.f));
        localContentValues.put("vec_hit_ruels", mm.a(localmm.g));
        localContentValues.put("vec_user_action", mm.b(localmm.i));
        localContentValues.put("minus_mark", Integer.valueOf(localmm.h));
        localContentValues.put("comment", localmm.j);
        localContentValues.put("sms_log_date", Long.valueOf(localmm.k));
        localContentValues.put("sys_log_date", Long.valueOf(localmm.l));
        localContentValues.put("column_action_reason", Integer.valueOf(localmm.m));
        localmm.a = ((int)this.b.a.a("smsreport_v2", null, localContentValues));
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     js
 * JD-Core Version:    0.6.2
 */