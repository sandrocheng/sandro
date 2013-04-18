.class final Lcom/jxphone/mosecurity/logic/d;
.super Ljava/lang/Thread;
.source "ContactLogicImpl.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/a;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/jxphone/mosecurity/logic/a/a;

.field private final d:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Ljava/lang/String;Lcom/jxphone/mosecurity/logic/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jxphone/mosecurity/logic/d;-><init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Ljava/lang/String;Lcom/jxphone/mosecurity/logic/a/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Ljava/lang/String;Lcom/jxphone/mosecurity/logic/a/a;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/d;->a:Lcom/jxphone/mosecurity/logic/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/jxphone/mosecurity/logic/d;->d:Landroid/content/Context;

    .line 260
    iput-object p3, p0, Lcom/jxphone/mosecurity/logic/d;->b:Ljava/lang/String;

    .line 261
    iput-object p4, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    .line 262
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v1

    .line 267
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v2

    .line 268
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/d;->a:Lcom/jxphone/mosecurity/logic/a;

    invoke-static {v3}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/logic/a;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v3

    .line 269
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/d;->a:Lcom/jxphone/mosecurity/logic/a;

    invoke-static {v4}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/logic/a;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v4

    .line 270
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->b:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/keniu/security/b/g;->c(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;

    move-result-object v5

    .line 271
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->b:Ljava/lang/String;

    invoke-interface {v4, v0}, Lcom/keniu/security/b/l;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;

    move-result-object v6

    .line 273
    new-instance v0, Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 274
    const-string v7, "size"

    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->b()I

    move-result v8

    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->b()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v7, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v7, v0}, Lcom/jxphone/mosecurity/logic/a/a;->a(Ljava/util/Map;)V

    .line 277
    :goto_0
    :try_start_0
    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 294
    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 295
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 296
    :goto_1
    return-void

    .line 279
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    .line 280
    invoke-interface {v1, v0}, Lcom/keniu/security/b/o;->a(Lcom/jxphone/mosecurity/c/j;)Z

    .line 281
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v1}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 294
    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 295
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    throw v0

    .line 283
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->b:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/keniu/security/b/g;->b(Ljava/lang/String;)I

    .line 285
    :goto_2
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->c()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 294
    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 295
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    goto :goto_1

    .line 287
    :cond_2
    :try_start_3
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/l;

    .line 288
    invoke-interface {v2, v0}, Lcom/keniu/security/b/u;->a(Lcom/jxphone/mosecurity/c/l;)Z

    .line 289
    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v0

    invoke-interface {v4, v0}, Lcom/keniu/security/b/l;->b(I)Z

    .line 290
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/d;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 294
    invoke-interface {v5}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 295
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    goto :goto_1
.end method
