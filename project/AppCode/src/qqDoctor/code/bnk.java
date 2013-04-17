import QQPIM.AnalyseInfo;
import QQPIM.SoftInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class bnk
  implements abu.a
{
  bnk(bnd parambnd)
  {
  }

  public final void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    if (locallv.f != null)
      while (true)
      {
        int i;
        synchronized (this.a)
        {
          Iterator localIterator = bnd.t(this.a).getSoftInfo().getPicurls().iterator();
          i = 0;
          if ((!localIterator.hasNext()) || (((String)localIterator.next()).hashCode() == parammp.g))
            synchronized (bnd.a)
            {
              if (i < bnd.a.size())
              {
                bnd.a.remove(i);
                bnd.a.add(i, locallv.f);
              }
              bnd.v(this.a).notifyDataSetChanged();
              bnd.a.size();
            }
        }
        i++;
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnk
 * JD-Core Version:    0.6.2
 */