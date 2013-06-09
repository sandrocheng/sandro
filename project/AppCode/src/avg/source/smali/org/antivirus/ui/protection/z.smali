.class final Lorg/antivirus/ui/protection/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/ProtectionActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/z;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/protection/z;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    new-instance v1, Lorg/antivirus/ui/protection/aa;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/aa;-><init>(Lorg/antivirus/ui/protection/z;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
