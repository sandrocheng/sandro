.class public final Lcom/b/a/i;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final a:Lcom/b/a/i;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/b/a/i;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Lcom/b/a/i;-><init>([BB)V

    sput-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/i;-><init>([BB)V

    return-void
.end method

.method private constructor <init>([BB)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/i;->c:I

    .line 51
    iput-object p1, p0, Lcom/b/a/i;->b:[B

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/i;
    .locals 3
    .parameter

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Lcom/b/a/i;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/i;-><init>([BB)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/i;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/b/a/i;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/i;-><init>([BB)V

    return-object v0
.end method

.method private static a(Ljava/nio/ByteBuffer;)Lcom/b/a/i;
    .locals 3
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/b/a/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/b/a/i;-><init>([BB)V

    return-object v1
.end method

.method private static a(Ljava/nio/ByteBuffer;I)Lcom/b/a/i;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    new-array v0, p1, [B

    .line 108
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 109
    new-instance v1, Lcom/b/a/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/b/a/i;-><init>([BB)V

    return-object v1
.end method

.method public static a(Ljava/util/List;)Lcom/b/a/i;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    .line 166
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 153
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/i;

    move-object v0, p0

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/i;

    .line 158
    iget-object v0, v0, Lcom/b/a/i;->b:[B

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    .line 160
    :cond_2
    new-array v0, v2, [B

    .line 162
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/i;

    .line 163
    iget-object v3, p0, Lcom/b/a/i;->b:[B

    iget-object v4, p0, Lcom/b/a/i;->b:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v3, p0, Lcom/b/a/i;->b:[B

    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 166
    :cond_3
    new-instance v1, Lcom/b/a/i;

    invoke-direct {v1, v0, v5}, Lcom/b/a/i;-><init>([BB)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a([B)Lcom/b/a/i;
    .locals 2
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/b/a/i;->a([BII)Lcom/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/b/a/i;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    new-array v0, p2, [B

    .line 91
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-instance v1, Lcom/b/a/i;

    invoke-direct {v1, v0, v2}, Lcom/b/a/i;-><init>([BB)V

    return-object v1
.end method

.method private a([BI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/i;->b:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-void
.end method

.method static b(I)Lcom/b/a/k;
    .locals 1
    .parameter

    .prologue
    .line 377
    new-instance v0, Lcom/b/a/k;

    invoke-direct {v0, p0}, Lcom/b/a/k;-><init>(I)V

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 233
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/i;->b:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private b(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/b/a/i;->b:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 206
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    array-length v0, v0

    .line 213
    new-array v1, v0, [B

    .line 214
    iget-object v2, p0, Lcom/b/a/i;->b:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    return-object v1
.end method

.method private g()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static h()Lcom/b/a/l;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Lcom/b/a/l;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/b/a/l;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method

.method private static i()Lcom/b/a/l;
    .locals 3

    .prologue
    .line 336
    new-instance v0, Lcom/b/a/l;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/b/a/l;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)B
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final a([BIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/i;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/b/a/i;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final d()Lcom/b/a/m;
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/b/a/m;->a([BII)Lcom/b/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 252
    if-ne p1, p0, :cond_0

    move v0, v7

    .line 274
    :goto_0
    return v0

    .line 256
    :cond_0
    instance-of v0, p1, Lcom/b/a/i;

    if-nez v0, :cond_1

    move v0, v6

    .line 257
    goto :goto_0

    .line 260
    :cond_1
    check-cast p1, Lcom/b/a/i;

    .line 261
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    array-length v0, v0

    .line 262
    iget-object v1, p1, Lcom/b/a/i;->b:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    move v0, v6

    .line 263
    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/b/a/i;->b:[B

    .line 267
    iget-object v2, p1, Lcom/b/a/i;->b:[B

    move v3, v6

    .line 268
    :goto_1
    if-ge v3, v0, :cond_4

    .line 269
    aget-byte v4, v1, v3

    aget-byte v5, v2, v3

    if-eq v4, v5, :cond_3

    move v0, v6

    .line 270
    goto :goto_0

    .line 268
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v0, v7

    .line 274
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 281
    iget v0, p0, Lcom/b/a/i;->c:I

    .line 283
    if-nez v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/b/a/i;->b:[B

    .line 285
    iget-object v1, p0, Lcom/b/a/i;->b:[B

    array-length v1, v1

    .line 288
    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 289
    mul-int/lit8 v3, v3, 0x1f

    aget-byte v4, v0, v2

    add-int/2addr v3, v4

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_0
    if-nez v3, :cond_2

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_1
    iput v0, p0, Lcom/b/a/i;->c:I

    .line 298
    :cond_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method
