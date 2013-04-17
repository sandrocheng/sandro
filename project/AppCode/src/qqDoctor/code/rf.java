import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class rf
  implements View.OnClickListener
{
  rf(rb paramrb, hq paramhq, lf paramlf, Resources paramResources, Dialog paramDialog, Handler paramHandler)
  {
  }

  public final void onClick(View paramView)
  {
    String str;
    rb localrb;
    lf locallf;
    if (this.a.c(this.b))
    {
      if (this.b.b == 2);
      for (jp localjp = new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts"); ; localjp = new jp("smslog", "mms_pdu", "mms_parts"))
      {
        List localList = localjp.a(this.b.phonenum);
        if ((localList.size() <= 0) || (((mk)localList.get(-1 + localList.size())).a == 1))
          break;
        for (int i = 0; i < localList.size(); i++)
        {
          ((mk)localList.get(i)).a = 1;
          localjp.b(((mk)localList.get(i)).id);
        }
      }
      str = this.c.getString(2131427776);
      this.d.dismiss();
      localrb = this.f;
      locallf = this.b;
      if ((locallf != null) && (locallf.b == 2) && (locallf.phonenum.indexOf('*') < 0))
      {
        new sy(localrb.a, true, new hi(1), new jp("securesmslog", "secure_mms_pdu", "secure_mms_parts")).a(locallf.phonenum, null);
        this.e.sendEmptyMessage(0);
      }
    }
    while (true)
    {
      ha.a(this.f.a, str);
      return;
      if ((locallf == null) || (locallf.b != 0) || (locallf.phonenum.indexOf('*') >= 0))
        break;
      new sy(localrb.a, false, new hi(0), new jp("smslog", "mms_pdu", "mms_parts")).a(locallf.phonenum, null);
      break;
      str = this.c.getString(2131427777);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rf
 * JD-Core Version:    0.6.2
 */