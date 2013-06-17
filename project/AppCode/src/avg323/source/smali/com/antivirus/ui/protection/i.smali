.class Lcom/antivirus/ui/protection/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/protection/a;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/protection/a;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/protection/i;->a:Lcom/antivirus/ui/protection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/protection/i;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->e(Lcom/antivirus/ui/protection/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(ZI)Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/protection/i;->a:Lcom/antivirus/ui/protection/a;

    invoke-static {v0}, Lcom/antivirus/ui/protection/a;->c(Lcom/antivirus/ui/protection/a;)V

    return-void
.end method
