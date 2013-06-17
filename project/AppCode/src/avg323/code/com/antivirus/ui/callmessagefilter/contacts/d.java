package com.antivirus.ui.callmessagefilter.contacts;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.antivirus.ui.callmessagefilter.fragment.r;
import com.avg.toolkit.f.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class d extends Filter
{
  protected d(b paramb)
  {
  }

  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (b.a(this.a) == null);
    synchronized (b.b(this.a))
    {
      b.a(this.a, new ArrayList(b.c(this.a)));
      if ((paramCharSequence != null) && (paramCharSequence.length() != 0))
        if (Integer.parseInt(paramCharSequence.toString()) != r.a.a())
          break label153;
    }
    while (true)
    {
      synchronized (b.d(this.a))
      {
        ArrayList localArrayList1 = new ArrayList(b.e(this.a));
        localFilterResults.values = localArrayList1;
        localFilterResults.count = localArrayList1.size();
        b.a(this.a, -1);
        return localFilterResults;
        localObject6 = finally;
        throw localObject6;
      }
      label153: ArrayList localArrayList3;
      while (true)
      {
        g localg;
        com.antivirus.ui.callmessagefilter.a.d locald;
        synchronized (b.f(this.a))
        {
          ArrayList localArrayList2 = new ArrayList(b.g(this.a));
          localArrayList3 = new ArrayList();
          b.a(this.a, Integer.parseInt(paramCharSequence.toString()));
          Iterator localIterator = localArrayList2.iterator();
          if (!localIterator.hasNext())
            break;
          localg = (g)localIterator.next();
          locald = localg.j();
          switch (b.h(this.a))
          {
          default:
            a.a();
          case 1:
          case 2:
          }
        }
        if ((localg.i().equals(com.antivirus.ui.callmessagefilter.b.d.c)) || (locald.equals(com.antivirus.ui.callmessagefilter.a.d.d)) || (locald.equals(com.antivirus.ui.callmessagefilter.a.d.e)) || (locald.equals(com.antivirus.ui.callmessagefilter.a.d.c)))
        {
          localArrayList3.add(localg);
          continue;
          if (localg.i().equals(com.antivirus.ui.callmessagefilter.b.d.e))
            localArrayList3.add(localg);
        }
      }
      localFilterResults.values = localArrayList3;
      localFilterResults.count = localArrayList3.size();
    }
  }

  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    b.b(this.a, (List)paramFilterResults.values);
    if (paramFilterResults.count > 0)
      this.a.notifyDataSetChanged();
    while (true)
    {
      return;
      this.a.notifyDataSetInvalidated();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.d
 * JD-Core Version:    0.6.2
 */