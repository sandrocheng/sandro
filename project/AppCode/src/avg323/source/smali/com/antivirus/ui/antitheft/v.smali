.class Lcom/antivirus/ui/antitheft/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/antivirus/ui/antitheft/r;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/antitheft/r;Z)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/antitheft/v;->b:Lcom/antivirus/ui/antitheft/r;

    iput-boolean p2, p0, Lcom/antivirus/ui/antitheft/v;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/v;->b:Lcom/antivirus/ui/antitheft/r;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/r;->a(Lcom/antivirus/ui/antitheft/r;)Lcom/antivirus/ui/antitheft/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/v;->b:Lcom/antivirus/ui/antitheft/r;

    invoke-static {v0}, Lcom/antivirus/ui/antitheft/r;->a(Lcom/antivirus/ui/antitheft/r;)Lcom/antivirus/ui/antitheft/x;

    move-result-object v0

    iget-boolean v1, p0, Lcom/antivirus/ui/antitheft/v;->a:Z

    invoke-interface {v0, v1}, Lcom/antivirus/ui/antitheft/x;->a(Z)V

    :cond_0
    return-void
.end method
