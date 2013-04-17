import com.tencent.tmsecure.module.tools.IPackageChangedListener;

final class abg
  implements IPackageChangedListener
{
  abg(abf paramabf)
  {
  }

  public final void onPackageAdded(String paramString)
  {
    abf.a(this.a, paramString);
  }

  public final void onPackageReinstall(String paramString)
  {
  }

  public final void onPackageRemoved(String paramString)
  {
    abf.a(this.a);
    abf.a(this.a, paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abg
 * JD-Core Version:    0.6.2
 */