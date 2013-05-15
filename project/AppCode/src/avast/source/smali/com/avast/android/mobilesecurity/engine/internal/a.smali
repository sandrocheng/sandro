.class public Lcom/avast/android/mobilesecurity/engine/internal/a;
.super Ljava/lang/Object;
.source "ASN1Parser.java"


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->b:[B

    .line 32
    return-void
.end method

.method private a(B)I
    .locals 1
    .parameter

    .prologue
    .line 165
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private a([B)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 201
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 206
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x80

    add-int/lit8 v0, v0, 0x1

    .line 208
    :cond_0
    return v0
.end method

.method private a([BI)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 178
    if-ge p2, v0, :cond_1

    .line 179
    const/4 v0, -0x1

    .line 189
    :cond_0
    return v0

    .line 181
    :cond_1
    const/4 v1, 0x0

    .line 183
    if-le p2, v0, :cond_2

    .line 184
    const/4 v0, 0x2

    move v3, v0

    move v0, v1

    move v1, v3

    .line 185
    :goto_0
    if-gt v1, p2, :cond_0

    .line 186
    shl-int/lit8 v0, v0, 0x8

    .line 187
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v0

    .line 185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_0
.end method

.method private a([BLjava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([B)I

    move-result v0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([BI)I

    move-result v3

    .line 99
    add-int/lit8 v2, v0, 0x1

    .line 100
    aget-byte v0, p1, v5

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a(B)I

    move-result v1

    .line 102
    new-array v0, v3, [B

    .line 103
    invoke-static {p1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v5

    .line 105
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 106
    sparse-switch v1, :sswitch_data_0

    .line 116
    const-string v0, "/1/0/4/0/4"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 112
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([BLjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    move v4, v1

    .line 135
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 153
    :goto_2
    return v0

    .line 120
    :cond_0
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->b:[B

    .line 121
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->b:[B

    invoke-static {p1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 132
    add-int v0, v2, v3

    goto :goto_1

    .line 138
    :cond_2
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    .line 139
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    aget-byte v1, v2, v5

    invoke-direct {p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a(B)I

    move-result v1

    .line 142
    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([B)I

    move-result v6

    .line 143
    invoke-direct {p0, v2, v6}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([BI)I

    move-result v3

    .line 144
    add-int/lit8 v2, v6, 0x1

    add-int/2addr v2, v0

    .line 147
    new-array v0, v3, [B

    .line 148
    invoke-static {p1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 153
    goto :goto_2

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()[B
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([B)I

    move-result v4

    .line 42
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    invoke-direct {p0, v0, v4}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([BI)I

    move-result v1

    .line 46
    new-array v0, v1, [B

    .line 47
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v5, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    .line 49
    :goto_0
    if-ge v2, v1, :cond_0

    .line 50
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    aget-byte v5, v5, v3

    invoke-direct {p0, v5}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a(B)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v0, v1

    .line 66
    :goto_1
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    array-length v2, v2

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v5, v0

    sub-int/2addr v2, v5

    new-array v2, v2, [B

    .line 68
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->a:[B

    array-length v7, v7

    add-int/lit8 v8, v4, 0x1

    add-int/2addr v8, v0

    sub-int/2addr v7, v8

    invoke-static {v5, v6, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_0

    .line 57
    :sswitch_0
    const-string v5, "/"

    invoke-direct {p0, v0, v5}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a([BLjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    .line 58
    goto :goto_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a;->b:[B

    return-object v0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method
