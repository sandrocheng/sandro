.class public Lcom/avg/toolkit/b/a;
.super Landroid/os/Handler;


# instance fields
.field a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/avg/toolkit/e/a;

.field private e:Lcom/avg/toolkit/UID/a;

.field private f:Lcom/avg/toolkit/b/d;

.field private g:Z

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/util/Map;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Landroid/os/Looper;Lcom/avg/toolkit/UID/a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v0, p0, Lcom/avg/toolkit/b/a;->b:Z

    iput-boolean v0, p0, Lcom/avg/toolkit/b/a;->c:Z

    iput-object v1, p0, Lcom/avg/toolkit/b/a;->d:Lcom/avg/toolkit/e/a;

    iput-boolean v0, p0, Lcom/avg/toolkit/b/a;->g:Z

    iput-boolean v0, p0, Lcom/avg/toolkit/b/a;->a:Z

    iput-object p1, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/avg/toolkit/b/a;->d:Lcom/avg/toolkit/e/a;

    iput-object p4, p0, Lcom/avg/toolkit/b/a;->e:Lcom/avg/toolkit/UID/a;

    iput-boolean v0, p0, Lcom/avg/toolkit/b/a;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/b/a;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/b/a;->i:Ljava/util/Map;

    new-instance v0, Lcom/avg/toolkit/b/d;

    invoke-direct {v0, p0, v1}, Lcom/avg/toolkit/b/d;-><init>(Lcom/avg/toolkit/b/a;Lcom/avg/toolkit/b/b;)V

    iput-object v0, p0, Lcom/avg/toolkit/b/a;->f:Lcom/avg/toolkit/b/d;

    return-void
.end method

.method private a(Lcom/avg/toolkit/b/g;)V
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/b/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->b_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->b_()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/toolkit/b/a;->d:Lcom/avg/toolkit/e/a;

    invoke-virtual {p1, v0}, Lcom/avg/toolkit/b/g;->c(Lcom/avg/toolkit/e/a;)V

    new-instance v0, Lcom/avg/toolkit/b/c;

    invoke-direct {v0, p0, p1}, Lcom/avg/toolkit/b/c;-><init>(Lcom/avg/toolkit/b/a;Lcom/avg/toolkit/b/g;)V

    iget-object v1, p0, Lcom/avg/toolkit/b/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/avg/toolkit/b/a;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->b_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->a()Lcom/avg/toolkit/b/e;

    move-result-object v1

    iput-object v1, v0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    iget-object v1, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avg/toolkit/b/c;->b:Z

    iget-object v0, v0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/e;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avg/toolkit/b/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/toolkit/b/a;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/avg/toolkit/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/avg/toolkit/b/a;->g:Z

    return p1
.end method

