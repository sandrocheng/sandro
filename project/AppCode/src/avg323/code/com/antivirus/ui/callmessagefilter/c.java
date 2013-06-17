package com.antivirus.ui.callmessagefilter;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class c extends Filter
{
  protected c(a parama)
  {
  }

  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    Filter.FilterResults localFilterResults = new Filter.FilterResults();
    if (this.a.b == null);
    synchronized (this.a.c)
    {
      this.a.b = new ArrayList(this.a.a);
      if (paramCharSequence != null)
        if (paramCharSequence.length() != 0)
          break label127;
    }
    while (true)
    {
      synchronized (this.a.c)
      {
        ArrayList localArrayList1 = new ArrayList(this.a.b);
        localFilterResults.values = localArrayList1;
        localFilterResults.count = localArrayList1.size();
        return localFilterResults;
        localObject6 = finally;
        throw localObject6;
      }
      label127: ArrayList localArrayList3;
      synchronized (this.a.c)
      {
        ArrayList localArrayList2 = new ArrayList(this.a.b);
        localArrayList3 = new ArrayList();
        List localList = this.a.a(paramCharSequence.toString());
        Iterator localIterator = localArrayList2.iterator();
        while (localIterator.hasNext())
        {
          d locald = (d)localIterator.next();
          if (localList.contains(locald.d()))
            localArrayList3.add(locald);
        }
      }
      localFilterResults.values = localArrayList3;
      localFilterResults.count = localArrayList3.size();
    }
  }

  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    this.a.a = ((List)paramFilterResults.values);
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
 * Qualified Name:     com.antivirus.ui.callmessagefilter.c
 * JD-Core Version:    0.6.2
 */