import QQPIM.TelReport;
import android.database.Cursor;
import java.util.ArrayList;

public final class hk
{
  public hs a = hs.a();

  public final ArrayList<TelReport> a()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = this.a.a("select * from callreport order by id desc".toString());
    localCursor.moveToFirst();
    for (int i = 0; i < localCursor.getCount(); i++)
    {
      TelReport localTelReport = new TelReport();
      localTelReport.phonenum = localCursor.getString(localCursor.getColumnIndex("phone_number"));
      localTelReport.calltime = localCursor.getInt(localCursor.getColumnIndex("call_time"));
      localTelReport.talktime = localCursor.getInt(localCursor.getColumnIndex("talk_time"));
      localTelReport.teltype = localCursor.getInt(localCursor.getColumnIndex("tel_type"));
      localTelReport.tagtype = localCursor.getInt(localCursor.getColumnIndex("tag_type"));
      localTelReport.useraction = localCursor.getInt(localCursor.getColumnIndex("user_action"));
      localTelReport.clientlogic = localCursor.getInt(localCursor.getColumnIndex("client_logic"));
      localArrayList.add(localTelReport);
      localCursor.moveToNext();
    }
    localCursor.close();
    this.a.b();
    return localArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     hk
 * JD-Core Version:    0.6.2
 */