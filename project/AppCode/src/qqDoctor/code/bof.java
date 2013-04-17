import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

final class bof extends Thread
{
  bof(bod parambod)
  {
  }

  public final void run()
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList(bod.d(this.a));
    ArrayList localArrayList3 = new ArrayList(bod.e(this.a));
    bod localbod1 = this.a;
    abe localabe1 = bod.f(this.a);
    ArrayList localArrayList4 = new ArrayList();
    List localList1 = localabe1.c(localArrayList2);
    localArrayList4.addAll(localList1);
    localArrayList2.removeAll(localList1);
    List localList2 = localabe1.d(localArrayList2);
    localArrayList4.addAll(localList2);
    localArrayList2.removeAll(localList2);
    localArrayList4.addAll(localArrayList2);
    bod.a(localbod1, localArrayList4);
    bod localbod2 = this.a;
    abe localabe2 = bod.f(this.a);
    ArrayList localArrayList5 = new ArrayList();
    List localList3 = localabe2.b(localArrayList3);
    localArrayList5.addAll(localList3);
    localArrayList3.removeAll(localList3);
    localArrayList5.addAll(localArrayList3);
    bod.b(localbod2, localArrayList5);
    localArrayList1.addAll(bod.d(this.a));
    localArrayList1.addAll(bod.e(this.a));
    bod.c(this.a, localArrayList1);
    bod.g(this.a).sendEmptyMessage(-2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bof
 * JD-Core Version:    0.6.2
 */