.class final Lorg/antivirus/ui/protection/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/ProtectionActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lorg/antivirus/ui/protection/ProtectionActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->b(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->c(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/view/View;

    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const v1, 0x7f090093

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v0, v0, Lorg/antivirus/ui/protection/ProtectionActivity;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v1, p0, Lorg/antivirus/ui/protection/p;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v1, v1, Lorg/antivirus/ui/protection/ProtectionActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
