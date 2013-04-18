.class final Lcom/c/a/a/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/c/a/a/e;


# direct methods
.method constructor <init>(Lcom/c/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->d(Lcom/c/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/c/a/a/n;->b:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->e(Lcom/c/a/a/d;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->d(Lcom/c/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/r;->a(Landroid/content/Context;)Lcom/c/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->f(Lcom/c/a/a/d;)V

    .line 223
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/c/a/a/d;->a(S)S

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->g(Lcom/c/a/a/d;)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v1, v1, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v1, v1, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->h(Lcom/c/a/a/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v1, v1, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v1, v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/c/a/a/g;->a:Lcom/c/a/a/e;

    iget-object v0, v0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a/r;->a(Landroid/content/Context;)Lcom/c/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a/r;->c()Z

    goto :goto_0

    .line 227
    :cond_1
    const/16 v0, 0x2710

    invoke-static {v0}, Lcom/c/a/a/d;->a(S)S

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
