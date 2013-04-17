import android.content.Context;
import android.content.Intent;
import android.provider.Settings.System;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import java.util.TimerTask;

final class yu extends TimerTask
{
  yu(yr paramyr, String paramString, AntitheftManager paramAntitheftManager, ho paramho)
  {
  }

  public final void run()
  {
    String str1 = ft.c(this.d.a);
    yr localyr = this.d;
    String str2 = this.a;
    int j;
    String str3;
    if ((str1 != null) && (str1.length() > 0))
    {
      if (!str2.contains(str1))
        break label325;
      j = 0;
      if (j != 0)
      {
        str3 = this.b.getHelperNumber();
        if (str3 == null)
        {
          str3 = this.c.bE();
          this.b.setHelperNumber(str3);
        }
        String str4 = this.b.getBindQQNum();
        if (!this.c.q(str1))
        {
          if ((str4 == null) || ("".equals(str4)))
            break label331;
          if ((str1 != null) && (str1.length() > 0))
            this.b.reportSIMChangeToServer();
          if ((str1 != null) && (str1.length() > 0) && (this.c.bI()) && (str3 != null) && (!"".equals(str3)))
            gu.a(str3, String.format(this.d.a.getString(2131429331), new Object[] { str4 }));
        }
      }
    }
    while (true)
    {
      if ((str1 != null) && (str1.length() > 0))
        this.c.r(str1);
      if (this.c.bH())
      {
        this.c.C(true);
        Intent localIntent = new Intent();
        localIntent.setFlags(268435456);
        localIntent.putExtra("sim_change", true);
        localIntent.setClass(this.d.a, PickproofLockActivity.class);
        this.d.a.startActivity(localIntent);
      }
      return;
      if (Settings.System.getInt(localyr.a.getContentResolver(), "airplane_mode_on", 0) != 0);
      for (int i = 1; ; i = 0)
      {
        if (i == 0)
          break label325;
        j = 0;
        break;
      }
      label325: j = 1;
      break;
      label331: if ((str1 != null) && (str1.length() > 0) && (str3 != null) && (!"".equals(str3)))
      {
        gu.a(str3, this.d.a.getString(2131429325) + this.c.bT() + this.d.a.getString(2131429326));
        gu.a(str3, this.d.a.getString(2131429369));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yu
 * JD-Core Version:    0.6.2
 */