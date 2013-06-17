.class public Lcom/antivirus/ui/antitheft/AntitheftRegisterActivity;
.super Lcom/antivirus/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/AntitheftRegisterActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020012

    const v3, 0x7f020015

    const v0, 0x7f0900e9

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/antitheft/AntitheftRegisterActivity;->a(ZIILjava/lang/String;Z)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/antivirus/ui/antitheft/z;

    invoke-direct {v0}, Lcom/antivirus/ui/antitheft/z;-><init>()V

    const v1, 0x7f0800d1

    const-string v2, "AntitheftRegisterFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/antitheft/AntitheftRegisterActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
