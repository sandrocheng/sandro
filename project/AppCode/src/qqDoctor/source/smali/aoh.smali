.class public final Laoh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laoh;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->f()V

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->W(Laoa;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->g()V

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->W(Laoa;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->i()V

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->W(Laoa;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laoh;->a:Laoa;

    invoke-static {v1}, Laoa;->X(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b033c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoh;->a:Laoa;

    invoke-static {v1}, Laoa;->Y(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b038b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->j()Z

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->W(Laoa;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->h()V

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->W(Laoa;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Lxb;

    move-result-object v0

    invoke-virtual {v0}, Lxb;->k()V

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->W(Laoa;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lgx$b;

    invoke-direct {v0, p0}, Lgx$b;-><init>(Laoh;)V

    iget-object v1, p0, Laoh;->a:Laoa;

    invoke-static {v1}, Laoa;->h(Laoa;)Lxb;

    move-result-object v1

    iget-object v2, p0, Laoh;->a:Laoa;

    invoke-static {v2}, Laoa;->aa(Laoa;)Landroid/content/Context;

    iget-object v2, p0, Laoh;->a:Laoa;

    invoke-virtual {v1, v2, v0}, Lxb;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lgx$b;)Z

    move-result v0

    iget-object v1, p0, Laoh;->a:Laoa;

    invoke-static {v1}, Laoa;->W(Laoa;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)V

    iget-object v0, p0, Laoh;->a:Laoa;

    invoke-static {v0}, Laoa;->i(Laoa;)V

    :cond_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65fe

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_0
.end method
