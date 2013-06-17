.class Lcom/antivirus/ui/tablet/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/tablet/DualPaneActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/tablet/DualPaneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/tablet/f;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/tablet/f;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-boolean v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/tablet/f;->a:Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
