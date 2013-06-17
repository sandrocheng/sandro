.class Lcom/antivirus/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/antivirus/e/b;


# direct methods
.method constructor <init>(Lcom/antivirus/e/b;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    iput-object p2, p0, Lcom/antivirus/e/d;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v0}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v0}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/e/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/e/d;->a:Landroid/os/Bundle;

    const-string v1, "vu_action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/e/d;->a:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/e/d;->a:Landroid/os/Bundle;

    const-string v2, "revision"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    new-instance v3, Lcom/antivirus/e/g;

    iget-object v4, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v4}, Lcom/antivirus/e/b;->b(Lcom/antivirus/e/b;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1}, Lcom/antivirus/e/g;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;Lcom/antivirus/e/g;)Lcom/antivirus/e/g;

    iget-object v0, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v0}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v1}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;

    move-result-object v1

    new-instance v2, Lcom/antivirus/e/e;

    invoke-direct {v2, p0, v0}, Lcom/antivirus/e/e;-><init>(Lcom/antivirus/e/d;Lcom/antivirus/e/g;)V

    invoke-virtual {v1, v2}, Lcom/antivirus/e/g;->a(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/antivirus/e/d;->b:Lcom/antivirus/e/b;

    invoke-static {v1}, Lcom/antivirus/e/b;->a(Lcom/antivirus/e/b;)Lcom/antivirus/e/g;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
