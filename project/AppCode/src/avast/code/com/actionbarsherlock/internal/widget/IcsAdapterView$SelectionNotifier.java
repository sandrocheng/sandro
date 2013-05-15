package com.actionbarsherlock.internal.widget;

class IcsAdapterView$SelectionNotifier
  implements Runnable
{
  private IcsAdapterView$SelectionNotifier(IcsAdapterView paramIcsAdapterView)
  {
  }

  public void run()
  {
    if (this.this$0.mDataChanged)
      if (this.this$0.getAdapter() != null)
        this.this$0.post(this);
    while (true)
    {
      return;
      IcsAdapterView.access$200(this.this$0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAdapterView.SelectionNotifier
 * JD-Core Version:    0.6.2
 */