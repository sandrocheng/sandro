import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class fp
{
  private static HashMap<String, fp.a> a = new HashMap();
  private static HashMap<String, Integer> b = new HashMap();

  static
  {
    a.put("MP3", new fp.a(1));
    b.put("audio/mpeg", Integer.valueOf(1));
    a.put("M4A", new fp.a(2));
    b.put("audio/mp4", Integer.valueOf(2));
    a.put("WAV", new fp.a(3));
    b.put("audio/x-wav", Integer.valueOf(3));
    a.put("AMR", new fp.a(4));
    b.put("audio/amr", Integer.valueOf(4));
    a.put("AWB", new fp.a(5));
    b.put("audio/amr-wb", Integer.valueOf(5));
    a.put("WMA", new fp.a(6));
    b.put("audio/x-ms-wma", Integer.valueOf(6));
    a.put("OGG", new fp.a(7));
    b.put("application/ogg", Integer.valueOf(7));
    a.put("OGA", new fp.a(7));
    b.put("application/ogg", Integer.valueOf(7));
    a.put("AAC", new fp.a(8));
    b.put("audio/aac", Integer.valueOf(8));
    a.put("MKA", new fp.a(9));
    b.put("audio/x-matroska", Integer.valueOf(9));
    a.put("MID", new fp.a(11));
    b.put("audio/midi", Integer.valueOf(11));
    a.put("MIDI", new fp.a(11));
    b.put("audio/midi", Integer.valueOf(11));
    a.put("XMF", new fp.a(11));
    b.put("audio/midi", Integer.valueOf(11));
    a.put("RTTTL", new fp.a(11));
    b.put("audio/midi", Integer.valueOf(11));
    a.put("SMF", new fp.a(12));
    b.put("audio/sp-midi", Integer.valueOf(12));
    a.put("IMY", new fp.a(13));
    b.put("audio/imelody", Integer.valueOf(13));
    a.put("RTX", new fp.a(11));
    b.put("audio/midi", Integer.valueOf(11));
    a.put("OTA", new fp.a(11));
    b.put("audio/midi", Integer.valueOf(11));
    a.put("MPEG", new fp.a(21));
    b.put("video/mpeg", Integer.valueOf(21));
    a.put("MP4", new fp.a(21));
    b.put("video/mp4", Integer.valueOf(21));
    a.put("M4V", new fp.a(22));
    b.put("video/mp4", Integer.valueOf(22));
    a.put("3GP", new fp.a(23));
    b.put("video/3gpp", Integer.valueOf(23));
    a.put("3GPP", new fp.a(23));
    b.put("video/3gpp", Integer.valueOf(23));
    a.put("3G2", new fp.a(24));
    b.put("video/3gpp2", Integer.valueOf(24));
    a.put("3GPP2", new fp.a(24));
    b.put("video/3gpp2", Integer.valueOf(24));
    a.put("MKV", new fp.a(27));
    b.put("video/x-matroska", Integer.valueOf(27));
    a.put("WEBM", new fp.a(27));
    b.put("video/x-matroska", Integer.valueOf(27));
    a.put("TS", new fp.a(28));
    b.put("video/mp2ts", Integer.valueOf(28));
    a.put("WMV", new fp.a(25));
    b.put("video/x-ms-wmv", Integer.valueOf(25));
    a.put("ASF", new fp.a(26));
    b.put("video/x-ms-asf", Integer.valueOf(26));
    a.put("JPG", new fp.a(31));
    b.put("image/jpeg", Integer.valueOf(31));
    a.put("JPEG", new fp.a(31));
    b.put("image/jpeg", Integer.valueOf(31));
    a.put("GIF", new fp.a(32));
    b.put("image/gif", Integer.valueOf(32));
    a.put("PNG", new fp.a(33));
    b.put("image/png", Integer.valueOf(33));
    a.put("BMP", new fp.a(34));
    b.put("image/x-ms-bmp", Integer.valueOf(34));
    a.put("WBMP", new fp.a(35));
    b.put("image/vnd.wap.wbmp", Integer.valueOf(35));
    a.put("M3U", new fp.a(41));
    b.put("audio/x-mpegurl", Integer.valueOf(41));
    a.put("PLS", new fp.a(42));
    b.put("audio/x-scpls", Integer.valueOf(42));
    a.put("WPL", new fp.a(43));
    b.put("application/vnd.ms-wpl", Integer.valueOf(43));
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = a.keySet().iterator();
    while (localIterator.hasNext())
    {
      if (localStringBuilder.length() > 0)
        localStringBuilder.append(',');
      localStringBuilder.append((String)localIterator.next());
    }
    localStringBuilder.toString();
  }

  public static fp.a a(String paramString)
  {
    int i = paramString.lastIndexOf(".");
    if (i < 0);
    for (fp.a locala = null; ; locala = (fp.a)a.get(paramString.substring(i + 1).toUpperCase()))
      return locala;
  }

  public static final class a
  {
    public int a;

    a(int paramInt)
    {
      this.a = paramInt;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fp
 * JD-Core Version:    0.6.2
 */