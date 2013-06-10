.class final Lorg/antivirus/ui/protection/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/w;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/w;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/x;->a:Lorg/antivirus/ui/protection/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/x;->a:Lorg/antivirus/ui/protection/w;

    iget-object v0, v0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0, p2}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
