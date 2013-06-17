.class Lcom/antivirus/ui/protection/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/r;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/ab;->a:Lcom/antivirus/ui/protection/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/protection/ab;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->y(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/core/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/antivirus/core/b;->c(Z)V

    invoke-static {v4}, Lcom/antivirus/c;->i(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/ab;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->z(Lcom/antivirus/ui/protection/r;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v1, "protection"

    const-string v2, "scan_sms"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/protection/ab;->a:Lcom/antivirus/ui/protection/r;

    invoke-static {v0}, Lcom/antivirus/ui/protection/r;->f(Lcom/antivirus/ui/protection/r;)Lcom/antivirus/ui/protection/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/protection/ai;->notifyDataSetInvalidated()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
