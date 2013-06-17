.class Lcom/antivirus/ui/antitheft/t;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/antitheft/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/t;->a:Lcom/antivirus/ui/antitheft/r;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/t;->a:Lcom/antivirus/ui/antitheft/r;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/antitheft/r;->a(Z)V

    return-void
.end method
