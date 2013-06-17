.class public Lcom/avg/toolkit/b/i;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/avg/toolkit/e/a;

.field private b:Ljava/util/Map;

.field private c:Landroid/content/Context;

.field private d:Lcom/avg/toolkit/UID/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Landroid/os/Looper;Lcom/avg/toolkit/UID/a;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/toolkit/b/i;->a:Lcom/avg/toolkit/e/a;

    iput-object p1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/avg/toolkit/b/i;->a:Lcom/avg/toolkit/e/a;

    iput-object p4, p0, Lcom/avg/toolkit/b/i;->d:Lcom/avg/toolkit/UID/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avg/toolkit/b/i;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/avg/toolkit/b/g;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->d:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v1, "no id"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "serialNum == null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/avg/toolkit/b/h;

    iget-object v3, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/avg/toolkit/b/h;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/avg/toolkit/b/i;->a:Lcom/avg/toolkit/e/a;

    invoke-virtual {v2, v3, v7}, Lcom/avg/toolkit/b/h;->a(Lcom/avg/toolkit/e/a;Ljava/lang/String;)Lcom/avg/toolkit/b/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient == null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient == null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient == null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient == null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    throw v2

    :cond_2
    iget-object v2, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v9

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/avg/toolkit/b/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/avg/toolkit/b/g;->f:[Ljava/lang/Object;

    iget-object v6, p1, Lcom/avg/toolkit/b/g;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/avg/toolkit/b/g;->d()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v7, "anon"

    :cond_5
    iget-object v8, p1, Lcom/avg/toolkit/b/g;->i:Ljava/io/File;

    invoke-virtual/range {v1 .. v8}, Lcom/avg/toolkit/b/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "re-register"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->d:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v1}, Lcom/avg/toolkit/UID/a;->d()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v1, v9

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_5
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v1, v9

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient returned null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avg/toolkit/b/g;->b(Landroid/content/Context;Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    move v1, v9

    goto/16 :goto_0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lcom/avg/toolkit/b/g;->b(Landroid/content/Context;Ljava/lang/Object;)Z

    move v1, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avg/toolkit/b/g;

    iget-object v3, p0, Lcom/avg/toolkit/b/i;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/avg/toolkit/b/g;->b_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "wc"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avg/toolkit/b/i;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/g;

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->a:Lcom/avg/toolkit/e/a;

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/b/g;->c(Lcom/avg/toolkit/e/a;)V

    iget-object v1, p0, Lcom/avg/toolkit/b/i;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/avg/toolkit/b/g;->a(Landroid/content/Context;Landroid/os/Message;)Z

    invoke-direct {p0, v0}, Lcom/avg/toolkit/b/i;->a(Lcom/avg/toolkit/b/g;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
