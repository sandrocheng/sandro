.class public Lcom/antivirus/applocker/LockerBlockActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field private n:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/applocker/LockerBlockActivity;->n:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/applocker/LockerBlockActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020064

    const v3, 0x7f020063

    const v0, 0x7f090110

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f080031

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/antivirus/applocker/LockerBlockActivity;->a(ZIILjava/lang/String;ZI)V

    new-instance v0, Lcom/antivirus/applocker/n;

    invoke-direct {v0}, Lcom/antivirus/applocker/n;-><init>()V

    iput-object v0, p0, Lcom/antivirus/applocker/LockerBlockActivity;->n:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/antivirus/applocker/LockerBlockActivity;->n:Landroid/support/v4/app/Fragment;

    const v1, 0x7f0800d1

    const-string v2, "LockerBlockFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/applocker/LockerBlockActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    return-void
.end method
