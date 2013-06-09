.class final Lorg/antivirus/ui/protection/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/z;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/z;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/aa;->a:Lorg/antivirus/ui/protection/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/aa;->a:Lorg/antivirus/ui/protection/z;

    iget-object v0, v0, Lorg/antivirus/ui/protection/z;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/aa;->a:Lorg/antivirus/ui/protection/z;

    iget-object v0, v0, Lorg/antivirus/ui/protection/z;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ab;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
