.class public final Lcom/keniu/security/f/b;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/keniu/security/f/b;->a:[C

    .line 24
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/keniu/security/f/b;->b:[B

    return-void

    .line 6
    nop

    :array_0
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
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2bt 0x0t
        0x2ft 0x0t
    .end array-data

    .line 24
    :array_1
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0xfft
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 46
    array-length v0, p0

    .line 47
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-ge v2, v0, :cond_0

    .line 52
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 53
    if-ne v3, v0, :cond_1

    .line 54
    sget-object v0, Lcom/keniu/security/f/b;->a:[C

    ushr-int/lit8 v3, v2, 0x2

    aget-char v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    sget-object v0, Lcom/keniu/security/f/b;->a:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    const-string v0, "=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 60
    if-ne v4, v0, :cond_2

    .line 61
    sget-object v0, Lcom/keniu/security/f/b;->a:[C

    ushr-int/lit8 v4, v2, 0x2

    aget-char v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    sget-object v0, Lcom/keniu/security/f/b;->a:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    sget-object v0, Lcom/keniu/security/f/b;->a:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 70
    sget-object v6, Lcom/keniu/security/f/b;->a:[C

    ushr-int/lit8 v7, v2, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    sget-object v6, Lcom/keniu/security/f/b;->a:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    sget-object v2, Lcom/keniu/security/f/b;->a:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v4, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    sget-object v2, Lcom/keniu/security/f/b;->a:[C

    and-int/lit8 v3, v4, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v5

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x3d

    const/4 v7, -0x1

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 86
    array-length v1, v0

    .line 87
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 88
    const/4 v3, 0x0

    .line 90
    :goto_0
    if-ge v3, v1, :cond_7

    .line 94
    :goto_1
    sget-object v4, Lcom/keniu/security/f/b;->b:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v0, v3

    aget-byte v3, v4, v3

    .line 96
    if-ge v5, v1, :cond_0

    if-eq v3, v7, :cond_a

    .line 97
    :cond_0
    if-eq v3, v7, :cond_7

    move v4, v5

    .line 98
    :goto_2
    sget-object v5, Lcom/keniu/security/f/b;->b:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v0, v4

    aget-byte v4, v5, v4

    .line 104
    if-ge v6, v1, :cond_1

    if-eq v4, v7, :cond_9

    .line 105
    :cond_1
    if-eq v4, v7, :cond_7

    .line 106
    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v5, v4, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v6

    .line 112
    :goto_3
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v0, v3

    .line 113
    if-ne v3, v8, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 136
    :goto_4
    return-object v0

    .line 116
    :cond_2
    sget-object v6, Lcom/keniu/security/f/b;->b:[B

    aget-byte v3, v6, v3

    .line 117
    if-ge v5, v1, :cond_3

    if-eq v3, v7, :cond_8

    .line 118
    :cond_3
    if-eq v3, v7, :cond_7

    .line 119
    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v6, v3, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_4
    move v4, v5

    .line 125
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    .line 126
    if-ne v4, v8, :cond_5

    .line 127
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_4

    .line 129
    :cond_5
    sget-object v6, Lcom/keniu/security/f/b;->b:[B

    aget-byte v4, v6, v4

    .line 130
    if-ge v5, v1, :cond_6

    if-eq v4, v7, :cond_4

    .line 131
    :cond_6
    if-eq v4, v7, :cond_7

    .line 132
    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v5

    goto :goto_0

    .line 136
    :cond_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_4

    :cond_8
    move v3, v5

    goto :goto_3

    :cond_9
    move v4, v6

    goto :goto_2

    :cond_a
    move v3, v5

    goto :goto_1
.end method
