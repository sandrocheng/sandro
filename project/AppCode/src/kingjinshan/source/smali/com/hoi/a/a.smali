.class public Lcom/hoi/a/a;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10

.field static final synthetic g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/hoi/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/hoi/a/a;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 458
    :try_start_0
    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v1, p1}, Lcom/hoi/a/a;->b([BII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 459
    :catch_0
    move-exception v0

    .line 461
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Lcom/hoi/a/c;

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    invoke-direct {v2, p1, v3}, Lcom/hoi/a/c;-><init>(I[B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v4, v1, v3}, Lcom/hoi/a/c;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v2, Lcom/hoi/a/c;->b:I

    iget-object v1, v2, Lcom/hoi/a/c;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, v2, Lcom/hoi/a/c;->a:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v2, Lcom/hoi/a/c;->b:I

    new-array v0, v0, [B

    iget-object v1, v2, Lcom/hoi/a/c;->a:[B

    iget v2, v2, Lcom/hoi/a/c;->b:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static a([BII)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v0, Lcom/hoi/a/c;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p2, v1}, Lcom/hoi/a/c;-><init>(I[B)V

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v3, p1, v1}, Lcom/hoi/a/c;->a([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget v1, v0, Lcom/hoi/a/c;->b:I

    iget-object v2, v0, Lcom/hoi/a/c;->a:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 166
    iget-object v0, v0, Lcom/hoi/a/c;->a:[B

    .line 173
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget v1, v0, Lcom/hoi/a/c;->b:I

    new-array v1, v1, [B

    .line 172
    iget-object v2, v0, Lcom/hoi/a/c;->a:[B

    iget v0, v0, Lcom/hoi/a/c;->b:I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 479
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p0, p1, v1}, Lcom/hoi/a/a;->b([BII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 480
    :catch_0
    move-exception v0

    .line 482
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static b([BII)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 512
    new-instance v0, Lcom/hoi/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/hoi/a/d;-><init>(I[B)V

    .line 515
    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 518
    iget-boolean v2, v0, Lcom/hoi/a/d;->e:Z

    if-eqz v2, :cond_2

    .line 519
    rem-int/lit8 v2, p1, 0x3

    if-lez v2, :cond_0

    .line 520
    add-int/lit8 v1, v1, 0x4

    .line 531
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Lcom/hoi/a/d;->f:Z

    if-eqz v2, :cond_1

    if-lez p1, :cond_1

    .line 532
    sub-int v2, p1, v4

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, v0, Lcom/hoi/a/d;->g:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    :goto_1
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 536
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/hoi/a/d;->a:[B

    .line 537
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1, v4}, Lcom/hoi/a/d;->a([BIIZ)Z

    .line 539
    sget-boolean v2, Lcom/hoi/a/a;->g:Z

    if-nez v2, :cond_4

    iget v2, v0, Lcom/hoi/a/d;->b:I

    if-eq v2, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 523
    :cond_2
    rem-int/lit8 v2, p1, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 525
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 526
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 532
    goto :goto_1

    .line 541
    :cond_4
    iget-object v0, v0, Lcom/hoi/a/d;->a:[B

    return-object v0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c([BI)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 496
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/hoi/a/a;->b([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static d([BI)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 136
    array-length v0, p0

    new-instance v1, Lcom/hoi/a/c;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v1, p1, v2}, Lcom/hoi/a/c;-><init>(I[B)V

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/hoi/a/c;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v1, Lcom/hoi/a/c;->b:I

    iget-object v2, v1, Lcom/hoi/a/c;->a:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/hoi/a/c;->a:[B

    :goto_0
    return-object v0

    :cond_1
    iget v0, v1, Lcom/hoi/a/c;->b:I

    new-array v0, v0, [B

    iget-object v2, v1, Lcom/hoi/a/c;->a:[B

    iget v1, v1, Lcom/hoi/a/c;->b:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
