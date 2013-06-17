.class public Lcom/avg/toolkit/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# static fields
.field private static d:Lcom/avg/toolkit/e/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/Callable;

.field private c:Ljava/util/concurrent/Callable;

.field private e:Lcom/avg/toolkit/e/g;

.field private f:Lcom/avg/toolkit/RecurringTasks/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/avg/toolkit/e/e;->b:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/avg/toolkit/e/e;->c:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static a()Lcom/avg/toolkit/e/a;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/e/e;->d:Lcom/avg/toolkit/e/a;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/avg/toolkit/e/e;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 11

    const/4 v8, 0x1

    const v4, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    sget-object v2, Lcom/avg/toolkit/e/d;->a:Lcom/avg/toolkit/e/d;

    new-instance v3, Lcom/avg/toolkit/e/a/aa;

    invoke-direct {v3}, Lcom/avg/toolkit/e/a/aa;-><init>()V

    new-instance v2, Lcom/avg/toolkit/e/a/l;

    invoke-direct {v2}, Lcom/avg/toolkit/e/a/l;-><init>()V

    new-instance v5, Lcom/avg/toolkit/e/a/h;

    invoke-direct {v5}, Lcom/avg/toolkit/e/a/h;-><init>()V

    :try_start_0
    invoke-virtual {v5, v3, v0, v2}, Lcom/avg/toolkit/e/a/h;->a(Lcom/avg/toolkit/e/a/aa;Ljava/lang/String;Lcom/avg/toolkit/e/a/l;)V

    iget-object v0, v3, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    sget-object v2, Lcom/avg/toolkit/e/a/w;->b:Lcom/avg/toolkit/e/a/w;

    if-eq v0, v2, :cond_1

    iget-object v0, v3, Lcom/avg/toolkit/e/a/aa;->c:Lcom/avg/toolkit/e/a/w;

    sget-object v2, Lcom/avg/toolkit/e/a/w;->d:Lcom/avg/toolkit/e/a/w;

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v0, v2, v3}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0
    :try_end_0
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    const-string v0, "invalid license"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v3, Lcom/avg/toolkit/e/a/aa;->d:Lcom/avg/toolkit/e/a/w;

    sget-object v2, Lcom/avg/toolkit/e/a/w;->b:Lcom/avg/toolkit/e/a/w;

    if-eq v0, v2, :cond_2

    iget-object v0, v3, Lcom/avg/toolkit/e/a/aa;->d:Lcom/avg/toolkit/e/a/w;

    sget-object v2, Lcom/avg/toolkit/e/a/w;->d:Lcom/avg/toolkit/e/a/w;

    if-eq v0, v2, :cond_2

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v0, v2, v3}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0
    :try_end_1
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/avg/toolkit/e/f;->a:[I

    iget-object v2, v3, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iget-object v2, v2, Lcom/avg/toolkit/e/a/x;->d:Lcom/avg/toolkit/e/a/s;

    invoke-virtual {v2}, Lcom/avg/toolkit/e/a/s;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v0, v2, v3}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :pswitch_0
    sget-object v6, Lcom/avg/toolkit/e/d;->a:Lcom/avg/toolkit/e/d;

    :goto_1
    sget-object v0, Lcom/avg/toolkit/e/f;->b:[I

    iget-object v2, v3, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iget-object v2, v2, Lcom/avg/toolkit/e/a/x;->g:Lcom/avg/toolkit/e/a/r;

    invoke-virtual {v2}, Lcom/avg/toolkit/e/a/r;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v0, v2, v3}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :pswitch_1
    sget-object v6, Lcom/avg/toolkit/e/d;->a:Lcom/avg/toolkit/e/d;

    goto :goto_1

    :pswitch_2
    sget-object v6, Lcom/avg/toolkit/e/d;->b:Lcom/avg/toolkit/e/d;

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iget v0, v0, Lcom/avg/toolkit/e/a/x;->h:I

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/avg/toolkit/e/e;->f()J

    move-result-wide v9

    long-to-int v2, v9

    sub-int/2addr v0, v2

    if-gez v0, :cond_3

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v2, 0x3e7

    invoke-direct {v0, v2, v3}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/avg/toolkit/e/a/y;

    invoke-direct {v0}, Lcom/avg/toolkit/e/a/y;-><init>()V

    move v0, v4

    :cond_3
    :goto_2
    sget-object v2, Lcom/avg/toolkit/e/f;->c:[I

    iget-object v5, v3, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iget-object v5, v5, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    invoke-virtual {v5}, Lcom/avg/toolkit/e/a/u;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_2

    sget-object v2, Lcom/avg/toolkit/e/b;->a:Lcom/avg/toolkit/e/b;

    :goto_3
    iget-object v5, v3, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iget v5, v5, Lcom/avg/toolkit/e/a/x;->l:I
    :try_end_2
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v1, Lcom/avg/toolkit/e/j;

    invoke-direct {v1}, Lcom/avg/toolkit/e/j;-><init>()V

    iget-object v7, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/avg/toolkit/e/j;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v2, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    :goto_4
    iget-object v0, v3, Lcom/avg/toolkit/e/a/aa;->b:Lcom/avg/toolkit/e/a/x;

    iget-object v0, v0, Lcom/avg/toolkit/e/a/x;->e:Lcom/avg/toolkit/e/a/u;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/a/u;->a()I

    move-result v1

    new-instance v0, Lcom/avg/toolkit/e/a;

    iget-object v3, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v3}, Lcom/avg/toolkit/e/g;->h()Lcom/avg/toolkit/e/b;

    move-result-object v3

    iget-object v7, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v7, v5}, Lcom/avg/toolkit/e/g;->a(I)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/avg/toolkit/e/a;-><init>(ILcom/avg/toolkit/e/b;Lcom/avg/toolkit/e/b;IILcom/avg/toolkit/e/d;Z)V

    sput-object v0, Lcom/avg/toolkit/e/e;->d:Lcom/avg/toolkit/e/a;

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    sget-object v1, Lcom/avg/toolkit/e/e;->d:Lcom/avg/toolkit/e/a;

    iget-object v1, v1, Lcom/avg/toolkit/e/a;->a:Lcom/avg/toolkit/e/b;

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/e/g;->a(Lcom/avg/toolkit/e/b;)V

    if-ne p2, v8, :cond_4

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->f()J

    :cond_4
    move v0, v8

    goto/16 :goto_0

    :pswitch_5
    move v0, v4

    goto :goto_2

    :pswitch_6
    :try_start_3
    sget-object v2, Lcom/avg/toolkit/e/b;->c:Lcom/avg/toolkit/e/b;

    goto :goto_3

    :pswitch_7
    sget-object v2, Lcom/avg/toolkit/e/b;->b:Lcom/avg/toolkit/e/b;
    :try_end_3
    .catch Lcom/avg/toolkit/e/a/a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :cond_5
    move v4, v0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private a([B)[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    array-length v3, v1

    rem-int v3, v0, v3

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    nop

    :array_0
    .array-data 0x1
        0xdt
        0x9t
        0x7t
    .end array-data
.end method

.method private g()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/avg/toolkit/e/h;

    iget-object v1, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/avg/toolkit/e/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    sget-object v2, Lcom/avg/toolkit/e/e;->d:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0, v1, v2}, Lcom/avg/toolkit/e/h;->a(Landroid/content/Context;Lcom/avg/toolkit/e/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/toolkit/e/e;->f:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v2, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/avg/toolkit/RecurringTasks/b;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAD"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    const/16 v1, 0x1194

    const/16 v2, 0x1195

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/avg/toolkit/e/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, v0, Lcom/avg/toolkit/e/i;->a:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->f:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/avg/toolkit/RecurringTasks/b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/avg/toolkit/e/e;->g()V

    goto :goto_0
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 9

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->b()V

    :cond_0
    new-instance v0, Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    const-string v2, "ALM"

    const-wide/32 v3, 0x5265c00

    const/16 v7, 0x1194

    move v6, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/avg/toolkit/RecurringTasks/b;-><init>(Landroid/content/Context;Ljava/lang/String;JZZIZ)V

    iput-object v0, p0, Lcom/avg/toolkit/e/e;->f:Lcom/avg/toolkit/RecurringTasks/b;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x1194

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/e/e;->a(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "__SAH"

    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v0, "result"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    const/16 v1, 0x3e8

    const/16 v3, 0x3ec

    invoke-static {v0, v1, v3, v2}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/toolkit/e/g;

    iget-object v3, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/avg/toolkit/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/avg/toolkit/e/e;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/e/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v4, v3}, Lcom/avg/toolkit/e/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/avg/toolkit/e/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/avg/toolkit/e/e;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/e/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v3, v2}, Lcom/avg/toolkit/e/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/avg/toolkit/e/e;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return v1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move v1, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->a()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->b()V

    return-void
.end method

.method public f()J
    .locals 4

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/toolkit/e/e;->e:Lcom/avg/toolkit/e/g;

    invoke-virtual {v2}, Lcom/avg/toolkit/e/g;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/e/e;->f:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/avg/toolkit/e/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/RecurringTasks/b;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/avg/toolkit/e/e;->d:Lcom/avg/toolkit/e/a;

    return-void
.end method
