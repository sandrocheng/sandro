import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.ui.AboutActivity;
import com.tencent.powermanager.ui.SettingsActivity;
import java.util.List;

public final class cu
  implements AdapterView.OnItemClickListener
{
  public cu(SettingsActivity paramSettingsActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 1;
    boolean bool = ((bg)SettingsActivity.a(this.a).get(paramInt)).e;
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      SettingsActivity.d(this.a);
      label83: return;
      int m;
      r localr5;
      if (!bool)
      {
        m = gl.a();
        if (m == 0)
          aj.c();
      }
      else
      {
        localr5 = SettingsActivity.b(this.a);
        if (bool)
          break label161;
      }
      label161: int k;
      for (int j = i; ; k = 0)
      {
        localr5.g(j);
        break;
        if (m == i)
        {
          p.a(this.a, 2131099719);
          break label83;
        }
        p.a(this.a, 2131099720);
        break label83;
      }
      r localr4 = SettingsActivity.b(this.a);
      if (!bool);
      while (true)
      {
        localr4.i(i);
        break;
        i = 0;
      }
      r localr3 = SettingsActivity.b(this.a);
      if (!bool);
      while (true)
      {
        localr3.h(i);
        break;
        i = 0;
      }
      r localr2 = SettingsActivity.b(this.a);
      if (!bool);
      while (true)
      {
        localr2.f(i);
        break;
        i = 0;
      }
      r localr1 = SettingsActivity.b(this.a);
      if (!bool);
      while (true)
      {
        localr1.e(i);
        if (bool)
          break label336;
        if (by.a == null)
          by.a = new by();
        BatteryEventReceiver.a(by.a);
        if (by.a == null)
          by.a = new by();
        af.a(by.a);
        break;
        i = 0;
      }
      label336: if (by.a == null)
        by.a = new by();
      BatteryEventReceiver.b(by.a);
      if (by.a == null)
        by.a = new by();
      af.b(by.a);
      bo.a().c();
      continue;
      SettingsActivity.c(this.a);
      continue;
      this.a.a();
      continue;
      ax localax = new ax(this.a, i, false);
      localax.g();
      localax.c();
      continue;
      this.a.startActivity(new Intent(this.a, AboutActivity.class));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cu
 * JD-Core Version:    0.6.2
 */