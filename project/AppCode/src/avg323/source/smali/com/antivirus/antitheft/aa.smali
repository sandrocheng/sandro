.class Lcom/antivirus/antitheft/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/antitheft/z;


# direct methods
.method constructor <init>(Lcom/antivirus/antitheft/z;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/antitheft/aa;->a:Lcom/antivirus/antitheft/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const v1, 0x7f080036

    invoke-static {}, Lcom/antivirus/antitheft/LockScreen;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/antitheft/aa;->a:Lcom/antivirus/antitheft/z;

    iget-object v0, v0, Lcom/antivirus/antitheft/z;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/antitheft/aa;->a:Lcom/antivirus/antitheft/z;

    iget-object v0, v0, Lcom/antivirus/antitheft/z;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
