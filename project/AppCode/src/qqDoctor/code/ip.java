import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.List;

final class ip extends Thread
{
  ip(io paramio)
  {
  }

  public final void run()
  {
    int i = 0;
    io localio = this.a;
    localio.e = localio.a.getString("incoming_call_log", "");
    String str1 = localio.e;
    if ("".equals(str1))
    {
      List localList = localio.b.b("type=1");
      StringBuffer localStringBuffer = new StringBuffer();
      localio.f = 0;
      for (int k = 0; k < localList.size(); k++)
      {
        ky localky = (ky)localList.get(k);
        String str3 = fu.e(fu.a(localky.phonenum));
        if ((str3 != null) && (ft.b(str3)))
        {
          String str4 = fu.f(str3);
          if ((!localStringBuffer.toString().contains(str4)) && (!localio.c.b(localky.phonenum)) && (!localio.d.b(localky.phonenum)) && (!localio.b.contains(localky.phonenum)))
          {
            localStringBuffer.insert(0, "|" + str4);
            localio.f = (1 + localio.f);
            if (localio.f >= 50)
              break;
          }
        }
      }
      if ((localStringBuffer.length() > 0) && (localStringBuffer.charAt(0) == '|'))
      {
        localStringBuffer.deleteCharAt(0);
        String str2 = localStringBuffer.toString();
        localio.e = str2;
        localio.a.edit().putString("incoming_call_log", str2).commit();
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
      localio.e = str1;
      localio.f = (j + 1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ip
 * JD-Core Version:    0.6.2
 */