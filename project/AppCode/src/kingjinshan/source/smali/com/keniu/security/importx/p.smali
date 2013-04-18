.class final Lcom/keniu/security/importx/p;
.super Lcom/jxphone/mosecurity/activity/a/a;
.source "ImportfContactActivity.java"


# instance fields
.field final synthetic c:Lcom/keniu/security/importx/ImportfContactActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/importx/ImportfContactActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/keniu/security/importx/p;->c:Lcom/keniu/security/importx/ImportfContactActivity;

    .line 115
    invoke-static {p1}, Lcom/keniu/security/importx/ImportfContactActivity;->e(Lcom/keniu/security/importx/ImportfContactActivity;)Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/jxphone/mosecurity/activity/a/a;-><init>(Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/jxphone/mosecurity/activity/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/keniu/security/importx/p;->c:Lcom/keniu/security/importx/ImportfContactActivity;

    iget-object v1, v1, Lcom/keniu/security/importx/ImportfContactActivity;->m:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/importx/p;->c:Lcom/keniu/security/importx/ImportfContactActivity;

    iget-object v1, v1, Lcom/keniu/security/importx/ImportfContactActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/keniu/security/importx/p;->c:Lcom/keniu/security/importx/ImportfContactActivity;

    iget-object v2, p0, Lcom/keniu/security/importx/p;->c:Lcom/keniu/security/importx/ImportfContactActivity;

    iget-object v2, v2, Lcom/keniu/security/importx/ImportfContactActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/importx/p;

    invoke-virtual {p0, p1}, Lcom/keniu/security/importx/p;->b(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/keniu/security/importx/ImportfContactActivity;->a(Lcom/jxphone/mosecurity/c/c;Landroid/view/View;)V

    .line 125
    :cond_0
    return-object v0
.end method
