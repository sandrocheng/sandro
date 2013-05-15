.class public abstract Lcom/avast/android/generic/b/d;
.super Ljava/lang/Object;
.source "CommandHandler.java"


# instance fields
.field private a:Lcom/avast/android/generic/b/h;

.field private b:Lcom/avast/android/generic/service/AvastService;

.field private c:Lcom/avast/android/generic/b/f;

.field private d:Lcom/avast/android/generic/b/f;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/avast/android/generic/b/a;

.field private i:Ljava/util/List;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/avast/a/a/a/a/m;

.field private n:Z

.field private o:Lcom/avast/android/generic/internet/k;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/avast/android/generic/b/d;->n:Z

    .line 41
    iput-object v2, p0, Lcom/avast/android/generic/b/d;->o:Lcom/avast/android/generic/internet/k;

    .line 42
    iput-boolean v1, p0, Lcom/avast/android/generic/b/d;->p:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/b/d;->q:Z

    .line 45
    iput-boolean v1, p0, Lcom/avast/android/generic/b/d;->r:Z

    .line 105
    iput-object p1, p0, Lcom/avast/android/generic/b/d;->b:Lcom/avast/android/generic/service/AvastService;

    .line 106
    iput-object v2, p0, Lcom/avast/android/generic/b/d;->a:Lcom/avast/android/generic/b/h;

    .line 107
    sget-object v0, Lcom/avast/android/generic/b/f;->a:Lcom/avast/android/generic/b/f;

    iput-object v0, p0, Lcom/avast/android/generic/b/d;->c:Lcom/avast/android/generic/b/f;

    .line 108
    sget-object v0, Lcom/avast/android/generic/b/f;->a:Lcom/avast/android/generic/b/f;

    iput-object v0, p0, Lcom/avast/android/generic/b/d;->d:Lcom/avast/android/generic/b/f;

    .line 109
    iput-boolean v1, p0, Lcom/avast/android/generic/b/d;->g:Z

    .line 110
    sget-object v0, Lcom/avast/a/a/a/a/m;->a:Lcom/avast/a/a/a/a/m;

    iput-object v0, p0, Lcom/avast/android/generic/b/d;->m:Lcom/avast/a/a/a/a/m;

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/b/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/avast/android/generic/b/d;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    .line 100
    iput-object p2, p0, Lcom/avast/android/generic/b/d;->a:Lcom/avast/android/generic/b/h;

    .line 101
    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/avast/android/generic/b/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/b/d;->p:Z

    .line 563
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->b:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {p0}, Lcom/avast/android/generic/b/d;->u()Lcom/avast/android/generic/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/b/a;)V

    .line 565
    :cond_0
    return-void
.end method

