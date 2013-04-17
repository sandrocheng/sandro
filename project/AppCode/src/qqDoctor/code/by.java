import java.io.BufferedReader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class by
  implements ch
{
  private static Pattern a = Pattern.compile("BEGIN:VCARD", 2);
  private static Pattern b = Pattern.compile("BEGIN:VCALLLOG", 2);
  private static Pattern c = Pattern.compile("BEGIN:VMESSAGE", 2);
  private static Pattern d = Pattern.compile("BEGIN:VBKM", 2);
  private static Pattern e = Pattern.compile("BEGIN:VWBLIST", 2);
  private static Pattern f = Pattern.compile("BEGIN:VQQBKM", 2);

  private static String[] a(String paramString, AtomicBoolean paramAtomicBoolean)
  {
    if ((paramString == null) || (paramString.length() == 0));
    String[] arrayOfString2;
    ArrayList localArrayList;
    int i;
    boolean bool;
    for (String[] arrayOfString1 = { "OTHER" }; ; arrayOfString1 = (String[])localArrayList.toArray(new String[0]))
    {
      return arrayOfString1;
      arrayOfString2 = paramString.split(";");
      localArrayList = new ArrayList();
      if (paramAtomicBoolean != null)
        paramAtomicBoolean.set(false);
      i = 0;
      bool = false;
      if (i < arrayOfString2.length)
        break;
      if (paramAtomicBoolean != null)
        paramAtomicBoolean.set(bool);
    }
    if (arrayOfString2[i].equals("PREF"))
      bool = true;
    while (true)
    {
      i++;
      break;
      if (arrayOfString2[i].contains("X-CUSTOM="))
      {
        String str = arrayOfString2[i].substring(9, arrayOfString2[i].length());
        try
        {
          localArrayList.add(new String(cn.b(str.getBytes("UTF-8"))));
        }
        catch (Exception localException)
        {
        }
      }
      else if (!arrayOfString2[i].contains("CHARSET="))
      {
        localArrayList.add(arrayOfString2[i]);
      }
    }
  }

  public final cc a(byte[] paramArrayOfByte)
    throws Exception
  {
    BufferedReader localBufferedReader = new BufferedReader(new StringReader(new String(paramArrayOfByte, "UTF-8")), paramArrayOfByte.length);
    String str1 = localBufferedReader.readLine();
    Object localObject;
    if (str1.length() == 0)
    {
      localObject = null;
      return localObject;
    }
    if (a.matcher(str1).matches())
      localObject = new cq();
    while (true)
    {
      label67: String str2 = localBufferedReader.readLine();
      if (str2 == null);
      int i;
      int j;
      String str3;
      label245: 
      do
      {
        localBufferedReader.close();
        break;
        if (b.matcher(str1).matches())
          break label635;
        if (c.matcher(str1).matches())
        {
          localObject = new cr();
          break label67;
        }
        if (d.matcher(str1).matches())
          break label635;
        if (e.matcher(str1).matches())
        {
          localObject = new cm();
          break label67;
        }
        if (f.matcher(str1).matches())
          break label635;
        localObject = null;
        break;
        if (str2.contains("VERSION"))
          break label67;
        i = str2.indexOf(";");
        j = str2.indexOf(":");
        new String();
        if ((i != -1) && (j >= i))
          break label461;
        str3 = str2.substring(0, j);
        i = j - 1;
      }
      while (str3.equals("END"));
      cp localcp = new cp();
      if (str3 != null)
        localcp.a[0].append(str3);
      int k = 0;
      AtomicBoolean localAtomicBoolean = new AtomicBoolean();
      String[] arrayOfString = a(str2.substring(i + 1, j), localAtomicBoolean);
      localcp.c = localAtomicBoolean.get();
      StringBuilder localStringBuilder1 = new StringBuilder();
      int m = 0;
      label334: StringBuilder localStringBuilder2;
      label390: String str6;
      if (m >= arrayOfString.length)
      {
        String str4 = localStringBuilder1.toString();
        if (str4 != null)
          localcp.a[1].append(str4);
        localStringBuilder2 = new StringBuilder(str2.substring(j + 1));
        if (k == 0)
          break label607;
        str6 = localBufferedReader.readLine();
        if (!str6.equals(""))
          break label550;
      }
      while (true)
      {
        try
        {
          if (localcp.a[0].toString().equals("PHOTO"))
          {
            localcp.b = cn.b(localStringBuilder2.toString().getBytes("UTF-8"));
            if (localcp == null)
              break label67;
            ((cc)localObject).c.add(localcp);
            break label67;
            label461: str3 = str2.substring(0, i);
            break label245;
            if (arrayOfString[m].toUpperCase().contains("ENCODING=BASE64"))
            {
              k = 1;
              m++;
              break label334;
            }
            if (localStringBuilder1.length() > 0)
            {
              localStringBuilder1.append(";" + arrayOfString[m]);
              continue;
            }
            localStringBuilder1.append(arrayOfString[m]);
            continue;
            label550: localStringBuilder2.append(str6);
            break label390;
          }
          String str7 = new String(cn.b(localStringBuilder2.toString().getBytes("UTF-8")));
          localcp.a[2].append(str7);
          continue;
        }
        catch (Exception localException)
        {
          localObject = null;
        }
        break;
        label607: String str5 = localStringBuilder2.toString();
        if (str5 != null)
          localcp.a[2].append(str5);
      }
      label635: localObject = null;
    }
  }

  public final byte[] a(cc paramcc)
  {
    Object localObject = null;
    if (paramcc == null)
      return localObject;
    StringBuffer localStringBuffer1;
    int i;
    if (paramcc.a() == cc.a.a)
    {
      localStringBuffer1 = new StringBuffer("BEGIN:VCARD\r\nVERSION:2.1\r\n");
      if (paramcc.c.size() > 0)
        paramcc.d = Integer.valueOf(0);
      if (paramcc.d.intValue() < paramcc.c.size())
      {
        i = 0;
        label66: if (i == 0);
      }
    }
    label1549: label2261: for (StringBuffer localStringBuffer7 = localStringBuffer1.append("END:VCARD\r\n"); ; localStringBuffer7 = null)
    {
      while (true)
      {
        localObject = null;
        if (localStringBuffer7 == null)
          break;
        try
        {
          byte[] arrayOfByte3 = localStringBuffer7.toString().getBytes("UTF-8");
          localObject = arrayOfByte3;
          break;
          StringBuffer localStringBuffer2 = new StringBuffer();
          cp localcp1 = paramcc.b();
          String str1 = localcp1.a[0].toString();
          if ((str1.equals("FN")) || (str1.equals("NICKNAME")) || (str1.equals("TITLE")) || (str1.equals("N")) || (str1.equals("URL")) || (str1.equals("X-FOCUS")))
            localStringBuffer2 = localStringBuffer2.append(str1).append(":").append(localcp1.a[2].toString()).append("\r\n");
          while (true)
          {
            if (!"".equals(localStringBuffer2))
              localStringBuffer1.append(localStringBuffer2);
            paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
            break;
            if (str1.equals("PHOTO"))
            {
              byte[] arrayOfByte1 = localcp1.b;
              if (arrayOfByte1 != null)
              {
                byte[] arrayOfByte2 = cn.a(arrayOfByte1);
                localStringBuffer2 = localStringBuffer2.append("PHOTO;ENCODING=BASE64:").append(new String(arrayOfByte2)).append("\r\n\r\n");
              }
            }
            else if (str1.equals("NOTE"))
            {
              localStringBuffer2 = localStringBuffer2.append("NOTE;ENCODING=BASE64:").append(de.c(localcp1.a[2].toString())).append("\r\n\r\n");
            }
            else
            {
              if (str1.equals("EMAIL"))
              {
                String str7 = localcp1.a[1].toString();
                StringBuffer localStringBuffer6;
                if ((str7.contains("HOME")) || (str7.contains("WORK")) || (str7.contains("CELL")))
                  localStringBuffer6 = localStringBuffer2.append("EMAIL;").append(str7);
                while (true)
                {
                  localStringBuffer2 = localStringBuffer6.append(":").append(localcp1.a[2].toString()).append("\r\n");
                  break;
                  if ((str7.contains("OTHER")) || ("".equals(str7)))
                    localStringBuffer6 = localStringBuffer2.append("EMAIL").append(str7.replace("OTHER", ""));
                  else
                    localStringBuffer6 = localStringBuffer2.append("EMAIL;X-CUSTOM=").append(de.c(str7));
                }
              }
              if (str1.equals("TEL"))
              {
                String str6 = localcp1.a[1].toString();
                StringBuffer localStringBuffer5;
                if ((str6.contains("FAX;WORK")) || (str6.contains("FAX;HOME")) || (str6.contains("CELL;WORK")) || (str6.contains("PAGER;WORK")) || (str6.contains("HOME")) || (str6.contains("WORK")) || (str6.contains("CELL")) || (str6.contains("PAGER")) || (str6.contains("CAR")) || (str6.contains("X-CALLBACK")) || (str6.contains("X-COMPANY")) || (str6.contains("X-ISDN")) || (str6.contains("X-MAIN")) || (str6.contains("FAX")) || (str6.contains("RADIO")) || (str6.contains("X-TELEX")) || (str6.contains("X-TTY")) || (str6.contains("X-ASSISTANT")) || (str6.contains("MEDIA")))
                  localStringBuffer5 = localStringBuffer2.append("TEL;").append(str6);
                while (true)
                {
                  if (localcp1.c)
                    localStringBuffer5.append(";PREF");
                  localStringBuffer2 = localStringBuffer5.append(":").append(localcp1.a[2].toString()).append("\r\n");
                  break;
                  if ((str6.contains("OTHER")) || ("".equals(str6)))
                    localStringBuffer5 = localStringBuffer2.append("TEL").append(str6.replace("OTHER", ""));
                  else
                    localStringBuffer5 = localStringBuffer2.append("TEL;X-CUSTOM=").append(de.c(str6));
                }
              }
              if (str1.equals("ADR"))
              {
                String str5 = localcp1.a[1].toString();
                StringBuffer localStringBuffer4;
                if ((str5.contains("HOME")) || (str5.contains("WORK")))
                  localStringBuffer4 = localStringBuffer2.append("ADR;").append(str5);
                while (true)
                {
                  localStringBuffer2 = localStringBuffer4.append(":").append(localcp1.a[2].toString()).append("\r\n");
                  break;
                  if ((str5.equals("OTHER")) || ("".equals(str5)))
                    localStringBuffer4 = localStringBuffer2.append("ADR").append(str5.replace("OTHER", ""));
                  else
                    localStringBuffer4 = localStringBuffer2.append("ADR;X-CUSTOM=").append(de.c(str5));
                }
              }
              if (str1.equals("ORG"))
              {
                String str4 = localcp1.a[1].toString();
                StringBuffer localStringBuffer3;
                if (str4.contains("WORK"))
                  localStringBuffer3 = localStringBuffer2.append("ORG;").append(str4);
                while (true)
                {
                  localStringBuffer2 = localStringBuffer3.append(":").append(localcp1.a[2].toString()).append("\r\n");
                  break;
                  if ((str4.contains("OTHER")) || ("".equals(str4)))
                    localStringBuffer3 = localStringBuffer2.append("ORG").append(str4.replace("OTHER", ""));
                  else
                    localStringBuffer3 = localStringBuffer2.append("ORG;X-CUSTOM=").append(de.c(str4));
                }
              }
              if (str1.equals("X-TC-IM"))
              {
                String str3 = localcp1.a[1].toString();
                if ((str3.contains("AIM")) || (str3.contains("MSN")) || (str3.contains("YAHOO")) || (str3.contains("SKYPE")) || (str3.contains("GTALK")) || (str3.contains("QQ")) || (str3.contains("ICQ")) || (str3.contains("JABBER")))
                  localStringBuffer2 = localStringBuffer2.append("X-TC-IM;").append(str3).append(":").append(localcp1.a[2].toString()).append("\r\n");
                else
                  localStringBuffer2 = localStringBuffer2.append("X-TC-IM;X-CUSTOM=").append(de.c(str3)).append(":").append(localcp1.a[2].toString()).append("\r\n");
              }
              else if (str1.equals("BDAY"))
              {
                String str2 = de.f(localcp1.a[2].toString());
                localStringBuffer2 = localStringBuffer2.append(str1).append(":").append(str2).append("\r\n");
              }
              else if (str1.equals("CATEGORIES"))
              {
                localStringBuffer2 = localStringBuffer2.append(str1).append(":").append(localcp1.a[2].toString()).append("\r\n");
              }
            }
          }
          i = 1;
          break label66;
          if (paramcc.a() == cc.a.d)
          {
            StringBuffer localStringBuffer8 = new StringBuffer("BEGIN:VBKM\r\nVERSION:1.0\r\n");
            if (paramcc.c.size() > 0)
              paramcc.d = Integer.valueOf(0);
            if (paramcc.d.intValue() < paramcc.c.size());
            for (int j = 0; ; j = 1)
            {
              if (j != 0)
              {
                localStringBuffer7 = localStringBuffer8.append("END:VBKM\r\n");
                break;
              }
              cp localcp2 = paramcc.b();
              if (localcp2 == null)
                break label1549;
              localcp2.a[0].toString();
              paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
              break label1549;
            }
          }
          if (paramcc.a() == cc.a.c)
          {
            StringBuffer localStringBuffer9 = new StringBuffer("BEGIN:VCALLLOG\r\nVERSION:1.0\r\n");
            if (paramcc.c.size() > 0)
              paramcc.d = Integer.valueOf(0);
            if (paramcc.d.intValue() < paramcc.c.size());
            for (int k = 0; ; k = 1)
            {
              if (k != 0)
              {
                localStringBuffer7 = localStringBuffer9.append("END:VCALLLOG\r\n");
                break;
              }
              cp localcp3 = paramcc.b();
              if (localcp3 == null)
                break label1674;
              localcp3.a[0].toString();
              paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
              break label1674;
            }
          }
          if (paramcc.a() == cc.a.b)
          {
            StringBuffer localStringBuffer10 = new StringBuffer("BEGIN:VMESSAGE\r\nVERSION:1.0\r\n");
            if (paramcc.c.size() > 0)
              paramcc.d = Integer.valueOf(0);
            if (paramcc.d.intValue() < paramcc.c.size());
            for (int m = 0; ; m = 1)
            {
              if (m != 0)
              {
                localStringBuffer7 = localStringBuffer10.append("END:VMESSAGE\r\n");
                break;
              }
              cp localcp4 = paramcc.b();
              if (localcp4 == null)
                break label1799;
              String str8 = localcp4.a[0].toString();
              if (str8.equals("INFORMATION"));
              for (localStringBuffer10 = localStringBuffer10.append(str8).append(";ENCODING=BASE64:").append(de.c(localcp4.a[2].toString())).append("\r\n\r\n"); ; localStringBuffer10 = localStringBuffer10.append(str8).append(":").append(localcp4.a[2].toString()).append("\r\n"))
              {
                paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
                break;
              }
            }
          }
          if (paramcc.a() == cc.a.e)
          {
            StringBuffer localStringBuffer11 = new StringBuffer("BEGIN:VWBLIST\r\nVERSION:1.0\r\n");
            if (paramcc.c.size() > 0)
              paramcc.d = Integer.valueOf(0);
            label2009: if (paramcc.d.intValue() < paramcc.c.size());
            for (int n = 0; ; n = 1)
            {
              if (n != 0)
              {
                localStringBuffer7 = localStringBuffer11.append("END:VWBLIST\r\n");
                break;
              }
              cp localcp5 = paramcc.b();
              if (localcp5 == null)
                break label2009;
              localStringBuffer11 = localStringBuffer11.append(localcp5.a[0].toString()).append(":").append(localcp5.a[2].toString()).append("\r\n");
              paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
              break label2009;
            }
          }
          if (paramcc.a() != cc.a.f)
            break label2261;
          StringBuffer localStringBuffer12 = new StringBuffer("BEGIN:VQQBKM\r\nVERSION:1.0\r\n");
          if (paramcc.c.size() > 0)
            paramcc.d = Integer.valueOf(0);
          label2164: if (paramcc.d.intValue() < paramcc.c.size());
          for (int i1 = 0; ; i1 = 1)
          {
            if (i1 != 0)
            {
              localStringBuffer7 = localStringBuffer12.append("END:VQQBKM\r\n");
              break;
            }
            cp localcp6 = paramcc.b();
            if (localcp6 == null)
              break label2164;
            localcp6.a[0].toString();
            paramcc.d = Integer.valueOf(1 + paramcc.d.intValue());
            break label2164;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          localUnsupportedEncodingException.printStackTrace();
          localObject = null;
        }
      }
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     by
 * JD-Core Version:    0.6.2
 */