.class final Lcom/keniu/security/importx/o;
.super Ljava/lang/Object;
.source "ImportfContactActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/importx/ImportfContactActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/importx/ImportfContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/ImportfContactActivity;->a(Lcom/keniu/security/importx/ImportfContactActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/ImportfContactActivity;->b(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/importx/BaseImportActivity;->l:Lcom/keniu/security/importx/k;

    div-int/lit8 v2, p3, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/keniu/security/importx/k;->b(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/ImportfContactActivity;->b(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/ImportfContactActivity;->d(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v1}, Lcom/keniu/security/importx/ImportfContactActivity;->c(Lcom/keniu/security/importx/ImportfContactActivity;)Lcom/keniu/security/importx/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v0, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0}, Lcom/keniu/security/importx/ImportfContactActivity;->d(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v1}, Lcom/keniu/security/importx/ImportfContactActivity;->c(Lcom/keniu/security/importx/ImportfContactActivity;)Lcom/keniu/security/importx/q;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/keniu/security/importx/o;->a:Lcom/keniu/security/importx/ImportfContactActivity;

    invoke-static {v0, p2}, Lcom/keniu/security/importx/ImportfContactActivity;->a(Lcom/keniu/security/importx/ImportfContactActivity;I)I

    .line 70
    return-void
.end method
