import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import java.io.File;
import java.util.List;

public class bwv<T extends NetworkLoadTask> extends bwu<T>
{
  public static final String TEMPFILE_SUFFIX = ".tmp";
  private String a;

  protected void doBeforeContinue(T paramT)
  {
    if (paramT.mThread != null)
    {
      ((bww)paramT.mThread).a();
      paramT.mThread = null;
    }
    String str1 = paramT.mParentPath + File.separator + paramT.mName;
    String str2 = str1 + ".tmp";
    File localFile1 = new File(str2);
    File localFile2 = new File(str1);
    if ((!paramT.isSupportRange) && (localFile1.exists()) && (!paramT.isOnChangeRetry))
      localFile1.delete();
    if ((localFile2.exists()) && (localFile2.length() == paramT.mSize) && (paramT.mSize > 0L));
    for (String str3 = str1; ; str3 = str2)
    {
      paramT.mCurrentSize = localFile2.length();
      if (paramT.mSize > 0L)
      {
        paramT.mProgress = ((float)paramT.mCurrentSize / (float)paramT.mSize);
        if (((paramT.isSupportRange) || (paramT.isOnChangeRetry)) && (paramT.mCurrentSize != 0L))
          break label244;
      }
      label244: for (bww localbww = new bww(paramT, false, str3); ; localbww = new bww(paramT, true, str3))
      {
        localbww.a(this);
        paramT.mThread = localbww;
        return;
        paramT.mProgress = 0.0F;
        break;
      }
      localFile2 = localFile1;
    }
  }

  protected void doBeforeStart(T paramT)
  {
    if (paramT.mThread != null)
    {
      ((bww)paramT.mThread).a();
      paramT.mThread = null;
    }
    if ((paramT.mParentPath == null) || (paramT.mParentPath.length() == 0))
      paramT.mParentPath = this.a;
    String str1 = this.a + File.separator + paramT.mName;
    String str2 = str1 + ".tmp";
    File localFile1 = new File(str1);
    if (localFile1.exists())
      localFile1.delete();
    File localFile2 = new File(str2);
    if (localFile2.exists())
      localFile2.delete();
    paramT.mCurrentSize = 0L;
    bww localbww = new bww(paramT, false, str2);
    localbww.a(this);
    paramT.mThread = localbww;
  }

  protected void doDeleteFile(T paramT)
  {
    doPause(paramT);
    String str = paramT.mParentPath + File.separator + paramT.mName;
    File localFile1 = new File(str);
    if (localFile1.exists())
      localFile1.delete();
    File localFile2 = new File(str + ".tmp");
    if (localFile2.exists())
      localFile2.delete();
  }

  protected void doDeleteFile(List<T> paramList)
  {
    int i = paramList.size();
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      doDeleteFile((NetworkLoadTask)paramList.get(j));
    }
  }

  protected void doFinish(T paramT)
  {
    String str = paramT.mParentPath + File.separator + paramT.mName;
    File localFile1 = new File(str);
    File localFile2 = new File(str + ".tmp");
    if (localFile2.exists())
    {
      if (localFile1.exists())
        localFile1.delete();
      localFile2.renameTo(localFile1);
    }
  }

  protected void doPause(T paramT)
  {
    if (paramT.mThread != null)
    {
      ((bww)paramT.mThread).a();
      paramT.mThread = null;
    }
    File localFile = new File(paramT.mParentPath + File.separator + paramT.mName);
    if ((localFile.exists()) && (localFile.length() == paramT.mSize) && (paramT.mSize > 0L));
  }

  public void setDownloadDirPath(String paramString)
  {
    this.a = paramString;
    File localFile = new File(this.a);
    if (!localFile.exists())
      localFile.mkdirs();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwv
 * JD-Core Version:    0.6.2
 */