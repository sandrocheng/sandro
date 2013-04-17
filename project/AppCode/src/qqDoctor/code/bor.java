import java.util.Date;

public final class bor
{
  public String a;
  public Date b;
  public Date c;
  public int d;

  private bor()
  {
  }

  public bor(String paramString, Date paramDate1, Date paramDate2)
  {
    this.a = paramString;
    this.b = paramDate1;
    this.c = paramDate2;
    this.d = 1;
  }

  public static bor a(String paramString)
  {
    String[] arrayOfString = paramString.trim().split(";");
    bor localbor = new bor();
    localbor.a = arrayOfString[0];
    localbor.b = new Date(Long.parseLong(arrayOfString[1]));
    localbor.c = new Date(Long.parseLong(arrayOfString[2]));
    localbor.d = Integer.parseInt(arrayOfString[3]);
    return localbor;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bor
 * JD-Core Version:    0.6.2
 */