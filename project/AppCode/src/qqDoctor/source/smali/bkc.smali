.class final Lbkc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Landroid/widget/CheckBox;

.field private synthetic c:Landroid/widget/CheckBox;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lbjo;


# direct methods
.method constructor <init>(Lbjo;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbkc;->e:Lbjo;

    iput-object p2, p0, Lbkc;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lbkc;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lbkc;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Lbkc;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lbkc;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v6, p0, Lbkc;->b:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iget-object v7, p0, Lbkc;->c:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    move v0, v1

    :goto_0
    iget-object v6, p0, Lbkc;->e:Lbjo;

    invoke-static {v6}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v6

    invoke-virtual {v6, v0}, Lho;->c(I)V

    iget-object v6, p0, Lbkc;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v6, p0, Lbkc;->e:Lbjo;

    invoke-static {v6}, Lbjo;->c(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v6

    iget-object v7, p0, Lbkc;->e:Lbjo;

    invoke-static {v7}, Lbjo;->b(Lbjo;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v6, p0, Lbkc;->e:Lbjo;

    invoke-static {v6}, Lbjo;->d(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v6

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-virtual {v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lbkc;->e:Lbjo;

    invoke-virtual {v0}, Lbjo;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    if-nez v0, :cond_3

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-nez v6, :cond_4

    if-eqz v7, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v6, :cond_5

    if-nez v7, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    if-nez v6, :cond_6

    if-eqz v7, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v6, :cond_8

    if-nez v7, :cond_8

    const/4 v0, 0x4

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    if-nez v6, :cond_9

    if-nez v7, :cond_9

    move v0, v5

    goto :goto_0

    :cond_9
    move v0, v5

    goto :goto_0
.end method
