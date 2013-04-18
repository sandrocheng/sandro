.class final Lcom/keniu/security/protection/ui/aj;
.super Landroid/database/DataSetObserver;
.source "PreventTheftWhiteListActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/keniu/security/protection/ui/aj;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/keniu/security/protection/ui/aj;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/protection/ui/aj;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-static {v1}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)Lcom/keniu/security/protection/ui/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/protection/ui/an;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    return-void

    .line 121
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
