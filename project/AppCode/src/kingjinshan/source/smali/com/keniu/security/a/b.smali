.class public final Lcom/keniu/security/a/b;
.super Ljava/lang/Object;
.source "AXMLParser.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final n:I = 0x80003

.field private static final o:I = 0x80180


# instance fields
.field private f:Ljava/io/InputStream;

.field private g:Lcom/keniu/security/a/q;

.field private h:[I

.field private i:Ljava/io/IOException;

.field private j:I

.field private k:I

.field private l:I

.field private m:[Lcom/keniu/security/a/d;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    .line 36
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const v1, 0x80003

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->a(Ljava/io/InputStream;I)V

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/keniu/security/a/n;->a(Ljava/io/InputStream;)I

    new-instance v0, Lcom/keniu/security/a/l;

    iget-object v1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/keniu/security/a/l;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/keniu/security/a/q;->a(Lcom/keniu/security/a/l;)Lcom/keniu/security/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/a/b;->g:Lcom/keniu/security/a/q;

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const v1, 0x80180

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->a(Ljava/io/InputStream;I)V

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/keniu/security/a/n;->a(Ljava/io/InputStream;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/keniu/security/a/n;->b(Ljava/io/InputStream;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/a/b;->h:[I

    invoke-direct {p0}, Lcom/keniu/security/a/b;->h()V

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/keniu/security/a/b;->g:Lcom/keniu/security/a/q;

    invoke-virtual {v0, p1}, Lcom/keniu/security/a/q;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/keniu/security/a/b;->h(I)Lcom/keniu/security/a/d;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/a/d;->a:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/a/b;->i:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keniu/security/a/b;->i:Ljava/io/IOException;

    .line 58
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    .line 59
    invoke-direct {p0}, Lcom/keniu/security/a/b;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private c()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 69
    iget-object v0, p0, Lcom/keniu/security/a/b;->i:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/keniu/security/a/b;->i:Ljava/io/IOException;

    throw v0

    .line 73
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/keniu/security/a/b;->j:I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->k:I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keniu/security/a/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iput-object v0, p0, Lcom/keniu/security/a/b;->i:Ljava/io/IOException;

    .line 77
    invoke-direct {p0}, Lcom/keniu/security/a/b;->h()V

    .line 78
    throw v0

    .line 73
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iget-object v1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    new-array v1, v0, [Lcom/keniu/security/a/d;

    iput-object v1, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    const/4 v1, 0x0

    :goto_2
    if-eq v1, v0, :cond_2

    new-instance v2, Lcom/keniu/security/a/d;

    invoke-direct {v2}, Lcom/keniu/security/a/d;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->a:I

    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->b:I

    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->c:I

    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    iput v3, v2, Lcom/keniu/security/a/d;->d:I

    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->e:I

    iget-object v3, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/keniu/security/a/b;->h(I)Lcom/keniu/security/a/d;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/a/d;->b:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    return v0
.end method

.method private d(I)I
    .locals 2
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/keniu/security/a/b;->h(I)Lcom/keniu/security/a/d;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/a/d;->b:I

    .line 135
    iget-object v1, p0, Lcom/keniu/security/a/b;->h:[I

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/keniu/security/a/b;->h:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/keniu/security/a/b;->h:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method private e(I)I
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/keniu/security/a/b;->h(I)Lcom/keniu/security/a/d;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/a/d;->d:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/keniu/security/a/b;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/keniu/security/a/b;->l:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/keniu/security/a/b;->k:I

    return v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/keniu/security/a/b;->h(I)Lcom/keniu/security/a/d;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/a/d;->c:I

    invoke-virtual {p0, v0}, Lcom/keniu/security/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    array-length v0, v0

    goto :goto_0
.end method

.method private g(I)I
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/keniu/security/a/b;->h(I)Lcom/keniu/security/a/d;

    move-result-object v0

    iget v0, v0, Lcom/keniu/security/a/d;->e:I

    return v0
.end method

.method private final h(I)Lcom/keniu/security/a/d;
    .locals 3
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Attributes are not available."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private final h()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 178
    iput v0, p0, Lcom/keniu/security/a/b;->j:I

    .line 179
    iput v0, p0, Lcom/keniu/security/a/b;->k:I

    .line 180
    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    .line 182
    return-void
.end method

.method private final i()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 185
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const v1, 0x80003

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->a(Ljava/io/InputStream;I)V

    .line 186
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v2}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 188
    new-instance v0, Lcom/keniu/security/a/l;

    iget-object v1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lcom/keniu/security/a/l;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/keniu/security/a/q;->a(Lcom/keniu/security/a/l;)Lcom/keniu/security/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/a/b;->g:Lcom/keniu/security/a/q;

    .line 190
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    const v1, 0x80180

    invoke-static {v0, v1}, Lcom/keniu/security/a/n;->a(Ljava/io/InputStream;I)V

    .line 191
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v2}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    .line 192
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    div-int/lit8 v0, v0, 0x4

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/keniu/security/a/n;->b(Ljava/io/InputStream;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/a/b;->h:[I

    .line 197
    invoke-direct {p0}, Lcom/keniu/security/a/b;->h()V

    .line 198
    return-void
.end method

.method private final j()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x4

    .line 201
    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/keniu/security/a/b;->j:I

    .line 206
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 207
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->k:I

    .line 208
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    .line 213
    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    packed-switch v0, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/keniu/security/a/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 217
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 263
    :cond_1
    :goto_1
    iget v0, p0, Lcom/keniu/security/a/b;->j:I

    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 223
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    .line 224
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 225
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v1, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 227
    new-array v1, v0, [Lcom/keniu/security/a/d;

    iput-object v1, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    .line 228
    const/4 v1, 0x0

    :goto_2
    if-eq v1, v0, :cond_1

    .line 229
    new-instance v2, Lcom/keniu/security/a/d;

    invoke-direct {v2}, Lcom/keniu/security/a/d;-><init>()V

    .line 230
    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->a:I

    .line 231
    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->b:I

    .line 232
    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->c:I

    .line 233
    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    ushr-int/lit8 v3, v3, 0x18

    iput v3, v2, Lcom/keniu/security/a/d;->d:I

    .line 234
    iget-object v3, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v3, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v3

    iput v3, v2, Lcom/keniu/security/a/d;->e:I

    .line 235
    iget-object v3, p0, Lcom/keniu/security/a/b;->m:[Lcom/keniu/security/a/d;

    aput-object v2, v3, v1

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 241
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 242
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    goto :goto_1

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    move-result v0

    iput v0, p0, Lcom/keniu/security/a/b;->l:I

    .line 248
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 249
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    goto :goto_1

    .line 254
    :pswitch_4
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    .line 255
    iget-object v0, p0, Lcom/keniu/security/a/b;->f:Ljava/io/InputStream;

    invoke-static {v0, v4}, Lcom/keniu/security/a/n;->c(Ljava/io/InputStream;I)I

    goto/16 :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/keniu/security/a/b;->g:Lcom/keniu/security/a/q;

    invoke-virtual {v0}, Lcom/keniu/security/a/q;->a()I

    move-result v0

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 277
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 278
    const-string v0, ""

    .line 280
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/a/b;->g:Lcom/keniu/security/a/q;

    invoke-virtual {v0, p1}, Lcom/keniu/security/a/q;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
