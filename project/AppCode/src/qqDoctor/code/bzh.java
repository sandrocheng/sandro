import com.tencent.tmsecure.utils.PhoneInfoUtil.CPUScaleListener;

public final class bzh
  implements Runnable
{
  public bzh(PhoneInfoUtil.CPUScaleListener paramCPUScaleListener)
  {
  }

  public final void run()
  {
    int i = 1;
    while (true)
    {
      int k;
      int n;
      try
      {
        String[] arrayOfString1 = btd.d("/proc/stat").split("\\n");
        int j = arrayOfString1.length;
        k = 0;
        String str1;
        if (k >= j)
        {
          str1 = null;
          if (str1 != null);
        }
        else
        {
          str1 = arrayOfString1[k];
          if (str1 == null)
            break label350;
          if (!str1.equals(""))
            continue;
          break label350;
        }
        String[] arrayOfString2 = str1.split("\\s+");
        Thread.sleep(500L);
        String[] arrayOfString3 = btd.d("/proc/stat").split("\\n");
        int m = arrayOfString3.length;
        n = 0;
        if (n >= m)
        {
          str2 = null;
          if (str2 != null)
            continue;
          this.a.onFinish(0.0F);
          continue;
        }
        String str2 = arrayOfString3[n];
        if (str2 == null)
          break label356;
        if (!str2.equals(""))
          continue;
        break label356;
        String[] arrayOfString4 = str2.split("\\s+");
        int i1 = 0;
        int i2 = i;
        int i3 = arrayOfString2.length;
        int i4 = 0;
        if (i2 >= i3)
        {
          if (i < arrayOfString4.length)
            continue;
          int i6 = i4 - i1;
          int i7 = Integer.parseInt(arrayOfString2[4]);
          int i8 = 1000 * (i6 - (Integer.parseInt(arrayOfString4[4]) - i7)) / i6;
          float f = i8 / 10.0F;
          this.a.onFinish(f);
          continue;
        }
        i1 += Integer.parseInt(arrayOfString2[i2]);
        i2++;
        continue;
        int i5 = Integer.parseInt(arrayOfString4[i]);
        i4 += i5;
        i++;
        continue;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        this.a.onFinish(0.0F);
        continue;
      }
      catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
      {
        localArrayIndexOutOfBoundsException.printStackTrace();
        this.a.onFinish(0.0F);
        continue;
      }
      finally
      {
        this.a.onFinish(0.0F);
      }
      label350: k++;
      continue;
      label356: n++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzh
 * JD-Core Version:    0.6.2
 */