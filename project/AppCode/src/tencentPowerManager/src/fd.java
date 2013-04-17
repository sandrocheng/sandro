import java.io.File;

class fd<T extends fh> extends fb<T>
{
  private String a;

  public void a(String paramString)
  {
    this.a = paramString;
    File localFile = new File(this.a);
    if (!localFile.exists())
      localFile.mkdirs();
  }

  protected final void f(T paramT)
  {
    if (paramT.k != null)
    {
      ((ff)paramT.k).a();
      paramT.k = null;
    }
    if ((paramT.f == null) || (paramT.f.length() == 0))
      paramT.f = this.a;
    String str1 = this.a + File.separator + paramT.e;
    String str2 = str1 + ".tmp";
    File localFile1 = new File(str1);
    if (localFile1.exists())
      localFile1.delete();
    File localFile2 = new File(str2);
    if (localFile2.exists())
      localFile2.delete();
    paramT.h = 0L;
    ff localff = new ff(paramT, false, str2);
    localff.a(this);
    paramT.k = localff;
  }

  protected final void g(T paramT)
  {
    if (paramT.k != null)
    {
      ((ff)paramT.k).a();
      paramT.k = null;
    }
    String str1 = paramT.f + File.separator + paramT.e;
    String str2 = str1 + ".tmp";
    File localFile1 = new File(str2);
    File localFile2 = new File(str1);
    if ((!paramT.c) && (localFile1.exists()))
      localFile1.delete();
    if ((localFile2.exists()) && (localFile2.length() == paramT.g) && (paramT.g > 0L));
    for (String str3 = str1; ; str3 = str2)
    {
      paramT.h = localFile2.length();
      if (paramT.g > 0L)
      {
        paramT.i = ((float)paramT.h / (float)paramT.g);
        if ((paramT.c) && (paramT.h != 0L))
          break label230;
      }
      label230: for (ff localff = new ff(paramT, false, str3); ; localff = new ff(paramT, true, str3))
      {
        localff.a(this);
        paramT.k = localff;
        return;
        paramT.i = 0.0F;
        break;
      }
      localFile2 = localFile1;
    }
  }

  protected final void h(T paramT)
  {
    String str = paramT.f + File.separator + paramT.e;
    File localFile1 = new File(str);
    File localFile2 = new File(str + ".tmp");
    if (localFile2.exists())
    {
      if (localFile1.exists())
        localFile1.delete();
      localFile2.renameTo(localFile1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fd
 * JD-Core Version:    0.6.2
 */