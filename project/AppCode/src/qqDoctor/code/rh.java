import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class rh
  implements View.OnClickListener
{
  rh(rb paramrb, hq paramhq, Dialog paramDialog, Handler paramHandler)
  {
  }

  public final void onClick(View paramView)
  {
    ArrayList localArrayList = new ArrayList();
    if (this.a != null)
    {
      Iterator localIterator = this.a.a().iterator();
      while (localIterator.hasNext())
      {
        lf locallf = (lf)localIterator.next();
        if (locallf.phonenum.indexOf('*') < 0)
          localArrayList.add(locallf.phonenum);
      }
      this.a.b();
    }
    this.b.dismiss();
    if (localArrayList.size() > 0)
    {
      if (this.a.d() != 0)
        break label164;
      new sy(this.d.a, false, new hi(0), new jp("smslog", "mms_pdu", "mms_parts")).a(localArrayList, false);
    }
    while (true)
    {
      this.c.sendEmptyMessage(0);
      return;
      label164: if (this.a.d() == 2)
        new sy(this.d.a, true, new hi(1), new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts")).a(localArrayList, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rh
 * JD-Core Version:    0.6.2
 */