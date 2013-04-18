.class public final Lcom/ijinshan/kinghelper/common/b;
.super Ljava/lang/Object;
.source "GB2Alpha.java"


# instance fields
.field private a:[C

.field private b:[C

.field private c:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/b;->a:[C

    .line 11
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/b;->b:[C

    .line 16
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    .line 19
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 20
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/b;->a:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/b;->b(C)I

    move-result v2

    aput v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    return-void

    .line 7
    :array_0
    .array-data 0x2
        0x4at 0x55t
        0xadt 0x82t
        0xe6t 0x64t
        0x2dt 0x64t
        0xfet 0x86t
        0xd1t 0x53t
        0x76t 0x56t
        0xc8t 0x54t
        0xc8t 0x54t
        0xfbt 0x51t
        0x80t 0x55t
        0x83t 0x57t
        0x88t 0x59t
        0xfft 0x62t
        0xe6t 0x54t
        0x6at 0x55t
        0x1ft 0x67t
        0x36t 0x71t
        0x92t 0x64t
        0x4ct 0x58t
        0x4ct 0x58t
        0x4ct 0x58t
        0x16t 0x63t
        0x14t 0x66t
        0x8bt 0x53t
        0x1dt 0x53t
        0xa7t 0x5et
    .end array-data

    .line 11
    nop

    :array_1
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method private a(C)C
    .locals 9
    .parameter

    .prologue
    const/16 v1, 0x61

    const/16 v8, 0x30

    const/4 v7, 0x1

    const/16 v6, 0x1a

    const/4 v5, 0x0

    .line 34
    if-lt p1, v1, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    .line 35
    sub-int v0, p1, v1

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    .line 52
    :goto_0
    return v0

    .line 36
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    move v0, p1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/ijinshan/kinghelper/common/b;->b(C)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v1, v1, v5

    if-ge v0, v1, :cond_2

    move v0, v8

    .line 41
    goto :goto_0

    :cond_2
    move v1, v5

    .line 44
    :goto_1
    if-ge v1, v6, :cond_7

    .line 45
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    :goto_2
    if-ge v2, v6, :cond_3

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-ne v2, v6, :cond_5

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v2, v3, v2

    if-gt v0, v2, :cond_4

    move v2, v7

    :goto_3
    if-nez v2, :cond_7

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v5

    .line 45
    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v2, v3, v2

    if-ge v0, v2, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    move v2, v5

    goto :goto_3

    .line 49
    :cond_7
    if-lt v1, v6, :cond_8

    move v0, v8

    .line 50
    goto :goto_0

    .line 52
    :cond_8
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/b;->b:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private a(II)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v0, v0, p1

    if-ge p2, v0, :cond_0

    move v0, v3

    .line 83
    :goto_0
    return v0

    .line 74
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 77
    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v2, v2, p1

    if-ne v1, v2, :cond_1

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    if-ne v0, v5, :cond_3

    .line 81
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v0, v1, v0

    if-gt p2, v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/b;->c:[I

    aget v0, v1, v0

    if-ge p2, v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private static b(C)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :try_start_0
    const-string v1, "GB2312"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    move v0, v3

    .line 97
    :goto_0
    return v0

    .line 95
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 57
    const-string v0, ""

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 61
    const/4 v2, 0x0

    move v4, v2

    move-object v2, v0

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/ijinshan/kinghelper/common/b;->a(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 67
    :goto_1
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method
