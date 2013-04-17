import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class ata extends ask
{
  private ig f = new ig();
  private ArrayList<String> g;
  private String[] h = { "dcim" };
  private HashMap<String, Boolean> i = new HashMap();
  private LinkedList<File> j;

  public ata(Context paramContext, int paramInt, ArrayList<String> paramArrayList, Handler paramHandler)
  {
    super(paramContext, "FileSafeFolderScanHandlerThread", 200L, paramHandler);
    this.g = new ArrayList(paramArrayList);
    this.d = paramInt;
  }

  private void a(File paramFile, LinkedList<File> paramLinkedList, ArrayList<String> paramArrayList)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      return;
    int k = 0;
    label15: if (k < arrayOfFile.length)
      if (!arrayOfFile[k].isHidden())
      {
        if (!arrayOfFile[k].isDirectory())
          break label61;
        paramLinkedList.add(arrayOfFile[k]);
      }
    while (true)
    {
      k++;
      break label15;
      break;
      label61: if (a(arrayOfFile[k]))
        paramArrayList.add(arrayOfFile[k].getAbsolutePath());
    }
  }

  private boolean e(File paramFile)
  {
    String str1 = paramFile.getAbsolutePath().toLowerCase();
    Iterator localIterator = this.i.keySet().iterator();
    String str2;
    do
    {
      if (!localIterator.hasNext())
        break;
      str2 = (String)localIterator.next();
    }
    while (!str1.startsWith(str2 + File.separator));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void h()
  {
    int k = 0;
    if (k < this.g.size())
    {
      String str1 = (String)this.g.get(k);
      Iterator localIterator = this.g.iterator();
      String str2;
      do
      {
        if (!localIterator.hasNext())
          break;
        str2 = (String)localIterator.next();
      }
      while (!str1.startsWith(str2 + File.separator));
    }
    for (int m = 1; ; m = 0)
    {
      if (m != 0)
      {
        this.g.remove(k);
        k--;
      }
      k++;
      break;
      return;
    }
  }

  protected final lr a(lr paramlr, File paramFile)
  {
    this.j.clear();
    lq locallq = new lq();
    ArrayList localArrayList = new ArrayList();
    a(paramFile, this.j, localArrayList);
    lp locallp = (lp)paramlr;
    locallq.a(locallp.b());
    locallq.b(locallp.c());
    locallq.a(locallp.d());
    locallq.b(locallp.e());
    locallq.a(locallp.a());
    locallq.a = localArrayList;
    locallq.f = locallp.b().hashCode();
    if ((e(paramFile)) && (paramFile.getName().equalsIgnoreCase("Camera")));
    for (locallq.b = 1; ; locallq.b = 0)
      return locallq;
  }

  protected final lr b(lr paramlr, File paramFile)
  {
    this.j.clear();
    ArrayList localArrayList = new ArrayList();
    a(paramFile, this.j, localArrayList);
    boolean bool = localArrayList.isEmpty();
    lq locallq = null;
    if (!bool)
    {
      lp locallp = (lp)paramlr;
      locallq = new lq();
      locallq.a(locallp.b());
      locallq.b(locallp.c());
      locallq.a(localArrayList.size());
      locallq.a(paramFile.lastModified());
      locallq.b("");
      locallq.f = locallq.b().hashCode();
      locallq.a = localArrayList;
      if ((!e(paramFile)) || (!paramFile.getName().equalsIgnoreCase("Camera")))
        break label167;
    }
    label167: for (locallq.b = 1; ; locallq.b = 0)
    {
      this.f.a(locallq, locallq.b(), locallq.c());
      return locallq;
    }
  }

  protected final boolean b(File paramFile)
  {
    boolean bool;
    if (this.i.containsKey(paramFile.getAbsolutePath().toLowerCase()))
      if (!((Boolean)this.i.get(paramFile.getAbsolutePath().toLowerCase())).booleanValue())
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (e(paramFile))
      {
        bool = true;
      }
      else
      {
        if ((paramFile.isDirectory()) && (!paramFile.isHidden()))
        {
          if (!new File(paramFile, ".nomedia").exists());
          for (int k = 0; ; k = 1)
          {
            if (k != 0)
              break label108;
            bool = true;
            break;
          }
        }
        label108: bool = false;
      }
    }
  }

  protected final lr c(File paramFile)
  {
    this.j.clear();
    ArrayList localArrayList = new ArrayList();
    a(paramFile, this.j, localArrayList);
    lq locallq;
    if (!localArrayList.isEmpty())
    {
      locallq = new lq();
      locallq.a(paramFile.getAbsolutePath());
      locallq.a(localArrayList.size());
      locallq.b(this.d);
      locallq.a(paramFile.lastModified());
      locallq.b("");
      locallq.f = locallq.b().hashCode();
      locallq.a = localArrayList;
      if ((e(paramFile)) && (paramFile.getName().equalsIgnoreCase("Camera")))
      {
        locallq.b = 1;
        ig localig = this.f;
        ContentValues localContentValues = new ContentValues();
        ig.a(localContentValues, locallq);
        if (localig.a.a("filesafe_scanned_folders", null, localContentValues) == -1L)
          localig.a.a("filesafe_scanned_folders", null, localContentValues);
        localig.a.b();
      }
    }
    while (true)
    {
      return locallq;
      locallq.b = 0;
      break;
      locallq = null;
    }
  }

  protected final void d(File paramFile)
  {
    if (this.i.containsKey(paramFile.getAbsolutePath().toLowerCase()))
      this.i.put(paramFile.getAbsolutePath().toLowerCase(), Boolean.valueOf(true));
    this.e.addAll(this.j);
  }

  protected final void f()
  {
    this.b = System.currentTimeMillis();
    ha.a(this.a, 2131429915);
    this.j = new LinkedList();
    if ((this.g.size() == 0) || (!this.g.contains(lm.a)));
    while (true)
    {
      this.c.clear();
      ig localig = this.f;
      int k = this.d;
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = String.valueOf(k);
      List localList = localig.a("filesafe_scanned_folders", "type=?", arrayOfString1, "id ASC");
      if (localList == null)
        break;
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        lp locallp = (lp)localIterator1.next();
        ask.a locala = new ask.a(locallp);
        this.c.put(locallp.b(), locala);
      }
      Iterator localIterator2 = this.g.iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        for (String str3 : this.h)
        {
          String str4 = str2 + File.separator + str3;
          File localFile = new File(str4);
          if (localFile.exists())
          {
            this.i.put(str4.toLowerCase(), Boolean.valueOf(false));
            this.e.addFirst(localFile);
          }
        }
      }
      h();
      Iterator localIterator3 = this.g.iterator();
      while (localIterator3.hasNext())
      {
        String str1 = (String)localIterator3.next();
        this.e.addFirst(new File(str1));
      }
    }
  }

  protected final void g()
  {
    long l = System.currentTimeMillis();
    new StringBuilder("Scan Time:").append(l - this.b).toString();
    ha.a(this.a, 2131429916);
    Iterator localIterator = this.c.values().iterator();
    while (localIterator.hasNext())
    {
      ask.a locala = (ask.a)localIterator.next();
      if (locala.b)
      {
        lp locallp = (lp)locala.a;
        ig localig = this.f;
        String str = locala.a.b();
        localig.a.a("filesafe_scanned_folders", "fullpath=?", new String[] { str });
        if ((locallp.e() != null) && (!locallp.e().equals("")))
          a.d(a(this.d) + locallp.e());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ata
 * JD-Core Version:    0.6.2
 */