package com.google.a.a.a;

import java.util.Random;

class b
{
  private static final b a = new b();
  private int b;
  private Random c = new Random();

  static b a()
  {
    return a;
  }

  int b()
  {
    this.b = (1 + this.c.nextInt(2147483646));
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a.b
 * JD-Core Version:    0.6.2
 */