import android.content.Context;
import android.text.TextUtils;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.util.HashMap;

public final class x
{
  y a;

  public x()
  {
    a();
    if (((this.a instanceof z)) || ((this.a instanceof aa)))
      fm.c = true;
  }

  private void a()
  {
    String str1 = ho.a().dx();
    if (!TextUtils.isEmpty(str1));
    while (true)
    {
      try
      {
        Class localClass = Class.forName(str1);
        if (localClass != null)
        {
          y localy5 = (y)localClass.newInstance();
          if (localy5 != null)
          {
            this.a = localy5;
            return;
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      new t();
      try
      {
        Context localContext = QQPimApplication.a();
        String str2 = ft.c();
        String str3 = ft.a();
        if ((str2 != null) && (str3 != null))
        {
          String str4 = str2.toLowerCase();
          String str5 = str3.toLowerCase();
          String[] arrayOfString1 = { "xt800", "xt882", "xt806", "xt928" };
          String[] arrayOfString2 = { "i909", "i809", "i589", "i929" };
          String[] arrayOfString3 = { "n930", "d539" };
          String[] arrayOfString4 = { "r750", "v889d" };
          HashMap localHashMap = new HashMap();
          localHashMap.put("motorola", arrayOfString1);
          localHashMap.put("samsung", arrayOfString2);
          localHashMap.put("yulong", arrayOfString3);
          localHashMap.put("zte", arrayOfString4);
          String[] arrayOfString5 = (String[])localHashMap.get(str4);
          if (arrayOfString5 != null)
          {
            int n = arrayOfString5.length;
            int i1 = 0;
            label259: if (i1 < n)
            {
              y localy1;
              int m;
              if (str5.indexOf(arrayOfString5[i1]) >= 0)
              {
                localy4 = t.a(str4, str5);
                if (localy4 == null)
                  break label531;
                localObject = localy4;
                i = 1;
                if (i == 0)
                {
                  localy1 = t.a(str4, str5);
                  if (localy1 != null)
                  {
                    v[] arrayOfv = localy1.d();
                    if ((arrayOfv == null) || (arrayOfv.length <= 0))
                      break label485;
                    int k = arrayOfv.length;
                    m = 0;
                    label347: if (m >= k)
                      break label479;
                    if (arrayOfv[m] == null)
                      break label473;
                    y localy3 = arrayOfv[m].a.a(localContext, false);
                    if (localy3 == null)
                      break label473;
                    localObject = localy3;
                    j = 1;
                  }
                }
              }
              while (true)
              {
                if ((j != 0) && (localObject != null) && (((y)localObject).b()))
                {
                  ho.a().dv();
                  ho.a().dw();
                }
                this.a = ((y)localObject);
                if (this.a == null)
                  this.a = new ai();
                ho.a().O(this.a.getClass().getName());
                break;
                i1++;
                break label259;
                label473: m++;
                break label347;
                label479: j = 0;
                continue;
                label485: y localy2 = localy1.a(localContext, false);
                if (localy2 == null)
                  break label516;
                localObject = localy2;
                j = 1;
              }
            }
          }
        }
      }
      catch (s locals)
      {
        while (true)
        {
          y localy4;
          continue;
          label516: int j = 0;
          continue;
          Object localObject = null;
          int i = 0;
          continue;
          label531: localObject = localy4;
          i = 0;
          continue;
          localObject = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     x
 * JD-Core Version:    0.6.2
 */