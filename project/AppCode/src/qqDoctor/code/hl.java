import QQPIM.TelReport;
import android.content.ContentValues;
import java.util.Iterator;
import java.util.List;

public final class hl
  implements dv
{
  public hl(hk paramhk, List paramList)
  {
  }

  public final void a(Object paramObject)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      TelReport localTelReport = (TelReport)localIterator.next();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("phone_number", localTelReport.phonenum);
      localContentValues.put("call_time", Integer.valueOf(localTelReport.calltime));
      localContentValues.put("talk_time", Integer.valueOf(localTelReport.talktime));
      localContentValues.put("tel_type", Integer.valueOf(localTelReport.teltype));
      localContentValues.put("tag_type", Integer.valueOf(localTelReport.tagtype));
      localContentValues.put("user_action", Integer.valueOf(localTelReport.useraction));
      localContentValues.put("client_logic", Integer.valueOf(localTelReport.clientlogic));
      this.b.a.a("callreport", null, localContentValues);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hl
 * JD-Core Version:    0.6.2
 */