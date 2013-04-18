.class public final Lcom/hoi/a/g;
.super Ljunit/framework/TestCase;
.source "Base64Test.java"


# static fields
.field private static final a:Ljava/lang/String; = "Base64Test"

.field private static final b:[B = null

.field private static final c:Ljava/lang/String; = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hoi/a/g;->b:[B

    return-void

    :array_0
    .array-data 0x1
        0xfft
        0xeet
        0xddt
        0xcct
        0xbbt
        0xaat
        0x99t
        0x88t
        0x77t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {p0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "hello, world"

    const-string v1, "aGVsbG8sIHdvcmxk"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "aGVsbG8sIHdvcmxk="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 84
    const-string v0, "aGVsbG8sIHdvcmxk=="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 85
    const-string v0, "aGVsbG8sIHdvcmxk ="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 86
    const-string v0, "aGVsbG8sIHdvcmxk = = "

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 87
    const-string v0, "hello, world"

    const-string v1, " aGVs bG8s IHdv cmxk  "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "hello, world"

    const-string v1, " aGV sbG8 sIHd vcmx k "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "hello, world"

    const-string v1, " aG VsbG 8sIH dvcm xk "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "hello, world"

    const-string v1, " a GVsb G8sI Hdvc mxk "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "hello, world"

    const-string v1, " a G V s b G 8 s I H d v c m x k "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "hello, world"

    const-string v1, "_a*G_V*s_b*G_8*s_I*H_d*v_c*m_x*k_"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "hello, world"

    const-string v1, "aGVsbG8sIHdvcmxk"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPyE="

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPyE"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "aGVsbG8sIHdvcmxkPyE=="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 99
    const-string v0, "aGVsbG8sIHdvcmxkPyE =="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 100
    const-string v0, "aGVsbG8sIHdvcmxkPyE = = "

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 101
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPy E="

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPy E"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPy E ="

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPy E "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPy E = "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "hello, world?!"

    const-string v1, "aGVsbG8sIHdvcmxkPy E   "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkLg=="

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkLg"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "aGVsbG8sIHdvcmxkLg="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 112
    const-string v0, "aGVsbG8sIHdvcmxkLg ="

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 113
    const-string v0, "aGVsbG8sIHdvcmxkLg = "

    invoke-static {v0}, Lcom/hoi/a/g;->b(Ljava/lang/String;)V

    .line 114
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkL g=="

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkL g"

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkL g =="

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkL g "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkL g = = "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "hello, world."

    const-string v1, "aGVsbG8sIHdvcmxkL g   "

    invoke-static {v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private static a([BI[B)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    array-length v0, p2

    invoke-static {p1, v0}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 59
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 60
    aget-byte v1, p0, v0

    aget-byte v2, p2, v0

    invoke-static {v1, v2}, Lcom/hoi/a/g;->assertEquals(BB)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method private static a([BI[BI)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-static {p1, p3}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 67
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 68
    aget-byte v1, p0, v0

    aget-byte v2, p2, v0

    invoke-static {v1, v2}, Lcom/hoi/a/g;->assertEquals(BB)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method private static a([B[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 75
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 76
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    invoke-static {v1, v2}, Lcom/hoi/a/g;->assertEquals(BB)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method private static b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const-string v1, ""

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/hoi/a/g;->a([BI[B)V

    .line 128
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x1

    const-string v2, "/w=="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 129
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x2

    const-string v2, "/+4="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 130
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x3

    const-string v2, "/+7d"

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 131
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x4

    const-string v2, "/+7dzA=="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 132
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x5

    const-string v2, "/+7dzLs="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 133
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x6

    const-string v2, "/+7dzLuq"

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 134
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x7

    const-string v2, "/+7dzLuqmQ=="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 135
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/16 v1, 0x8

    const-string v2, "/+7dzLuqmYg="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 136
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    .line 51
    const-string v0, "should have failed to decode"

    invoke-static {v0}, Lcom/hoi/a/g;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 139
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const-string v1, ""

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/hoi/a/g;->a([BI[B)V

    .line 140
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const-string v1, "_w=="

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/hoi/a/g;->a([BI[B)V

    .line 141
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const-string v1, "_-4="

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/hoi/a/g;->a([BI[B)V

    .line 142
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const-string v1, "_-7d"

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v7, v1}, Lcom/hoi/a/g;->a([BI[B)V

    .line 143
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x4

    const-string v2, "_-7dzA=="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 144
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x5

    const-string v2, "_-7dzLs="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 145
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x6

    const-string v2, "_-7dzLuq"

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 146
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const/4 v1, 0x7

    const-string v2, "_-7dzLuqmQ=="

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hoi/a/g;->a([BI[B)V

    .line 147
    sget-object v0, Lcom/hoi/a/g;->b:[B

    const-string v1, "_-7dzLuqmYg="

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/hoi/a/g;->a([BI[B)V

    .line 149
    const-string v0, ""

    sget-object v1, Lcom/hoi/a/g;->b:[B

    invoke-static {v1, v4}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "_w==\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    invoke-static {v1, v5}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "_-4=\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    invoke-static {v1, v6}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "_-7d\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    invoke-static {v1, v7}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "_-7dzA==\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "_-7dzLs=\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "_-7dzLuq\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "_-7dzLuqmQ==\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "_-7dzLuqmYg=\n"

    sget-object v1, Lcom/hoi/a/g;->b:[B

    invoke-static {v1, v3}, Lcom/hoi/a/a;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private static d()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    const-string v0, "YQ==\n"

    const-string v1, "a"

    invoke-static {v1, v3}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "YQ=="

    const-string v1, "a"

    invoke-static {v1, v5}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "YQ\n"

    const-string v1, "a"

    invoke-static {v1, v4}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "YQ"

    const-string v1, "a"

    invoke-static {v1, v6}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "YQ==\r\n"

    const-string v1, "a"

    invoke-static {v1, v7}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "YQ\r\n"

    const-string v1, "a"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "YWI=\n"

    const-string v1, "ab"

    invoke-static {v1, v3}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "YWI="

    const-string v1, "ab"

    invoke-static {v1, v5}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "YWI\n"

    const-string v1, "ab"

    invoke-static {v1, v4}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "YWI"

    const-string v1, "ab"

    invoke-static {v1, v6}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "YWI=\r\n"

    const-string v1, "ab"

    invoke-static {v1, v7}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "YWI\r\n"

    const-string v1, "ab"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "YWJj\n"

    const-string v1, "abc"

    invoke-static {v1, v3}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "YWJj"

    const-string v1, "abc"

    invoke-static {v1, v5}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "YWJj\n"

    const-string v1, "abc"

    invoke-static {v1, v4}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "YWJj"

    const-string v1, "abc"

    invoke-static {v1, v6}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "YWJj\r\n"

    const-string v1, "abc"

    invoke-static {v1, v7}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "YWJj\r\n"

    const-string v1, "abc"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "YWJjZA==\n"

    const-string v1, "abcd"

    invoke-static {v1, v3}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "YWJjZA=="

    const-string v1, "abcd"

    invoke-static {v1, v5}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "YWJjZA\n"

    const-string v1, "abcd"

    invoke-static {v1, v4}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "YWJjZA"

    const-string v1, "abcd"

    invoke-static {v1, v6}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "YWJjZA==\r\n"

    const-string v1, "abcd"

    invoke-static {v1, v7}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "YWJjZA\r\n"

    const-string v1, "abcd"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private static e()V
    .locals 15

    .prologue
    .line 191
    const-string v0, "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd"

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "efg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "efgh"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "efghi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    const-string v6, "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi"

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Y2Q=\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Y2Rl\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Y2Rl\nZg==\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Y2Rl\nZmc=\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Y2Rl\nZmdo\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 204
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "Y2Rl\nZmdoaQ==\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v12, "="

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v0, v13}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v12, "="

    const-string v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v1, v13}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v12, "="

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v2, v13}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v12, "="

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v3, v13}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v12, "="

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v4, v13}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v12, "="

    const-string v13, ""

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v5, v13}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v12, "\n"

    const-string v13, ""

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x2

    invoke-static {v0, v12}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "\n"

    const-string v7, ""

    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v3, v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v4, v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v5, v1}, Lcom/hoi/a/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hoi/a/g;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private static f()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    new-array v0, v9, [B

    fill-array-data v0, :array_0

    .line 242
    const/16 v1, 0x64

    new-array v1, v1, [B

    .line 244
    new-instance v2, Lcom/hoi/a/d;

    invoke-direct {v2, v9, v1}, Lcom/hoi/a/d;-><init>(I[B)V

    .line 247
    invoke-virtual {v2, v0, v5, v9, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 248
    const-string v1, "YWJj"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, v2, Lcom/hoi/a/d;->a:[B

    iget v4, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v1, v8, v3, v4}, Lcom/hoi/a/g;->a([BI[BI)V

    .line 249
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 251
    invoke-virtual {v2, v0, v5, v9, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 252
    const-string v1, "YWJj"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, v2, Lcom/hoi/a/d;->a:[B

    iget v4, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v1, v8, v3, v4}, Lcom/hoi/a/g;->a([BI[BI)V

    .line 253
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 255
    invoke-virtual {v2, v0, v5, v6, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 256
    iget v1, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 257
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v6, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 259
    invoke-virtual {v2, v0, v5, v6, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 260
    iget v1, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 261
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v7, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 263
    invoke-virtual {v2, v0, v5, v6, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 264
    const-string v1, "YWFh"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, v2, Lcom/hoi/a/d;->a:[B

    iget v4, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v1, v8, v3, v4}, Lcom/hoi/a/g;->a([BI[BI)V

    .line 265
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 267
    invoke-virtual {v2, v0, v5, v7, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 268
    iget v1, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 269
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v7, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 271
    invoke-virtual {v2, v0, v5, v7, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 272
    const-string v1, "YWJh"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, v2, Lcom/hoi/a/d;->a:[B

    iget v4, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v1, v8, v3, v4}, Lcom/hoi/a/g;->a([BI[BI)V

    .line 273
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v6, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 275
    invoke-virtual {v2, v0, v5, v7, v5}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 276
    const-string v1, "YmFi"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, v2, Lcom/hoi/a/d;->a:[B

    iget v4, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v1, v8, v3, v4}, Lcom/hoi/a/g;->a([BI[BI)V

    .line 277
    iget v1, v2, Lcom/hoi/a/d;->d:I

    invoke-static {v5, v1}, Lcom/hoi/a/g;->assertEquals(II)V

    .line 279
    invoke-virtual {v2, v0, v5, v6, v6}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 280
    const-string v0, "YQ"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, v2, Lcom/hoi/a/d;->a:[B

    iget v2, v2, Lcom/hoi/a/d;->b:I

    invoke-static {v0, v7, v1, v2}, Lcom/hoi/a/g;->a([BI[BI)V

    .line 281
    return-void

    .line 241
    :array_0
    .array-data 0x1
        0x61t
        0x62t
        0x63t
    .end array-data
.end method

.method private static g()V
    .locals 16

    .prologue
    .line 307
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 313
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 314
    new-instance v2, Ljava/util/Random;

    const-wide/16 v3, 0x7db0

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 318
    const-string v3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci."

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 320
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    aget v6, v0, v5

    .line 321
    invoke-static {v3, v6}, Lcom/hoi/a/a;->c([BI)[B

    move-result-object v7

    .line 325
    array-length v8, v3

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [B

    .line 332
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 333
    new-instance v10, Lcom/hoi/a/e;

    invoke-direct {v10, v9, v6}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;I)V

    .line 334
    const/4 v9, 0x0

    .line 335
    :goto_1
    array-length v11, v8

    sub-int/2addr v11, v9

    invoke-virtual {v10, v8, v9, v11}, Lcom/hoi/a/e;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 336
    add-int/2addr v9, v11

    goto :goto_1

    .line 338
    :cond_0
    invoke-static {v8, v9, v3}, Lcom/hoi/a/g;->a([BI[B)V

    .line 341
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 342
    new-instance v10, Lcom/hoi/a/e;

    invoke-direct {v10, v9, v6}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;I)V

    .line 343
    const/4 v9, 0x0

    .line 344
    :goto_2
    invoke-virtual {v10}, Lcom/hoi/a/e;->read()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 345
    add-int/lit8 v12, v9, 0x1

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    move v9, v12

    goto :goto_2

    .line 347
    :cond_1
    invoke-static {v8, v9, v3}, Lcom/hoi/a/g;->a([BI[B)V

    .line 350
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 351
    new-instance v10, Lcom/hoi/a/e;

    invoke-direct {v10, v9, v6}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;I)V

    .line 352
    const/4 v9, 0x0

    .line 354
    :goto_3
    array-length v11, v1

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    aget v11, v1, v11

    .line 355
    if-ltz v11, :cond_2

    .line 356
    invoke-virtual {v10, v8, v9, v11}, Lcom/hoi/a/e;->read([BII)I

    move-result v11

    .line 357
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 358
    add-int/2addr v9, v11

    goto :goto_3

    .line 360
    :cond_2
    const/4 v12, 0x0

    move v15, v12

    move v12, v9

    move v9, v15

    :goto_4
    neg-int v13, v11

    if-ge v9, v13, :cond_3

    .line 361
    invoke-virtual {v10}, Lcom/hoi/a/e;->read()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 362
    add-int/lit8 v14, v12, 0x1

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    .line 360
    add-int/lit8 v9, v9, 0x1

    move v12, v14

    goto :goto_4

    :cond_3
    move v9, v12

    .line 365
    goto :goto_3

    :cond_4
    move v9, v12

    .line 366
    :cond_5
    invoke-static {v8, v9, v3}, Lcom/hoi/a/g;->a([BI[B)V

    .line 371
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 372
    new-instance v10, Lcom/hoi/a/e;

    const/4 v11, 0x1

    invoke-direct {v10, v9, v6, v11}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;IZ)V

    .line 373
    const/4 v9, 0x0

    .line 374
    :goto_5
    array-length v11, v8

    sub-int/2addr v11, v9

    invoke-virtual {v10, v8, v9, v11}, Lcom/hoi/a/e;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_6

    .line 375
    add-int/2addr v9, v11

    goto :goto_5

    .line 377
    :cond_6
    invoke-static {v8, v9, v7}, Lcom/hoi/a/g;->a([BI[B)V

    .line 380
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 381
    new-instance v10, Lcom/hoi/a/e;

    const/4 v11, 0x1

    invoke-direct {v10, v9, v6, v11}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;IZ)V

    .line 382
    const/4 v9, 0x0

    .line 383
    :goto_6
    invoke-virtual {v10}, Lcom/hoi/a/e;->read()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 384
    add-int/lit8 v12, v9, 0x1

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    move v9, v12

    goto :goto_6

    .line 386
    :cond_7
    invoke-static {v8, v9, v7}, Lcom/hoi/a/g;->a([BI[B)V

    .line 389
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 390
    new-instance v10, Lcom/hoi/a/e;

    const/4 v11, 0x1

    invoke-direct {v10, v9, v6, v11}, Lcom/hoi/a/e;-><init>(Ljava/io/InputStream;IZ)V

    .line 391
    const/4 v6, 0x0

    .line 393
    :goto_7
    array-length v9, v1

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget v9, v1, v9

    .line 394
    if-ltz v9, :cond_8

    .line 395
    invoke-virtual {v10, v8, v6, v9}, Lcom/hoi/a/e;->read([BII)I

    move-result v9

    .line 396
    const/4 v11, -0x1

    if-eq v9, v11, :cond_b

    .line 397
    add-int/2addr v6, v9

    goto :goto_7

    .line 399
    :cond_8
    const/4 v11, 0x0

    move v15, v11

    move v11, v6

    move v6, v15

    :goto_8
    neg-int v12, v9

    if-ge v6, v12, :cond_9

    .line 400
    invoke-virtual {v10}, Lcom/hoi/a/e;->read()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_a

    .line 401
    add-int/lit8 v13, v11, 0x1

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 399
    add-int/lit8 v6, v6, 0x1

    move v11, v13

    goto :goto_8

    :cond_9
    move v6, v11

    .line 404
    goto :goto_7

    :cond_a
    move v6, v11

    .line 405
    :cond_b
    invoke-static {v8, v6, v7}, Lcom/hoi/a/g;->a([BI[B)V

    .line 320
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 407
    :cond_c
    return-void

    .line 307
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 313
    :array_1
    .array-data 0x4
        0xf6t 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static h()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 414
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 420
    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    .line 421
    new-instance v2, Ljava/util/Random;

    const-wide/16 v3, 0x7db0

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 425
    const-string v3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci."

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 427
    array-length v4, v0

    move v5, v14

    :goto_0
    if-ge v5, v4, :cond_8

    aget v6, v0, v5

    .line 428
    invoke-static {v3, v6}, Lcom/hoi/a/a;->c([BI)[B

    move-result-object v7

    .line 438
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    new-instance v9, Lcom/hoi/a/f;

    invoke-direct {v9, v8, v6}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;I)V

    .line 440
    invoke-virtual {v9, v3}, Lcom/hoi/a/f;->write([B)V

    .line 441
    invoke-virtual {v9}, Lcom/hoi/a/f;->close()V

    .line 442
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 443
    invoke-static {v7, v8}, Lcom/hoi/a/g;->a([B[B)V

    .line 446
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 447
    new-instance v9, Lcom/hoi/a/f;

    invoke-direct {v9, v8, v6}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;I)V

    move v10, v14

    .line 448
    :goto_1
    array-length v11, v3

    if-ge v10, v11, :cond_0

    .line 449
    aget-byte v11, v3, v10

    invoke-virtual {v9, v11}, Lcom/hoi/a/f;->write(I)V

    .line 448
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 451
    :cond_0
    invoke-virtual {v9}, Lcom/hoi/a/f;->close()V

    .line 452
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 453
    invoke-static {v7, v8}, Lcom/hoi/a/g;->a([B[B)V

    .line 457
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 458
    new-instance v9, Lcom/hoi/a/f;

    invoke-direct {v9, v8, v6}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;I)V

    move v10, v14

    .line 460
    :goto_2
    array-length v11, v3

    if-ge v10, v11, :cond_3

    .line 461
    array-length v11, v1

    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    aget v11, v1, v11

    .line 462
    array-length v12, v3

    sub-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 463
    if-ltz v11, :cond_2

    .line 464
    invoke-virtual {v9, v3, v10, v11}, Lcom/hoi/a/f;->write([BII)V

    .line 471
    :cond_1
    add-int/2addr v10, v11

    .line 473
    goto :goto_2

    .line 467
    :cond_2
    neg-int v11, v11

    array-length v12, v3

    sub-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v14

    .line 468
    :goto_3
    if-ge v12, v11, :cond_1

    .line 469
    add-int v13, v10, v12

    aget-byte v13, v3, v13

    invoke-virtual {v9, v13}, Lcom/hoi/a/f;->write(I)V

    .line 468
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 474
    :cond_3
    invoke-virtual {v9}, Lcom/hoi/a/f;->close()V

    .line 475
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 476
    invoke-static {v7, v8}, Lcom/hoi/a/g;->a([B[B)V

    .line 481
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 482
    new-instance v9, Lcom/hoi/a/f;

    invoke-direct {v9, v8, v6, v14}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;IZ)V

    .line 483
    invoke-virtual {v9, v7}, Lcom/hoi/a/f;->write([B)V

    .line 484
    invoke-virtual {v9}, Lcom/hoi/a/f;->close()V

    .line 485
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 486
    invoke-static {v3, v8}, Lcom/hoi/a/g;->a([B[B)V

    .line 489
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 490
    new-instance v9, Lcom/hoi/a/f;

    invoke-direct {v9, v8, v6, v14}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;IZ)V

    move v10, v14

    .line 491
    :goto_4
    array-length v11, v7

    if-ge v10, v11, :cond_4

    .line 492
    aget-byte v11, v7, v10

    invoke-virtual {v9, v11}, Lcom/hoi/a/f;->write(I)V

    .line 491
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 494
    :cond_4
    invoke-virtual {v9}, Lcom/hoi/a/f;->close()V

    .line 495
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 496
    invoke-static {v3, v8}, Lcom/hoi/a/g;->a([B[B)V

    .line 500
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 501
    new-instance v9, Lcom/hoi/a/f;

    invoke-direct {v9, v8, v6, v14}, Lcom/hoi/a/f;-><init>(Ljava/io/OutputStream;IZ)V

    move v6, v14

    .line 503
    :goto_5
    array-length v10, v7

    if-ge v6, v10, :cond_7

    .line 504
    array-length v10, v1

    invoke-virtual {v2, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aget v10, v1, v10

    .line 505
    array-length v11, v7

    sub-int/2addr v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 506
    if-ltz v10, :cond_6

    .line 507
    invoke-virtual {v9, v7, v6, v10}, Lcom/hoi/a/f;->write([BII)V

    .line 514
    :cond_5
    add-int/2addr v6, v10

    .line 516
    goto :goto_5

    .line 510
    :cond_6
    neg-int v10, v10

    array-length v11, v7

    sub-int/2addr v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v14

    .line 511
    :goto_6
    if-ge v11, v10, :cond_5

    .line 512
    add-int v12, v6, v11

    aget-byte v12, v7, v12

    invoke-virtual {v9, v12}, Lcom/hoi/a/f;->write(I)V

    .line 511
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 517
    :cond_7
    invoke-virtual {v9}, Lcom/hoi/a/f;->close()V

    .line 518
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 519
    invoke-static {v3, v6}, Lcom/hoi/a/g;->a([B[B)V

    .line 427
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 521
    :cond_8
    return-void

    .line 414
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 420
    :array_1
    .array-data 0x4
        0xf6t 0xfft 0xfft 0xfft
        0xfbt 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method