.method private a(Lcom/avg/toolkit/b/c;Ljava/lang/Exception;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/avg/toolkit/b/c;->a:Lcom/avg/toolkit/b/g;

    iget-object v1, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/avg/toolkit/b/g;->b(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/avg/toolkit/b/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/avg/toolkit/b/c;->c:I

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p1, Lcom/avg/toolkit/b/c;->b:Z

    iput v2, p1, Lcom/avg/toolkit/b/c;->c:I

    goto :goto_0
.end method

.method private b(Lcom/avg/toolkit/b/e;)Z
    .locals 15

    const/4 v2, 0x1

    const/4 v11, 0x0

    iget-object v1, p0, Lcom/avg/toolkit/b/a;->e:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v1, "no uid"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v11

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lcom/avg/toolkit/b/h;

    iget-object v4, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/avg/toolkit/b/a;->d:Lcom/avg/toolkit/e/a;

    invoke-virtual {v3, v4, v12}, Lcom/avg/toolkit/b/h;->a(Lcom/avg/toolkit/e/a;Ljava/lang/String;)Lcom/avg/toolkit/b/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v1, p0, Lcom/avg/toolkit/b/a;->g:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->g:Z

    iget-object v1, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/avg/toolkit/b/a;->f:Lcom/avg/toolkit/b/d;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    if-nez v1, :cond_2

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    throw v2

    :cond_3
    iget-object v3, p0, Lcom/avg/toolkit/b/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v2

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/avg/toolkit/b/c;

    iget-object v14, v9, Lcom/avg/toolkit/b/c;->a:Lcom/avg/toolkit/b/g;

    iget-boolean v2, v9, Lcom/avg/toolkit/b/c;->b:Z

    if-eqz v2, :cond_f

    iget-object v2, v9, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_f

    iget-object v2, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-virtual {v14, v2}, Lcom/avg/toolkit/b/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, v9, Lcom/avg/toolkit/b/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/avg/toolkit/b/c;->c:I

    move v2, v11

    :goto_2
    move v10, v2

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/avg/toolkit/b/c;->b:Z

    const/4 v2, 0x0

    iput v2, v9, Lcom/avg/toolkit/b/c;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/avg/toolkit/b/k; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    goto :goto_1

    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v14, Lcom/avg/toolkit/b/g;->f:[Ljava/lang/Object;

    iget-object v6, v14, Lcom/avg/toolkit/b/g;->g:Ljava/util/HashMap;

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->d()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "unknown"

    :goto_3
    iget-object v8, v14, Lcom/avg/toolkit/b/g;->i:Ljava/io/File;

    invoke-virtual/range {v1 .. v8}, Lcom/avg/toolkit/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient returned null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9, v2}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/c;Ljava/lang/Exception;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/avg/toolkit/b/k; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v2

    if-eqz v2, :cond_6

    move v10, v11

    :cond_6
    :goto_4
    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    move v2, v10

    goto :goto_2

    :cond_7
    move-object v7, v12

    goto :goto_3

    :cond_8
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "re-register"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, v9, Lcom/avg/toolkit/b/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/avg/toolkit/b/c;->c:I

    iget-object v2, p0, Lcom/avg/toolkit/b/a;->e:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v2}, Lcom/avg/toolkit/UID/a;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/avg/toolkit/b/k; {:try_start_4 .. :try_end_4} :catch_3

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_5
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/avg/toolkit/b/k; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    goto/16 :goto_0

    :cond_9
    :try_start_6
    iget-object v2, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-virtual {v14, v2, v3}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/avg/toolkit/b/c;->b:Z

    const/4 v2, 0x0

    iput v2, v9, Lcom/avg/toolkit/b/c;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/avg/toolkit/b/k; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_3
    move-exception v2

    :try_start_7
    invoke-direct {p0, v9, v2}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/c;Ljava/lang/Exception;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v10, v11

    :cond_a
    iget-boolean v2, v2, Lcom/avg/toolkit/b/k;->a:Z

    if-eqz v2, :cond_b

    iget v2, v9, Lcom/avg/toolkit/b/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/avg/toolkit/b/c;->c:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    move v2, v10

    goto/16 :goto_2

    :cond_c
    :try_start_8
    iget v2, v9, Lcom/avg/toolkit/b/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/avg/toolkit/b/c;->c:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/avg/toolkit/b/k; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move v10, v11

    goto :goto_4

    :catch_4
    move-exception v2

    :try_start_9
    invoke-direct {p0, v9, v2}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/c;Ljava/lang/Exception;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v2

    if-eqz v2, :cond_d

    move v10, v11

    :cond_d
    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    move v2, v10

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v14}, Lcom/avg/toolkit/b/g;->g()V

    throw v1

    :cond_e
    move v11, v10

    goto/16 :goto_0

    :cond_f
    move v2, v10

    goto/16 :goto_2
.end method


# virtual methods
.method a()V
    .locals 4

    iget-boolean v0, p0, Lcom/avg/toolkit/b/a;->g:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/toolkit/b/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/c;

    iget-boolean v2, v0, Lcom/avg/toolkit/b/c;->b:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/avg/toolkit/b/c;->c:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    iget-object v0, v0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/e;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/avg/toolkit/b/c;->b:Z

    goto :goto_0
.end method

