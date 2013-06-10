.class public final Lorg/antivirus/core/b/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/core/b/a;

.field public b:Lorg/antivirus/core/b/g;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/Callable;

.field private e:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/antivirus/core/b/e;->c:Landroid/content/Context;

    iput-object p2, p0, Lorg/antivirus/core/b/e;->d:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lorg/antivirus/core/b/e;->e:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lorg/antivirus/core/b/e;->a([B)[B

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
    .locals 13

    const/4 v12, -0x1

    const v4, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    sget-object v1, Lorg/antivirus/core/b/d;->a:Lorg/antivirus/core/b/d;

    new-instance v3, Lorg/antivirus/core/b/a/z;

    invoke-direct {v3}, Lorg/antivirus/core/b/a/z;-><init>()V

    new-instance v1, Lorg/antivirus/core/b/a/l;

    invoke-direct {v1}, Lorg/antivirus/core/b/a/l;-><init>()V

    new-instance v2, Lorg/antivirus/core/b/a/h;

    invoke-direct {v2}, Lorg/antivirus/core/b/a/h;-><init>()V

    :try_start_0
    invoke-virtual {v2, v3, v0, v1}, Lorg/antivirus/core/b/a/h;->a(Lorg/antivirus/core/b/a/z;Ljava/lang/String;Lorg/antivirus/core/b/a/l;)V

    iget-object v0, v3, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    sget-object v1, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    if-eq v0, v1, :cond_1

    iget-object v0, v3, Lorg/antivirus/core/b/a/z;->c:Lorg/antivirus/core/b/a/w;

    sget-object v1, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0
    :try_end_0
    .catch Lorg/antivirus/core/b/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    const-string v0, "invalid license"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v3, Lorg/antivirus/core/b/a/z;->d:Lorg/antivirus/core/b/a/w;

    sget-object v1, Lorg/antivirus/core/b/a/w;->b:Lorg/antivirus/core/b/a/w;

    if-eq v0, v1, :cond_2

    iget-object v0, v3, Lorg/antivirus/core/b/a/z;->d:Lorg/antivirus/core/b/a/w;

    sget-object v1, Lorg/antivirus/core/b/a/w;->d:Lorg/antivirus/core/b/a/w;

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0
    :try_end_1
    .catch Lorg/antivirus/core/b/a/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v0, Lorg/antivirus/core/b/f;->a:[I

    iget-object v1, v3, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iget-object v1, v1, Lorg/antivirus/core/b/a/x;->d:Lorg/antivirus/core/b/a/s;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :pswitch_0
    sget-object v6, Lorg/antivirus/core/b/d;->a:Lorg/antivirus/core/b/d;

    :goto_1
    sget-object v0, Lorg/antivirus/core/b/f;->b:[I

    iget-object v1, v3, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iget-object v1, v1, Lorg/antivirus/core/b/a/x;->g:Lorg/antivirus/core/b/a/r;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :pswitch_1
    sget-object v6, Lorg/antivirus/core/b/d;->a:Lorg/antivirus/core/b/d;

    goto :goto_1

    :pswitch_2
    sget-object v6, Lorg/antivirus/core/b/d;->b:Lorg/antivirus/core/b/d;

    goto :goto_1

    :pswitch_3
    iget-object v0, v3, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iget v0, v0, Lorg/antivirus/core/b/a/x;->h:I

    if-nez p2, :cond_4

    iget-object v1, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->a()Z

    move-result v1

    if-nez v1, :cond_3

    const-wide/16 v1, 0x0

    :goto_2
    long-to-int v1, v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    new-instance v0, Lorg/antivirus/core/b/a/a;

    const-wide/16 v1, 0x3e7

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/b/a/a;-><init>(J)V

    throw v0

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v5, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v5}, Lorg/antivirus/core/b/g;->f()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v1, v9, v1

    const-wide/32 v9, 0x5265c00

    div-long/2addr v1, v9

    goto :goto_2

    :pswitch_4
    new-instance v0, Lorg/antivirus/core/b/a/y;

    invoke-direct {v0}, Lorg/antivirus/core/b/a/y;-><init>()V

    move v0, v4

    :cond_4
    :goto_3
    sget-object v1, Lorg/antivirus/core/b/f;->c:[I

    iget-object v2, v3, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iget-object v2, v2, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    invoke-virtual {v2}, Lorg/antivirus/core/b/a/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    sget-object v2, Lorg/antivirus/core/b/b;->a:Lorg/antivirus/core/b/b;

    :goto_4
    iget-object v1, v3, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iget v5, v1, Lorg/antivirus/core/b/a/x;->l:I
    :try_end_2
    .catch Lorg/antivirus/core/b/a/a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    new-instance v1, Lorg/antivirus/core/b/k;

    invoke-direct {v1}, Lorg/antivirus/core/b/k;-><init>()V

    iget-object v1, p0, Lorg/antivirus/core/b/e;->c:Landroid/content/Context;

    const-string v9, "org.antivirus.plugin.app_locker"

    invoke-static {v9, v1}, Lorg/antivirus/core/b/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "org.antivirus_feature.feature"

    invoke-static {v9, v1}, Lorg/antivirus/core/b/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "org.antivirus.plugin.trial_to_pro"

    invoke-static {v9, v1}, Lorg/antivirus/core/b/k;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    move v1, v8

    :goto_5
    if-eqz v1, :cond_b

    sget-object v2, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    :goto_6
    iget-object v0, v3, Lorg/antivirus/core/b/a/z;->b:Lorg/antivirus/core/b/a/x;

    iget-object v0, v0, Lorg/antivirus/core/b/a/x;->e:Lorg/antivirus/core/b/a/u;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a/u;->a()I

    move-result v1

    new-instance v0, Lorg/antivirus/core/b/a;

    iget-object v3, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v3}, Lorg/antivirus/core/b/g;->g()Lorg/antivirus/core/b/b;

    move-result-object v3

    iget-object v9, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    iget-object v10, v9, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v11, "originalvendorid"

    invoke-virtual {v10, v11, v12}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getUnObfuscatedInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v12, :cond_a

    iget-object v7, v9, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v9, "originalvendorid"

    invoke-virtual {v7, v9, v5}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putUnObfuscatedInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v7, v8

    :cond_6
    :goto_7
    invoke-direct/range {v0 .. v7}, Lorg/antivirus/core/b/a;-><init>(ILorg/antivirus/core/b/b;Lorg/antivirus/core/b/b;IILorg/antivirus/core/b/d;Z)V

    iput-object v0, p0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    iget-object v0, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    iget-object v1, p0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    iget-object v1, v1, Lorg/antivirus/core/b/a;->a:Lorg/antivirus/core/b/b;

    invoke-virtual {v0}, Lorg/antivirus/core/b/g;->g()Lorg/antivirus/core/b/b;

    move-result-object v2

    invoke-virtual {v1}, Lorg/antivirus/core/b/b;->ordinal()I

    move-result v3

    invoke-virtual {v2}, Lorg/antivirus/core/b/b;->ordinal()I

    move-result v2

    if-le v3, v2, :cond_7

    iget-object v0, v0, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v2, "ficherimtvmbeyote"

    invoke-virtual {v1}, Lorg/antivirus/core/b/b;->ordinal()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putUnObfuscatedInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    if-ne p2, v8, :cond_8

    iget-object v0, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v0}, Lorg/antivirus/core/b/g;->e()J

    :cond_8
    move v7, v8

    goto/16 :goto_0

    :pswitch_5
    move v0, v4

    goto/16 :goto_3

    :pswitch_6
    :try_start_3
    sget-object v2, Lorg/antivirus/core/b/b;->c:Lorg/antivirus/core/b/b;

    goto/16 :goto_4

    :pswitch_7
    sget-object v2, Lorg/antivirus/core/b/b;->b:Lorg/antivirus/core/b/b;
    :try_end_3
    .catch Lorg/antivirus/core/b/a/a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :cond_9
    move v1, v7

    goto :goto_5

    :cond_a
    if-ne v5, v10, :cond_6

    move v7, v8

    goto :goto_7

    :cond_b
    move v4, v0

    goto :goto_6

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
        :pswitch_7
    .end packed-switch
.end method

.method private static a([B)[B
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    array-length v3, v1

    rem-int v3, v0, v3

    aget-byte v3, v1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    nop

    :array_0
    .array-data 0x1
        0xdt
        0x9t
        0x7t
    .end array-data
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/b/g;

    iget-object v3, p0, Lorg/antivirus/core/b/e;->c:Landroid/content/Context;

    invoke-direct {v0, v3}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    iget-object v0, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v0}, Lorg/antivirus/core/b/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/core/b/e;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lorg/antivirus/core/b/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v4, v3}, Lorg/antivirus/core/b/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/antivirus/core/b/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/antivirus/core/b/e;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lorg/antivirus/core/b/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/antivirus/core/b/e;->b:Lorg/antivirus/core/b/g;

    invoke-virtual {v3, v2}, Lorg/antivirus/core/b/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lorg/antivirus/core/b/e;->a(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return v1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move v1, v2

    move-object v0, v3

    goto :goto_0
.end method
