.class final Lorg/antivirus/ui/protection/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/ProtectionActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/v;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lorg/antivirus/ui/protection/v;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->e(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/WebViewAdsManager;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/protection/v;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const v2, 0x7f0800ba

    check-cast p2, Lorg/antivirus/AVService$LocalBinder;

    invoke-virtual {p2}, Lorg/antivirus/AVService$LocalBinder;->getFeatures()Lorg/antivirus/core/b/a;

    move-result-object v3

    const-string v4, "protection"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/antivirus/ui/WebViewAdsManager;->initAds(Landroid/app/Activity;ILorg/antivirus/core/b/a;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "Disconnected"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    return-void
.end method
