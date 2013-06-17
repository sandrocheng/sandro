package com.google.b;

import com.google.b.b.a;
import com.google.b.b.e;
import com.google.b.b.h;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class g
{
  // ERROR //
  public b a(a parama)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 19	com/google/b/b/a:a	()Z
    //   4: istore_2
    //   5: aload_1
    //   6: iconst_1
    //   7: invokevirtual 22	com/google/b/b/a:a	(Z)V
    //   10: aload_1
    //   11: invokestatic 26	com/google/b/a/d:a	(Lcom/google/b/b/a;)Lcom/google/b/b;
    //   14: astore 6
    //   16: aload_1
    //   17: iload_2
    //   18: invokevirtual 22	com/google/b/b/a:a	(Z)V
    //   21: aload 6
    //   23: areturn
    //   24: astore 5
    //   26: new 28	com/google/b/f
    //   29: dup
    //   30: new 30	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   37: ldc 33
    //   39: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: aload_1
    //   43: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   46: ldc 42
    //   48: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: aload 5
    //   56: invokespecial 49	com/google/b/f:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   59: athrow
    //   60: astore 4
    //   62: aload_1
    //   63: iload_2
    //   64: invokevirtual 22	com/google/b/b/a:a	(Z)V
    //   67: aload 4
    //   69: athrow
    //   70: astore_3
    //   71: new 28	com/google/b/f
    //   74: dup
    //   75: new 30	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   82: ldc 33
    //   84: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_1
    //   88: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   91: ldc 42
    //   93: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: aload_3
    //   100: invokespecial 49	com/google/b/f:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   103: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   10	16	24	java/lang/StackOverflowError
    //   10	16	60	finally
    //   26	60	60	finally
    //   71	104	60	finally
    //   10	16	70	java/lang/OutOfMemoryError
  }

  public b a(Reader paramReader)
  {
    b localb;
    try
    {
      a locala = new a(paramReader);
      localb = a(locala);
      if ((!localb.i()) && (locala.g() != e.j))
        throw new i("Did not consume the entire document.");
    }
    catch (h localh)
    {
      throw new i(localh);
    }
    catch (IOException localIOException)
    {
      throw new c(localIOException);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new i(localNumberFormatException);
    }
    return localb;
  }

  public b a(String paramString)
  {
    return a(new StringReader(paramString));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.b.g
 * JD-Core Version:    0.6.2
 */