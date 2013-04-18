.class final Lcom/keniu/security/importx/r;
.super Lcom/jxphone/mosecurity/activity/a/i;
.source "ImportfSmsActivity.java"


# instance fields
.field final synthetic g:Lcom/keniu/security/importx/ImportfSmsActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/importx/ImportfSmsActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/keniu/security/importx/r;->g:Lcom/keniu/security/importx/ImportfSmsActivity;

    .line 49
    invoke-static {p1}, Lcom/keniu/security/importx/ImportfSmsActivity;->a(Lcom/keniu/security/importx/ImportfSmsActivity;)Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/jxphone/mosecurity/activity/a/i;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/keniu/security/importx/r;->f:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/keniu/security/importx/r;->e:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lcom/keniu/security/commumgr/a/t;
    .locals 2
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/keniu/security/commumgr/a/t;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/a/t;-><init>(I)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/keniu/security/importx/r;->a(I)Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/a/t;->a(Lcom/jxphone/mosecurity/c/l;)V

    .line 56
    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/jxphone/mosecurity/activity/a/i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/keniu/security/importx/r;->g:Lcom/keniu/security/importx/ImportfSmsActivity;

    iget-object v2, p0, Lcom/keniu/security/importx/r;->g:Lcom/keniu/security/importx/ImportfSmsActivity;

    iget-object v2, v2, Lcom/keniu/security/importx/ImportfSmsActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/importx/l;

    invoke-interface {p0, p1}, Lcom/keniu/security/importx/l;->b(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/keniu/security/importx/ImportfSmsActivity;->a(Lcom/jxphone/mosecurity/c/c;Landroid/view/View;)V

    .line 64
    return-object v0
.end method
