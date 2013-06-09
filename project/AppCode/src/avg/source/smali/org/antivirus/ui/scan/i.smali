.class final Lorg/antivirus/ui/scan/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/antivirus/ui/scan/UnInstall;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/UnInstall;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/i;->b:Lorg/antivirus/ui/scan/UnInstall;

    iput-object p2, p0, Lorg/antivirus/ui/scan/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/ui/scan/i;->b:Lorg/antivirus/ui/scan/UnInstall;

    invoke-virtual {v1}, Lorg/antivirus/ui/scan/UnInstall;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setIgnorePackages(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/i;->b:Lorg/antivirus/ui/scan/UnInstall;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/UnInstall;->finish()V

    return-void
.end method
