.class final Lorg/antivirus/ui/main/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/main/AntivirusMainScreen;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/f;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/main/f;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/main/f;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const-class v3, Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/f;->a:Lorg/antivirus/ui/main/AntivirusMainScreen;

    const-string v1, "app_landing"

    const-string v2, "protection"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
