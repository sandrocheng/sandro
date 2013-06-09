.class public Lorg/antivirus/ui/antitheft/AntitheftRegisterActivity;
.super Lorg/antivirus/ui/BaseToolFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntitheftRegisterActivity;->setContentView(I)V

    const v0, 0x7f020006

    const v1, 0x7f020009

    const v2, 0x7f090018

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/antivirus/ui/antitheft/AntitheftRegisterActivity;->a(IILjava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Lorg/antivirus/ui/antitheft/w;

    invoke-direct {v0}, Lorg/antivirus/ui/antitheft/w;-><init>()V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntitheftRegisterActivity;->a(Landroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method
