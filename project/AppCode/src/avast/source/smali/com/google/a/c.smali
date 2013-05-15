.class public final Lcom/google/a/c;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final a:Lcom/google/a/c;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/a/c;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/a/c;-><init>([B)V

    sput-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/c;->c:I

    .line 51
    iput-object p1, p0, Lcom/google/a/c;->b:[B

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/a/c;
    .locals 3
    .parameter

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Lcom/google/a/c;

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/c;-><init>([B)V
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

.method public static a([B)Lcom/google/a/c;
    .locals 2
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/a/c;->a([BII)Lcom/google/a/c;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/a/c;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    new-array v0, p2, [B

    .line 91
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    new-instance v1, Lcom/google/a/c;

    invoke-direct {v1, v0}, Lcom/google/a/c;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public a(I)B
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/a/c;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/a/c;->b:[B

    array-length v0, v0

    return v0
.end method

.method public a([BIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/a/c;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/c;->b:[B

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

.method public c()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/a/c;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    if-ne p1, p0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    instance-of v2, p1, Lcom/google/a/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 257
    goto :goto_0

    .line 260
    :cond_2
    check-cast p1, Lcom/google/a/c;

    .line 261
    iget-object v2, p0, Lcom/google/a/c;->b:[B

    array-length v3, v2

    .line 262
    iget-object v2, p1, Lcom/google/a/c;->b:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    iget-object v4, p0, Lcom/google/a/c;->b:[B

    .line 267
    iget-object v5, p1, Lcom/google/a/c;->b:[B

    move v2, v1

    .line 268
    :goto_1
    if-ge v2, v3, :cond_0

    .line 269
    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    .line 270
    goto :goto_0

    .line 268
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 281
    iget v0, p0, Lcom/google/a/c;->c:I

    .line 283
    if-nez v0, :cond_2

    .line 284
    iget-object v4, p0, Lcom/google/a/c;->b:[B

    .line 285
    iget-object v0, p0, Lcom/google/a/c;->b:[B

    array-length v2, v0

    .line 288
    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 289
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    .line 288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 291
    :cond_0
    if-nez v0, :cond_1

    .line 292
    const/4 v0, 0x1

    .line 295
    :cond_1
    iput v0, p0, Lcom/google/a/c;->c:I

    .line 298
    :cond_2
    return v0
.end method
