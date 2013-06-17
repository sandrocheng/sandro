.class Lcom/antivirus/ui/main/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/main/c;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/main/c;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/main/j;->a:Lcom/antivirus/ui/main/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/antivirus/ui/main/j;->a:Lcom/antivirus/ui/main/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/antivirus/ui/main/c;->a(Lcom/antivirus/ui/main/c;Landroid/content/Intent;)V

    return-void
.end method