.method a(Lcom/avg/toolkit/b/e;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/avg/toolkit/b/a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/avg/toolkit/b/a;->b:Z

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    invoke-virtual {p1}, Lcom/avg/toolkit/b/e;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/avg/toolkit/b/e;->a()I

    move-result v0

    sget-object v1, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    invoke-virtual {v1}, Lcom/avg/toolkit/b/e;->a()I

    move-result v1

    if-lt v0, v1, :cond_3

    const-wide/16 v0, 0x1f4

    iput-boolean v3, p0, Lcom/avg/toolkit/b/a;->c:Z

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/avg/toolkit/b/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    const-wide/32 v0, 0x927c0

    iput-boolean v3, p0, Lcom/avg/toolkit/b/a;->b:Z

    goto :goto_0
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 2

    iput-object p1, p0, Lcom/avg/toolkit/b/a;->d:Lcom/avg/toolkit/e/a;

    iget-object v0, p0, Lcom/avg/toolkit/b/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/c;

    iget-object v0, v0, Lcom/avg/toolkit/b/c;->a:Lcom/avg/toolkit/b/g;

    invoke-virtual {v0, p1}, Lcom/avg/toolkit/b/g;->c(Lcom/avg/toolkit/e/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/g;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/toolkit/b/a;->a:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    sget-object v2, Lcom/avg/toolkit/b/e;->d:Lcom/avg/toolkit/b/e;

    invoke-virtual {v2}, Lcom/avg/toolkit/b/e;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/b/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "wc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    const/16 v4, 0x64

    if-ne v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/avg/toolkit/b/a;->a:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->c:Z

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->b:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->c:Z

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->b:Z

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    invoke-virtual {v3}, Lcom/avg/toolkit/b/e;->a()I

    move-result v3

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->c:Z

    :cond_2
    sget-object v3, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    invoke-virtual {v3}, Lcom/avg/toolkit/b/e;->a()I

    move-result v3

    if-ne v0, v3, :cond_3

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->b:Z

    :cond_3
    sget-object v3, Lcom/avg/toolkit/b/e;->d:Lcom/avg/toolkit/b/e;

    invoke-virtual {v3}, Lcom/avg/toolkit/b/e;->a()I

    move-result v3

    if-ne v0, v3, :cond_6

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/avg/toolkit/b/a;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/c;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/avg/toolkit/b/e;->d:Lcom/avg/toolkit/b/e;

    iput-object v1, v0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    sget-object v1, Lcom/avg/toolkit/b/e;->d:Lcom/avg/toolkit/b/e;

    invoke-direct {p0, v1}, Lcom/avg/toolkit/b/a;->b(Lcom/avg/toolkit/b/e;)Z

    iget-object v1, v0, Lcom/avg/toolkit/b/c;->a:Lcom/avg/toolkit/b/g;

    invoke-virtual {v1}, Lcom/avg/toolkit/b/g;->a()Lcom/avg/toolkit/b/e;

    move-result-object v1

    iput-object v1, v0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    :goto_2
    invoke-virtual {p0}, Lcom/avg/toolkit/b/a;->a()V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid client "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/b/a;->b(Lcom/avg/toolkit/b/e;)Z

    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/b/a;->b(Lcom/avg/toolkit/b/e;)Z

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    invoke-virtual {v1}, Lcom/avg/toolkit/b/e;->a()I

    move-result v1

    if-ne v0, v1, :cond_7

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->c:Z

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/b/a;->b(Lcom/avg/toolkit/b/e;)Z

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    invoke-virtual {v1}, Lcom/avg/toolkit/b/e;->a()I

    move-result v1

    if-ne v0, v1, :cond_8

    iput-boolean v2, p0, Lcom/avg/toolkit/b/a;->b:Z

    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    invoke-direct {p0, v0}, Lcom/avg/toolkit/b/a;->b(Lcom/avg/toolkit/b/e;)Z

    goto :goto_2

    :cond_8
    const-string v0, "invalid action"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/avg/toolkit/b/a;->i:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/c;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    :try_start_1
    iget-object v1, v0, Lcom/avg/toolkit/b/c;->a:Lcom/avg/toolkit/b/g;

    iget-object v2, p0, Lcom/avg/toolkit/b/a;->j:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/avg/toolkit/b/c;->b:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput v1, v0, Lcom/avg/toolkit/b/c;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Lcom/avg/toolkit/b/c;->b:Z

    iget-object v0, v0, Lcom/avg/toolkit/b/c;->d:Lcom/avg/toolkit/b/e;

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/b/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_c
    move v1, v2

    move v0, v2

    goto/16 :goto_0
.end method
