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

final class aqw
  implements View.OnClickListener
{
  aqw(aqu paramaqu, EditText paramEditText1, EditText paramEditText2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    if (str1.length() == 0)
    {
      ha.a(aqu.b(this.d), aqu.c(this.d).getString(2131428460));
      return;
    }
    String str2 = this.b.getText().toString().trim();
    if ("".equals(str2))
    {
      ((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class);
      str2 = ki.a(str1);
      if (str2 == null)
        str2 = "";
    }
    IpDialPhoneNumber localIpDialPhoneNumber = new IpDialPhoneNumber();
    localIpDialPhoneNumber.setName(str2);
    localIpDialPhoneNumber.setPhoneNumber(str1);
    int i = 0;
    String str3;
    String str4;
    label160: String str5;
    String str6;
    label201: int j;
    if (i < aqu.d(this.d).size())
    {
      str3 = localIpDialPhoneNumber.getPhoneNumber();
      if (str3.indexOf("+86") != -1)
      {
        str4 = str3.substring(3);
        str5 = ((IpDialPhoneNumber)aqu.e(this.d).get(i)).getPhoneNumber();
        if (str5.indexOf("+86") != -1)
        {
          str6 = str5.substring(3);
          if (((IpDialPhoneNumber)aqu.f(this.d).get(i)).getName().equals(localIpDialPhoneNumber.getName()))
          {
            boolean bool = str6.equals(str4);
            j = 0;
            if (!bool);
          }
        }
      }
    }
    while (true)
    {
      if (j != 0)
        aqu.g(this.d).add(localIpDialPhoneNumber);
      IpDialManagerSetting localIpDialManagerSetting;
      IpDialPhoneNumberList localIpDialPhoneNumberList;
      while (true)
      {
        ha.b(aqu.i(this.d), aqu.c(this.d).getString(2131428462));
        aqu.j(this.d);
        this.d.getAdapter().notifyDataSetChanged();
        localIpDialManagerSetting = aqu.k(this.d).getIpDialSetting();
        localIpDialPhoneNumberList = new IpDialPhoneNumberList();
        Iterator localIterator = aqu.l(this.d).iterator();
        while (localIterator.hasNext())
          localIpDialPhoneNumberList.add((IpDialPhoneNumber)localIterator.next());
        i++;
        break;
        ha.b(aqu.h(this.d), aqu.c(this.d).getString(2131428461));
      }
      localIpDialManagerSetting.setExcludedPhoneNumberList(localIpDialPhoneNumberList);
      aqu.k(this.d).setIpDialSetting(localIpDialManagerSetting);
      this.c.dismiss();
      break;
      str6 = str5;
      break label201;
      str4 = str3;
      break label160;
      j = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqw
 * JD-Core Version:    0.6.2
 */