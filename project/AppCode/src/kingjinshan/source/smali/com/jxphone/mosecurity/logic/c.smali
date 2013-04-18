.class final Lcom/jxphone/mosecurity/logic/c;
.super Ljava/lang/Thread;
.source "ContactLogicImpl.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/logic/a;

.field private final b:Lcom/jxphone/mosecurity/c/b;

.field private final c:Lcom/jxphone/mosecurity/logic/a/a;

.field private final d:Landroid/content/Context;


# direct methods
.method synthetic constructor <init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jxphone/mosecurity/logic/c;-><init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/c;->a:Lcom/jxphone/mosecurity/logic/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/jxphone/mosecurity/logic/c;->d:Landroid/content/Context;

    .line 209
    iput-object p3, p0, Lcom/jxphone/mosecurity/logic/c;->b:Lcom/jxphone/mosecurity/c/b;

    .line 210
    iput-object p4, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    .line 211
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;)Lcom/keniu/security/b/o;

    move-result-object v1

    .line 216
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v2

    .line 217
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/c;->a:Lcom/jxphone/mosecurity/logic/a;

    invoke-static {v3}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/logic/a;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v3

    .line 218
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/jxphone/mosecurity/logic/c;->a:Lcom/jxphone/mosecurity/logic/a;

    invoke-static {v4}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/logic/a;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v4

    .line 219
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->b:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->d()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-interface {v1, v5}, Lcom/keniu/security/b/o;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;

    move-result-object v6

    .line 221
    invoke-interface {v2, v5}, Lcom/keniu/security/b/u;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/b/a/a;

    move-result-object v7

    .line 223
    new-instance v0, Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 224
    const-string v8, "size"

    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->b()I

    move-result v9

    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->b()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v8, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v8, v0}, Lcom/jxphone/mosecurity/logic/a/a;->a(Ljava/util/Map;)V

    .line 227
    :goto_0
    :try_start_0
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 247
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 248
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 249
    :goto_1
    return-void

    .line 229
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    .line 230
    iget-object v8, p0, Lcom/jxphone/mosecurity/logic/c;->b:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v8}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/jxphone/mosecurity/c/j;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 231
    invoke-interface {v3, v0}, Lcom/keniu/security/b/g;->a(Lcom/jxphone/mosecurity/c/j;)J

    .line 232
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 247
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 248
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    goto :goto_1

    .line 234
    :cond_1
    :try_start_2
    invoke-interface {v1, v5}, Lcom/keniu/security/b/o;->a(Ljava/lang/String;)Z

    .line 235
    :goto_2
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->c()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 247
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 248
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    goto :goto_1

    .line 237
    :cond_2
    :try_start_3
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/l;

    .line 238
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/c;->b:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 239
    invoke-interface {v4, v0}, Lcom/keniu/security/b/l;->a(Lcom/jxphone/mosecurity/c/l;)J

    .line 240
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 246
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v1}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 247
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 248
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    throw v0

    .line 242
    :cond_3
    :try_start_4
    invoke-interface {v2, v5}, Lcom/keniu/security/b/u;->a(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 246
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/c;->c:Lcom/jxphone/mosecurity/logic/a/a;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    .line 247
    invoke-interface {v6}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    .line 248
    invoke-interface {v7}, Lcom/jxphone/mosecurity/b/a/a;->c()V

    goto :goto_1
.end method
