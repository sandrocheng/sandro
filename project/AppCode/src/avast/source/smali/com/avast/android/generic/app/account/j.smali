.class Lcom/avast/android/generic/app/account/j;
.super Landroid/os/AsyncTask;
.source "AccountFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountFragment;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/j;-><init>(Lcom/avast/android/generic/app/account/AccountFragment;)V

    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->s(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/k;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/account/k;-><init>(Lcom/avast/android/generic/app/account/j;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_0
    return-void
.end method

.method private a(Lcom/avast/android/generic/internet/c/g;)V
    .locals 2
    .parameter

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/g;->a()Lcom/avast/android/generic/internet/c/h;

    move-result-object v0

    .line 398
    if-nez v0, :cond_0

    .line 399
    sget-object v0, Lcom/avast/android/generic/internet/c/h;->h:Lcom/avast/android/generic/internet/c/h;

    .line 401
    :cond_0
    sget-object v1, Lcom/avast/android/generic/app/account/i;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 419
    sget v0, Lcom/avast/android/generic/z;->cx:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    .line 422
    :goto_0
    return-void

    .line 403
    :pswitch_0
    sget v0, Lcom/avast/android/generic/z;->l:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 406
    :pswitch_1
    sget v0, Lcom/avast/android/generic/z;->ba:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 409
    :pswitch_2
    sget v0, Lcom/avast/android/generic/z;->Y:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 412
    :pswitch_3
    sget v0, Lcom/avast/android/generic/z;->bU:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/avast/android/generic/internet/c/i;)V
    .locals 5
    .parameter

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/i;->a()Lcom/avast/android/generic/internet/c/a/x;

    move-result-object v0

    .line 433
    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lcom/avast/android/generic/internet/c/a/x;->a:Lcom/avast/android/generic/internet/c/a/x;

    .line 436
    :cond_0
    sget-object v1, Lcom/avast/android/generic/app/account/i;->b:[I

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 453
    iget-object v1, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    sget v2, Lcom/avast/android/generic/z;->aM:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/x;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/app/account/AccountFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(Ljava/lang/String;)V

    .line 457
    :goto_0
    return-void

    .line 438
    :pswitch_0
    sget v0, Lcom/avast/android/generic/z;->ce:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 443
    :pswitch_1
    sget v0, Lcom/avast/android/generic/z;->s:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 447
    :pswitch_2
    sget v0, Lcom/avast/android/generic/z;->az:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 450
    :pswitch_3
    sget v0, Lcom/avast/android/generic/z;->ae:I

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/j;->a(I)V

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->s(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avast/android/generic/app/account/l;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/account/l;-><init>(Lcom/avast/android/generic/app/account/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 19
    .parameter

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 368
    :goto_0
    return-object v1

    .line 283
    :cond_0
    const/4 v1, 0x0

    aget-object v2, p1, v1

    .line 284
    const/4 v1, 0x1

    aget-object v3, p1, v1

    .line 285
    const/4 v1, 0x2

    aget-object v4, p1, v1

    .line 286
    const/4 v1, 0x3

    aget-object v1, p1, v1

    .line 287
    const/4 v5, 0x4

    aget-object v9, p1, v5

    .line 289
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 290
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 291
    const-string v5, "my_avast_pairing_server_address"

    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    const/4 v5, 0x0

    .line 297
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/generic/util/z;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    new-instance v1, Lcom/avast/android/generic/internet/c/m;

    invoke-direct {v1}, Lcom/avast/android/generic/internet/c/m;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/avast/android/generic/internet/c/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/avast/android/generic/internet/c/k; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/avast/android/generic/internet/c/l; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/avast/android/generic/internet/c/a; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/avast/android/generic/internet/c/n; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/avast/android/generic/internet/c/m; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/avast/android/generic/internet/c/j; {:try_start_0 .. :try_end_0} :catch_a

    .line 333
    :catch_0
    move-exception v1

    move-object v2, v5

    .line 334
    :goto_1
    :try_start_1
    const-string v3, "AccountFragment"

    const-string v4, "Cannot instantiate AvastAccountConnector."

    invoke-static {v3, v4, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    sget v1, Lcom/avast/android/generic/z;->bP:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 363
    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {v2}, Lcom/avast/android/generic/internet/c/c;->a()V

    .line 368
    :cond_2
    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    const/16 v7, 0x11ea

    invoke-static {v1, v7}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    new-instance v1, Lcom/avast/android/generic/internet/c/n;

    invoke-direct {v1}, Lcom/avast/android/generic/internet/c/n;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/avast/android/generic/internet/c/b; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/avast/android/generic/internet/c/k; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/avast/android/generic/internet/c/l; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/avast/android/generic/internet/c/a; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/avast/android/generic/internet/c/n; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/avast/android/generic/internet/c/m; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/avast/android/generic/internet/c/j; {:try_start_2 .. :try_end_2} :catch_a

    .line 336
    :catch_1
    move-exception v1

    .line 337
    :goto_3
    :try_start_3
    const-string v2, "AccountFragment"

    const-string v3, "Authentication failed."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(Lcom/avast/android/generic/internet/c/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_2

    .line 309
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    const/16 v7, 0x11ea

    invoke-static {v1, v7}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 312
    new-instance v1, Lcom/avast/android/generic/internet/c/a;

    invoke-direct {v1}, Lcom/avast/android/generic/internet/c/a;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/avast/android/generic/internet/c/b; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/avast/android/generic/internet/c/k; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/avast/android/generic/internet/c/l; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/avast/android/generic/internet/c/a; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/avast/android/generic/internet/c/n; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/avast/android/generic/internet/c/m; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/avast/android/generic/internet/c/j; {:try_start_4 .. :try_end_4} :catch_a

    .line 339
    :catch_2
    move-exception v1

    .line 340
    :goto_4
    :try_start_5
    const-string v2, "AccountFragment"

    const-string v3, "Registration failed."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(Lcom/avast/android/generic/internet/c/g;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_2

    .line 316
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/generic/util/z;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    const/16 v7, 0x11ea

    invoke-static {v1, v7}, Lcom/avast/android/generic/util/z;->c(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 319
    new-instance v1, Lcom/avast/android/generic/internet/c/j;

    invoke-direct {v1}, Lcom/avast/android/generic/internet/c/j;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/avast/android/generic/internet/c/b; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/avast/android/generic/internet/c/k; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/avast/android/generic/internet/c/l; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/avast/android/generic/internet/c/a; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/avast/android/generic/internet/c/n; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/avast/android/generic/internet/c/m; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lcom/avast/android/generic/internet/c/j; {:try_start_6 .. :try_end_6} :catch_a

    .line 342
    :catch_3
    move-exception v1

    .line 343
    :goto_5
    :try_start_7
    const-string v2, "AccountFragment"

    const-string v3, "Cannot create AUID."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(Lcom/avast/android/generic/internet/c/g;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 323
    :cond_6
    :try_start_8
    new-instance v1, Lcom/avast/android/generic/internet/c/c;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    invoke-direct {v1, v7, v6}, Lcom/avast/android/generic/internet/c/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/avast/android/generic/internet/c/b; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/avast/android/generic/internet/c/k; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/avast/android/generic/internet/c/l; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/avast/android/generic/internet/c/a; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/avast/android/generic/internet/c/n; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lcom/avast/android/generic/internet/c/m; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lcom/avast/android/generic/internet/c/j; {:try_start_8 .. :try_end_8} :catch_a

    .line 325
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v8}, Lcom/avast/android/generic/app/account/AccountFragment;->c(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v8

    invoke-virtual/range {v1 .. v9}, Lcom/avast/android/generic/internet/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)Lcom/avast/android/generic/internet/c/e;

    move-result-object v3

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    const-class v5, Lcom/avast/android/generic/ae;

    invoke-static {v4, v5}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/avast/android/generic/ae;

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    iget-object v13, v3, Lcom/avast/android/generic/internet/c/e;->a:Ljava/lang/String;

    iget-object v14, v3, Lcom/avast/android/generic/internet/c/e;->b:Ljava/lang/String;

    iget-object v15, v3, Lcom/avast/android/generic/internet/c/e;->c:Ljava/lang/String;

    iget-object v0, v3, Lcom/avast/android/generic/internet/c/e;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v12, v2

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Lcom/avast/android/generic/internet/c/b; {:try_start_9 .. :try_end_9} :catch_14
    .catch Lcom/avast/android/generic/internet/c/k; {:try_start_9 .. :try_end_9} :catch_13
    .catch Lcom/avast/android/generic/internet/c/l; {:try_start_9 .. :try_end_9} :catch_12
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lcom/avast/android/generic/internet/c/a; {:try_start_9 .. :try_end_9} :catch_e
    .catch Lcom/avast/android/generic/internet/c/n; {:try_start_9 .. :try_end_9} :catch_d
    .catch Lcom/avast/android/generic/internet/c/m; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lcom/avast/android/generic/internet/c/j; {:try_start_9 .. :try_end_9} :catch_b

    move-result-object v2

    .line 363
    if-eqz v1, :cond_7

    .line 364
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    :cond_7
    move-object v1, v2

    goto/16 :goto_0

    .line 345
    :catch_4
    move-exception v1

    .line 346
    :goto_6
    :try_start_a
    const-string v2, "AccountFragment"

    const-string v3, "Other error."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(Lcom/avast/android/generic/internet/c/g;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 348
    :catch_5
    move-exception v1

    .line 349
    :goto_7
    :try_start_b
    const-string v2, "AccountFragment"

    const-string v3, "Backend error"

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(Lcom/avast/android/generic/internet/c/i;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 351
    :catch_6
    move-exception v1

    .line 352
    :goto_8
    :try_start_c
    const-string v2, "AccountFragment"

    const-string v3, "Http communication error."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    sget v1, Lcom/avast/android/generic/z;->bP:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 354
    :catch_7
    move-exception v1

    .line 355
    :goto_9
    :try_start_d
    sget v1, Lcom/avast/android/generic/z;->q:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 356
    :catch_8
    move-exception v1

    .line 357
    :goto_a
    :try_start_e
    sget v1, Lcom/avast/android/generic/z;->aS:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 358
    :catch_9
    move-exception v1

    .line 359
    :goto_b
    :try_start_f
    sget v1, Lcom/avast/android/generic/z;->D:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 360
    :catch_a
    move-exception v1

    .line 361
    :goto_c
    :try_start_10
    sget v1, Lcom/avast/android/generic/z;->aO:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/avast/android/generic/app/account/j;->a(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 363
    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto/16 :goto_2

    .line 363
    :catchall_0
    move-exception v1

    :goto_d
    if-eqz v5, :cond_8

    .line 364
    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/c;->a()V

    :cond_8
    throw v1

    .line 363
    :catchall_1
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto :goto_d

    :catchall_2
    move-exception v1

    move-object v5, v2

    goto :goto_d

    .line 360
    :catch_b
    move-exception v2

    move-object v5, v1

    goto :goto_c

    .line 358
    :catch_c
    move-exception v2

    move-object v5, v1

    goto :goto_b

    .line 356
    :catch_d
    move-exception v2

    move-object v5, v1

    goto :goto_a

    .line 354
    :catch_e
    move-exception v2

    move-object v5, v1

    goto :goto_9

    .line 351
    :catch_f
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto :goto_8

    .line 348
    :catch_10
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_7

    .line 345
    :catch_11
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_6

    .line 342
    :catch_12
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_5

    .line 339
    :catch_13
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_4

    .line 336
    :catch_14
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto/16 :goto_3

    .line 333
    :catch_15
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->r(Lcom/avast/android/generic/app/account/AccountFragment;)V

    .line 374
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;Landroid/content/Context;Z)V

    .line 379
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 265
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/j;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/j;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/j;->b:Landroid/content/Context;

    .line 274
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->q(Lcom/avast/android/generic/app/account/AccountFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0, p0}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/j;)V

    goto :goto_0
.end method
