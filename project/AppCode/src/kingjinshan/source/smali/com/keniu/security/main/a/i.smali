.class public final Lcom/keniu/security/main/a/i;
.super Ljava/lang/Thread;
.source "MCheckMainModule.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/a/h;


# direct methods
.method public constructor <init>(Lcom/keniu/security/main/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-virtual {v1}, Lcom/keniu/security/main/a/h;->e()V

    .line 154
    iget-object v1, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-static {v1}, Lcom/keniu/security/main/a/h;->a(Lcom/keniu/security/main/a/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/main/a/m;

    .line 155
    add-int/lit8 v2, v2, 0x1

    .line 159
    iget-object v3, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    iget-object v4, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-static {v4}, Lcom/keniu/security/main/a/h;->b(Lcom/keniu/security/main/a/h;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/keniu/security/main/a/m;->a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-static {v0}, Lcom/keniu/security/main/a/h;->a(Lcom/keniu/security/main/a/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-static {v0}, Lcom/keniu/security/main/a/h;->c(Lcom/keniu/security/main/a/h;)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/keniu/security/main/a/h;->a(Lcom/keniu/security/main/a/h;J)J

    .line 164
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-static {v0}, Lcom/keniu/security/main/a/h;->d(Lcom/keniu/security/main/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/main/a/i;->a:Lcom/keniu/security/main/a/h;

    invoke-virtual {v0}, Lcom/keniu/security/main/a/h;->f()V

    .line 174
    return-void
.end method
