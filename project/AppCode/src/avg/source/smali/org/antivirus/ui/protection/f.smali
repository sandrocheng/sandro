.class final Lorg/antivirus/ui/protection/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/FileScannerActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/FileScannerActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/f;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/f;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    check-cast p2, Lorg/antivirus/AVService$LocalBinder;

    iput-object p2, v0, Lorg/antivirus/ui/protection/FileScannerActivity;->b:Lorg/antivirus/AVService$LocalBinder;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "Disconnected"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/f;->a:Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/FileScannerActivity;->finish()V

    return-void
.end method
