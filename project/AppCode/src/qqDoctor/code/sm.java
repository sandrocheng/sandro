final class sm
  implements Runnable
{
  sm(lv paramlv)
  {
  }

  public final void run()
  {
    if (this.a.i != null)
      this.a.i.onTaskFinish(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sm
 * JD-Core Version:    0.6.2
 */