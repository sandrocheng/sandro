.class final Lorg/antivirus/ui/main/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/main/AntivirusMainScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lorg/antivirus/ui/main/i;->a:[I

    iget-object v1, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-static {v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->f(Lorg/antivirus/ui/main/AntivirusMainScreen;)Lorg/antivirus/ui/main/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antivirus/ui/main/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const-string v1, "app_landing"

    const-string v2, "anti_theft"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const-class v3, Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/main/e;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const-class v3, Lorg/antivirus/ui/antitheft/AntitheftRegisterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