.method private static a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/b/h;ZZ)Lcom/avast/android/generic/b/d;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    .line 484
    :try_start_0
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {p2, v0}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 487
    sget v1, Lcom/avast/android/generic/t;->G:I

    invoke-static {p0, v1, v0}, Lcom/avast/android/generic/b/q;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    new-instance v0, Lcom/avast/android/generic/b/v;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/b/v;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    .line 512
    :goto_0
    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/String;Lcom/avast/android/generic/b/h;ZZ)Lcom/avast/android/generic/b/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 505
    :try_start_1
    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->n()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 508
    const-string v2, "AvastGeneric"

    const-string v3, "Error parsing arguments"

    invoke-static {v2, p0, v3, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    invoke-static {p0, v1}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avast/a/a/a/a/m;->b:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V

    goto :goto_0

    .line 497
    :catch_1
    move-exception v0

    .line 499
    const-string v1, "AvastGeneric"

    const-string v2, "Exception in parsing command part"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    new-instance v0, Lcom/avast/android/generic/b/t;

    sget v1, Lcom/avast/android/generic/z;->J:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avast/a/a/a/a/m;->f:Lcom/avast/a/a/a/a/m;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/generic/b/t;-><init>(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/android/generic/b/d;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 227
    const-string v0, "AvastGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    new-instance v6, Lcom/avast/android/generic/b/h;

    invoke-direct {v6, p2}, Lcom/avast/android/generic/b/h;-><init>(Ljava/lang/String;)V

    .line 234
    :try_start_0
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v0}, Lcom/avast/android/generic/b/h;->a(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 240
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 241
    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;)Z

    move-result v3

    .line 242
    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 244
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 248
    :goto_0
    if-nez v0, :cond_0

    .line 250
    invoke-static {p0, v4}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 254
    :cond_0
    if-nez v0, :cond_1

    .line 256
    const-string v0, "AvastGeneric"

    const-string v1, "Passwords not matching"

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "AvastGeneric"

    const-string v2, "Exception in parsing password token"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 261
    :cond_1
    const/4 v0, 0x0

    .line 268
    :try_start_1
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->b(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v3

    .line 271
    const-string v4, "IC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 273
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    .line 276
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 280
    :try_start_2
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->b(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v3

    .line 281
    const-string v5, "-9999"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    .line 284
    const-string v0, "-9999"
    :try_end_2
    .catch Lcom/avast/android/generic/b/a/c; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v3, v0

    move v0, v2

    .line 295
    :goto_2
    :try_start_3
    sget-object v5, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v5}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v5

    .line 296
    const-string v7, "Y"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    const-string v2, "AvastGeneric"

    const-string v5, "Incoming command from internet allows SMS reply"

    invoke-static {v2, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v2, v0

    move-object v5, v4

    move-object v4, v3

    move v0, v1

    move v3, v1

    .line 314
    :goto_3
    if-nez v3, :cond_8

    .line 318
    const-string v0, "AvastGeneric"

    const-string v7, "Incoming command by SMS allows SMS reply"

    invoke-static {v0, v7}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "ALL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    :try_start_4
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v0}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 353
    :goto_4
    invoke-static {p0, p1, v6, v3, v1}, Lcom/avast/android/generic/b/d;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/b/h;ZZ)Lcom/avast/android/generic/b/d;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v3}, Lcom/avast/android/generic/b/d;->a(Z)V

    .line 355
    invoke-virtual {v0, v4}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/b/d;->c(Z)V

    .line 358
    if-eqz v2, :cond_7

    .line 360
    const-string v0, "AvastGeneric"

    const-string v1, "Illegal format in command"

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 287
    :cond_2
    :try_start_5
    sget-object v3, Lcom/avast/android/generic/b/j;->a:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/avast/android/generic/b/a/c; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_1

    .line 289
    :catch_1
    move-exception v3

    .line 292
    :try_start_6
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-object v3, v0

    move v0, v1

    goto :goto_2

    .line 305
    :cond_3
    const-string v5, "AvastGeneric"

    const-string v7, "Incoming command from internet has no SMS reply allowed"

    invoke-static {v5, v7}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v5, v4

    move-object v4, v3

    move v3, v1

    move v8, v0

    move v0, v2

    move v2, v8

    goto :goto_3

    .line 308
    :catch_2
    move-exception v0

    .line 310
    const-string v1, "AvastGeneric"

    const-string v2, "Exception in parsing command header"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 326
    :cond_4
    const-string v0, "FO"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    :try_start_7
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v0}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 331
    :catch_3
    move-exception v0

    goto :goto_4

    .line 333
    :cond_5
    const-string v0, "BU"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 337
    :try_start_8
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v0}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 338
    :catch_4
    move-exception v0

    goto :goto_4

    .line 345
    :cond_6
    :try_start_9
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0, p0, v4, v5}, Lcom/avast/android/generic/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v6, v0}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 347
    :catch_5
    move-exception v0

    goto :goto_4

    .line 364
    :cond_7
    return-object v0

    .line 324
    :catch_6
    move-exception v0

    goto :goto_4

    :cond_8
    move v1, v0

    goto :goto_4

    :cond_9
    move-object v4, v0

    move-object v5, v3

    move v0, v1

    move v3, v2

    goto/16 :goto_3

    :cond_a
    move v0, v3

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/avast/android/generic/b/k;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 371
    const-string v0, "AvastGeneric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    new-instance v4, Lcom/avast/android/generic/b/h;

    invoke-direct {v4, p1}, Lcom/avast/android/generic/b/h;-><init>(Ljava/lang/String;)V

    .line 378
    :try_start_0
    sget-object v0, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v0}, Lcom/avast/android/generic/b/h;->a(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 384
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 385
    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;)Z

    move-result v1

    .line 386
    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 388
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    .line 392
    :goto_0
    if-nez v0, :cond_0

    .line 394
    invoke-static {p0, v2}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    .line 398
    :cond_0
    if-nez v0, :cond_1

    .line 400
    const-string v0, "AvastGeneric"

    const-string v1, "Passwords not matching"

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0}, Lcom/avast/android/generic/b/k;-><init>()V

    .line 475
    :goto_1
    return-object v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "AvastGeneric"

    const-string v2, "Exception in parsing password token"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0}, Lcom/avast/android/generic/b/k;-><init>()V

    goto :goto_1

    .line 405
    :cond_1
    const/4 v0, 0x0

    .line 406
    const/4 v1, 0x0

    .line 409
    :try_start_1
    sget-object v2, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v2}, Lcom/avast/android/generic/b/h;->b(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v2

    .line 412
    const-string v5, "IC"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 414
    sget-object v2, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v2}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    .line 416
    sget-object v2, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v2}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 420
    :try_start_2
    sget-object v5, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/b/h;->b(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v5

    .line 421
    const-string v6, "-9999"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    sget-object v5, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    .line 424
    const-string v0, "-9999"
    :try_end_2
    .catch Lcom/avast/android/generic/b/a/c; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 435
    :goto_3
    :try_start_3
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 444
    :goto_4
    :try_start_4
    sget-object v3, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v3}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 447
    if-eqz v0, :cond_3

    .line 449
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0}, Lcom/avast/android/generic/b/k;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 472
    :catch_1
    move-exception v0

    .line 474
    const-string v1, "AvastGeneric"

    const-string v2, "Exception in parsing command part"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0}, Lcom/avast/android/generic/b/k;-><init>()V

    goto :goto_1

    .line 427
    :cond_2
    :try_start_5
    sget-object v5, Lcom/avast/android/generic/b/j;->a:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v5}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_5
    .catch Lcom/avast/android/generic/b/a/c; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    goto :goto_2

    .line 429
    :catch_2
    move-exception v1

    .line 432
    :try_start_6
    sget-object v1, Lcom/avast/android/generic/b/j;->b:Lcom/avast/android/generic/b/j;

    invoke-virtual {v4, v1}, Lcom/avast/android/generic/b/h;->c(Lcom/avast/android/generic/b/j;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v1, v0

    move v0, v3

    goto :goto_3

    .line 437
    :catch_3
    move-exception v0

    .line 439
    const-string v1, "AvastGeneric"

    const-string v2, "Exception in parsing command header"

    invoke-static {v1, p0, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0}, Lcom/avast/android/generic/b/k;-><init>()V

    goto/16 :goto_1

    .line 452
    :cond_3
    :try_start_7
    const-string v0, "ALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 455
    new-instance v0, Lcom/avast/android/generic/b/k;

    sget-object v2, Lcom/avast/android/generic/b/r;->c:Lcom/avast/android/generic/b/r;

    invoke-direct {v0, v2, v1}, Lcom/avast/android/generic/b/k;-><init>(Lcom/avast/android/generic/b/r;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 456
    :cond_4
    const-string v0, "FO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    new-instance v0, Lcom/avast/android/generic/b/k;

    sget-object v2, Lcom/avast/android/generic/b/r;->b:Lcom/avast/android/generic/b/r;

    invoke-direct {v0, v2, v1}, Lcom/avast/android/generic/b/k;-><init>(Lcom/avast/android/generic/b/r;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 465
    :cond_5
    :try_start_8
    new-instance v0, Lcom/avast/android/generic/b/k;

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/generic/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 466
    :catch_4
    move-exception v0

    .line 469
    :try_start_9
    new-instance v0, Lcom/avast/android/generic/b/k;

    const-string v2, "AT"

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/generic/b/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :cond_6
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/avast/android/generic/b/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 594
    sget-object v0, Lcom/avast/android/generic/b/e;->a:[I

    iget-object v1, p2, Lcom/avast/android/generic/b/k;->a:Lcom/avast/android/generic/b/r;

    invoke-virtual {v1}, Lcom/avast/android/generic/b/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 623
    :goto_0
    return-void

    .line 597
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip dispatching invalid message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch/cancel message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to tool "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/avast/android/generic/b/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 602
    iget-object v0, p2, Lcom/avast/android/generic/b/k;->c:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch/cancel message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to myself (FIRST ONE) directly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch/cancel message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to myself (MULTIPLE) directly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Additionally dispatch message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 622
    invoke-static {p0, p3, p4, p5}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-static {p0, p4}, Lcom/avast/android/generic/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/avast/android/generic/b/k;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 590
    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/b/d;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/avast/android/generic/b/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->q:Z

    return v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/b/d;->a(IZ)V

    .line 146
    return-void
.end method

.method public a(ILcom/avast/a/a/a/a/m;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/b/d;->a(ILcom/avast/a/a/a/a/m;Z)V

    .line 182
    return-void
.end method

.method public a(ILcom/avast/a/a/a/a/m;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;Z)V

    .line 187
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/avast/android/generic/b/d;->g()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public a(Lcom/avast/android/generic/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/avast/android/generic/b/d;->h:Lcom/avast/android/generic/b/a;

    .line 532
    return-void
.end method

.method protected a(Lcom/avast/android/generic/b/f;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/avast/android/generic/b/d;->c:Lcom/avast/android/generic/b/f;

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avast/android/generic/b/d;->l:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;Z)V

    .line 166
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    sget-object v0, Lcom/avast/android/generic/b/f;->b:Lcom/avast/android/generic/b/f;

    iput-object v0, p0, Lcom/avast/android/generic/b/d;->c:Lcom/avast/android/generic/b/f;

    .line 171
    iput-object p1, p0, Lcom/avast/android/generic/b/d;->e:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/avast/android/generic/b/d;->m:Lcom/avast/a/a/a/a/m;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/b/d;->g:Z

    .line 175
    if-eqz p3, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/avast/android/generic/b/d;->B()V

    .line 177
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lcom/avast/android/generic/b/f;->b:Lcom/avast/android/generic/b/f;

    iput-object v0, p0, Lcom/avast/android/generic/b/d;->c:Lcom/avast/android/generic/b/f;

    .line 136
    iput-object p1, p0, Lcom/avast/android/generic/b/d;->e:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/b/d;->g:Z

    .line 139
    if-eqz p2, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/avast/android/generic/b/d;->B()V

    .line 141
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/avast/android/generic/b/d;->k:Z

    .line 80
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->n:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/avast/android/generic/b/d;->j:Z

    .line 540
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/avast/android/generic/b/d;->q:Z

    .line 631
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->k:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/avast/android/generic/b/f;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->c:Lcom/avast/android/generic/b/f;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Lcom/avast/android/generic/service/AvastService;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->b:Lcom/avast/android/generic/service/AvastService;

    return-object v0
.end method

.method protected h()Lcom/avast/android/generic/b/h;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->a:Lcom/avast/android/generic/b/h;

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/avast/a/a/a/a/m;
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/b/d;->m:Lcom/avast/a/a/a/a/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/avast/a/a/a/a/m;->a:Lcom/avast/a/a/a/a/m;

    goto :goto_0
.end method

.method public k()Lcom/avast/android/generic/b/f;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->d:Lcom/avast/android/generic/b/f;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected m()Ljava/util/List;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->i:Ljava/util/List;

    return-object v0
.end method

.method protected abstract n()V
.end method

.method protected abstract o()V
.end method

.method protected abstract p()Z
.end method

.method protected abstract q()Z
.end method

.method protected abstract r()Z
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/b/d;->g:Z

    .line 524
    return-void
.end method

.method protected t()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method protected u()Lcom/avast/android/generic/b/a;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->h:Lcom/avast/android/generic/b/a;

    return-object v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->p:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/avast/android/generic/b/d;->r:Z

    return v0
.end method

.method public x()Lcom/avast/android/generic/internet/k;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/avast/android/generic/b/d;->o:Lcom/avast/android/generic/internet/k;

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    return v0
.end method

.method public z()V
    .locals 0

    .prologue
    .line 585
    return-void
.end method
