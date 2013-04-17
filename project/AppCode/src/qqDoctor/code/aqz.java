import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumber;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumberList;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.Iterator;
import java.util.List;

final class aqz
  implements View.OnClickListener
{
  aqz(aqu paramaqu, EditText paramEditText1, EditText paramEditText2, IpDialPhoneNumber paramIpDialPhoneNumber, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    if (str1.length() == 0)
    {
      ha.a(aqu.o(this.e), aqu.c(this.e).getString(2131428460));
      return;
    }
    String str2 = this.b.getText().toString().trim();
    if ("".equals(str2))
    {
      ((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
      str2 = ki.a(str1);
      if (str2 != null);
    }
    for (String str3 = ""; ; str3 = str2)
    {
      IpDialPhoneNumber localIpDialPhoneNumber = new IpDialPhoneNumber();
      localIpDialPhoneNumber.setPhoneNumber(str1);
      localIpDialPhoneNumber.setName(str3);
      int i = 0;
      String str4;
      String str5;
      label162: String str6;
      String str7;
      label203: int j;
      if (i < aqu.p(this.e).size())
      {
        str4 = localIpDialPhoneNumber.getPhoneNumber();
        if (str4.indexOf("+86") != -1)
        {
          str5 = str4.substring(3);
          str6 = ((IpDialPhoneNumber)aqu.q(this.e).get(i)).getPhoneNumber();
          if (str6.indexOf("+86") != -1)
          {
            str7 = str6.substring(3);
            if (((IpDialPhoneNumber)aqu.r(this.e).get(i)).getName().equals(localIpDialPhoneNumber.getName()))
            {
              boolean bool = str7.equals(str5);
              j = 0;
              if (!bool);
            }
          }
        }
      }
      while (true)
      {
        if (j != 0)
        {
          ha.b(aqu.s(this.e), aqu.c(this.e).getString(2131428464));
          this.c.setPhoneNumber(str1);
          this.c.setName(str3);
          this.e.getAdapter().notifyDataSetChanged();
          IpDialManagerSetting localIpDialManagerSetting = aqu.k(this.e).getIpDialSetting();
          IpDialPhoneNumberList localIpDialPhoneNumberList = new IpDialPhoneNumberList();
          Iterator localIterator = aqu.t(this.e).iterator();
          while (true)
            if (localIterator.hasNext())
            {
              localIpDialPhoneNumberList.add((IpDialPhoneNumber)localIterator.next());
              continue;
              i++;
              break;
            }
          localIpDialManagerSetting.setExcludedPhoneNumberList(localIpDialPhoneNumberList);
          aqu.k(this.e).setIpDialSetting(localIpDialManagerSetting);
        }
        while (true)
        {
          this.d.dismiss();
          break;
          ha.b(aqu.u(this.e), aqu.c(this.e).getString(2131428461));
        }
        str7 = str6;
        break label203;
        str5 = str4;
        break label162;
        j = 1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqz
 * JD-Core Version:    0.6.2
 */