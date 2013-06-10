.class public final Lorg/antivirus/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lorg/antivirus/a/a;


# direct methods
.method public constructor <init>(Lorg/antivirus/a/a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iput-object p2, p0, Lorg/antivirus/a/c;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v0, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v0, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    invoke-virtual {v0}, Lorg/antivirus/a/h;->a()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/a/c;->a:Landroid/os/Bundle;

    const-string v1, "action"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/a/c;->a:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/a/c;->a:Landroid/os/Bundle;

    const-string v2, "revision"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    new-instance v3, Lorg/antivirus/a/h;

    iget-object v4, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v4, v4, Lorg/antivirus/a/a;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v1}, Lorg/antivirus/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, v2, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    iget-object v0, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v0, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    iget-object v1, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v1, v1, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    new-instance v2, Lorg/antivirus/a/d;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/a/d;-><init>(Lorg/antivirus/a/c;Lorg/antivirus/a/h;)V

    iput-object v2, v1, Lorg/antivirus/a/h;->a:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v1, v1, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
