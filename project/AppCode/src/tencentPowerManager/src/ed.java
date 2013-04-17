import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.powermanager.PowerManagerApplication;
import com.tencent.powermanager.ui.DIYSaveModeActivity;
import com.tencent.powermanager.view.PowerManagerView;
import java.util.List;

public final class ed
  implements AdapterView.OnItemClickListener
{
  public ed(PowerManagerView paramPowerManagerView, int paramInt, dd paramdd)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ag localag = PowerManagerView.i(this.c);
    int i = this.a;
    String[] arrayOfString = PowerManagerApplication.a().getResources().getStringArray(2130968576);
    bf localbf = new bf();
    switch (i)
    {
    default:
      localbf.a = PowerManagerView.j(this.c);
      String str = PowerManagerView.k(this.c).getString(2131099741);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1 + PowerManagerView.f(this.c).size());
      localbf.b = String.format(str, arrayOfObject);
      if (this.a == 3)
        if (PowerManagerView.l(this.c).g())
          localbf.l = 2;
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      Intent localIntent = new Intent(PowerManagerView.m(this.c), DIYSaveModeActivity.class);
      PowerManagerView.a(localIntent, localbf);
      PowerManagerView.n(this.c).startActivity(localIntent);
      this.b.dismiss();
      return;
      localbf.c = -1;
      localbf.e = Integer.parseInt(arrayOfString[1]);
      localbf.i = false;
      localbf.h = false;
      localbf.k = localag.c.j();
      localbf.g = localag.c.d();
      localbf.j = localag.c.h();
      localbf.f = localag.c.c();
      localbf.d = 30000;
      break;
      localbf.e = Integer.parseInt(arrayOfString[0]);
      localbf.i = false;
      localbf.h = false;
      localbf.c = 25;
      localbf.k = false;
      localbf.g = localag.c.d();
      localbf.j = localag.c.h();
      localbf.f = false;
      localbf.d = 15000;
      break;
      localbf.e = Integer.parseInt(arrayOfString[0]);
      localbf.i = false;
      localbf.h = false;
      localbf.c = 25;
      localbf.k = false;
      localbf.g = false;
      localbf.j = false;
      localbf.f = false;
      localbf.d = 15000;
      break;
      localbf.e = r.j();
      localbf.i = false;
      localbf.h = ah.a().d();
      localbf.c = localag.c.e();
      localbf.k = localag.a.i();
      localbf.g = true;
      localbf.j = localag.a.k();
      localbf.f = localag.b.b();
      localbf.d = localag.a.f();
      if (localag.c.m())
      {
        localbf.l = 2;
        break;
      }
      localbf.l = 1;
      break;
      localbf.l = 1;
      continue;
      localbf.l = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ed
 * JD-Core Version:    0.6.2
 */