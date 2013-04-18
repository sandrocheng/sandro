.class public final Lcom/c/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/c/a/a/c;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x3d

    const/4 v9, 0x0

    .line 103
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 104
    div-int/lit8 v1, v0, 0x4c

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 105
    new-array v0, v0, [B

    .line 106
    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    move v2, v9

    move v3, v9

    move v4, v9

    .line 107
    :goto_0
    if-ge v3, v1, :cond_1

    .line 108
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/c/a/a/c;->a:[B

    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v0, v4

    .line 109
    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/c/a/a/c;->a:[B

    aget-byte v7, p0, v3

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    .line 111
    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/c/a/a/c;->a:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v0, v4

    .line 113
    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/c/a/a/c;->a:[B

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    .line 114
    sub-int v5, v4, v2

    rem-int/lit8 v5, v5, 0x4c

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 115
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    aput-byte v6, v0, v4

    .line 116
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .line 107
    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 121
    :cond_1
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    move v1, v4

    .line 136
    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v9, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    .line 123
    :pswitch_0
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/c/a/a/c;->a:[B

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    .line 124
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/c/a/a/c;->a:[B

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-byte v1, v4, v1

    aput-byte v1, v0, v2

    .line 125
    add-int/lit8 v1, v3, 0x1

    aput-byte v10, v0, v3

    .line 126
    add-int/lit8 v2, v1, 0x1

    aput-byte v10, v0, v1

    move v1, v2

    .line 127
    goto :goto_1

    .line 129
    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/c/a/a/c;->a:[B

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    .line 130
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/c/a/a/c;->a:[B

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v4, v4, v5

    aput-byte v4, v0, v2

    .line 132
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/c/a/a/c;->a:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    .line 133
    add-int/lit8 v1, v2, 0x1

    aput-byte v10, v0, v2

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
