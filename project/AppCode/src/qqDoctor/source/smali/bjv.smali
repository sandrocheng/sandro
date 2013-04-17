.class final Lbjv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbjo;


# direct methods
.method constructor <init>(Lbjo;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbjv;->d:Lbjo;

    iput-object p2, p0, Lbjv;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lbjv;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lbjv;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbjv;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v5, p0, Lbjv;->b:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lbjv;->d:Lbjo;

    invoke-static {v5}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v5

    invoke-virtual {v5, v0}, Lho;->s(I)V

    iget-object v5, p0, Lbjv;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v5, p0, Lbjv;->d:Lbjo;

    invoke-static {v5}, Lbjo;->q(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v5

    iget-object v6, p0, Lbjv;->d:Lbjo;

    invoke-static {v6}, Lbjo;->p(Lbjo;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07002b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lbjv;->d:Lbjo;

    invoke-static {v0}, Lbjo;->o(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lbjv;->d:Lbjo;

    invoke-virtual {v0}, Lbjo;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_6

    if-nez v5, :cond_6

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbjv;->d:Lbjo;

    invoke-static {v0}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bd()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbjv;->d:Lbjo;

    invoke-static {v0}, Lbjo;->o(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lbjv;->d:Lbjo;

    invoke-static {v0}, Lbjo;->o(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_0
.end method
