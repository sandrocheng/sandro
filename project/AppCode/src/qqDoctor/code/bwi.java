import com.tencent.tmsecure.module.tools.IPackageChangedListener;

final class bwi
  implements IPackageChangedListener
{
  bwi(bwh parambwh)
  {
  }

  public final void onPackageAdded(String paramString)
  {
    String[] arrayOfString = { paramString };
    this.a.a(arrayOfString);
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwi
 * JD-Core Version:    0.6.2
 */