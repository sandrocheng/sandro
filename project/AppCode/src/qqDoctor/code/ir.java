import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.List;

final class ir extends Thread
{
  ir(iq paramiq)
  {
  }

  public final void run()
  {
    int i = 0;
    iq localiq = this.a;
    localiq.e = localiq.a.getString("outgoing_sms_log", "");
    String str1 = localiq.e;
    if ("".equals(str1))
    {
      List localList = localiq.b.c(2);
      StringBuffer localStringBuffer = new StringBuffer();
      localiq.f = 0;
      for (int k = 0; k < localList.size(); k++)
      {
        mk localmk = (mk)localList.get(k);
        if (localmk.phonenum == null)
          localmk.phonenum = "";
        String str3 = fu.e(fu.a(localmk.phonenum));
        if ((str3 != null) && (ft.b(str3)))
        {
          String str4 = fu.f(str3);
          if ((!localStringBuffer.toString().contains(str4)) && (!localiq.c.b(localmk.phonenum)) && (!localiq.d.b(localmk.phonenum)) && (!localiq.b.contains(localmk.phonenum)))
          {
            localStringBuffer.insert(0, "|" + str4);
            localiq.f = (1 + localiq.f);
            if (localiq.f >= 50)
              break;
          }
        }
      }
      if ((localStringBuffer.length() > 0) && (localStringBuffer.charAt(0) == '|'))
      {
        localStringBuffer.deleteCharAt(0);
        String str2 = localStringBuffer.toString();
        localiq.e = str2;
        localiq.a.edit().putString("outgoing_sms_log", str2).commit();
      }
    }
    while (true)
    {
      return;
      int j = 0;
      while (i < str1.length())
      {
        if (str1.charAt(i) == '|')
          j++;
        i++;
      }
      localiq.e = str1;
      localiq.f = (j + 1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ir
 * JD-Core Version:    0.6.2
 */