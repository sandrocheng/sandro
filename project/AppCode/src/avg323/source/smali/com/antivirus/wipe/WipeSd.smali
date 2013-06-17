.class public Lcom/antivirus/wipe/WipeSd;
.super Lcom/antivirus/ui/a;


# instance fields
.field private n:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/wipe/WipeSd;->n:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/wipe/WipeSd;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f0201b3

    const v3, 0x7f0201b2

    const v0, 0x7f09015e

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/wipe/WipeSd;->a(ZIILjava/lang/String;Z)V

    new-instance v0, Lcom/antivirus/wipe/ab;

    invoke-direct {v0}, Lcom/antivirus/wipe/ab;-><init>()V

    iput-object v0, p0, Lcom/antivirus/wipe/WipeSd;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/wipe/WipeSd;->n:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "WipeSdFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/wipe/WipeSd;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    return-void
.end method
