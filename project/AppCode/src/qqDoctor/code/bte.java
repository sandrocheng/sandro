import java.io.File;
import java.io.FileFilter;
import java.util.List;

final class bte
  implements FileFilter
{
  bte(List paramList1, boolean paramBoolean, List paramList2)
  {
  }

  public final boolean accept(File paramFile)
  {
    if ((paramFile.isDirectory()) && ((this.a == null) || (!this.a.contains(paramFile.getAbsolutePath()))));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      if ((paramFile.getAbsolutePath().toLowerCase().endsWith(".apk")) || ((this.b) && (btd.c(paramFile))))
        this.c.add(paramFile.getAbsolutePath());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bte
 * JD-Core Version:    0.6.2
 */