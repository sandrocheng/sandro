import java.util.HashMap;

public final class be extends fq
  implements Cloneable
{
  private String b = "";

  public static void b()
  {
  }

  public final String a()
  {
    return this.b;
  }

  public final void a(int paramInt)
  {
    super.a(paramInt);
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final Object clone()
    throws CloneNotSupportedException
  {
    return super.clone();
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1;
    if (paramObject == null)
      bool1 = false;
    while (true)
    {
      return bool1;
      if ((paramObject instanceof be))
      {
        be localbe = (be)paramObject;
        Object localObject1 = this.a.get("isApk");
        boolean bool2;
        label46: String str5;
        label74: String str6;
        label102: String str7;
        label130: int j;
        Object localObject9;
        if (localObject1 != null)
        {
          bool2 = ((Boolean)localObject1).booleanValue();
          if (!bool2)
            break label216;
          Object localObject6 = localbe.a.get("apkPath");
          if (localObject6 == null)
            break label187;
          str5 = (String)localObject6;
          if (str5 == null)
            break label369;
          Object localObject7 = this.a.get("apkPath");
          if (localObject7 == null)
            break label193;
          str6 = (String)localObject7;
          if (str6 == null)
            break label369;
          Object localObject8 = this.a.get("apkPath");
          if (localObject8 == null)
            break label199;
          str7 = (String)localObject8;
          j = str7.toLowerCase().hashCode();
          localObject9 = localbe.a.get("apkPath");
          if (localObject9 == null)
            break label205;
        }
        label187: label193: label199: label205: for (String str8 = (String)localObject9; ; str8 = null)
        {
          if (j != str8.toLowerCase().hashCode())
            break label211;
          bool1 = true;
          break;
          bool2 = false;
          break label46;
          str5 = null;
          break label74;
          str6 = null;
          break label102;
          str7 = null;
          break label130;
        }
        label211: bool1 = false;
        continue;
        label216: Object localObject2 = this.a.get("pkgName");
        String str1;
        label239: String str2;
        label267: String str3;
        label295: int i;
        Object localObject5;
        if (localObject2 != null)
        {
          str1 = (String)localObject2;
          if (str1 == null)
            break label369;
          Object localObject3 = localbe.a.get("pkgName");
          if (localObject3 == null)
            break label346;
          str2 = (String)localObject3;
          if (str2 == null)
            break label369;
          Object localObject4 = this.a.get("pkgName");
          if (localObject4 == null)
            break label352;
          str3 = (String)localObject4;
          i = str3.hashCode();
          localObject5 = localbe.a.get("pkgName");
          if (localObject5 == null)
            break label358;
        }
        label346: label352: label358: for (String str4 = (String)localObject5; ; str4 = null)
        {
          if (i != str4.hashCode())
            break label364;
          bool1 = true;
          break;
          str1 = null;
          break label239;
          str2 = null;
          break label267;
          str3 = null;
          break label295;
        }
        label364: bool1 = false;
      }
      else
      {
        label369: bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     be
 * JD-Core Version:    0.6.2
 */