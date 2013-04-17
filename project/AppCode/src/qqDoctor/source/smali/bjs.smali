.class final Lbjs;
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

    iput-object p1, p0, Lbjs;->e:Lbjo;

    iput-object p2, p0, Lbjs;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lbjs;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lbjs;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Lbjs;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lbjs;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbjs;->e:Lbjo;

    invoke-static {v1}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lho;->r(I)V

    iget-object v1, p0, Lbjs;->e:Lbjo;

    invoke-static {v1}, Lbjo;->a(Lbjo;)Lho;

    move-result-object v1

    iget-object v2, p0, Lbjs;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lho;->w(Z)V

    iget-object v1, p0, Lbjs;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v1, p0, Lbjs;->e:Lbjo;

    invoke-static {v1}, Lbjo;->n(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v1

    iget-object v2, p0, Lbjs;->e:Lbjo;

    invoke-static {v2}, Lbjo;->m(Lbjo;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lbjs;->e:Lbjo;

    invoke-static {v0}, Lbjo;->o(Lbjo;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    iget-object v1, p0, Lbjs;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setEnabled(Z)V

    iget-object v0, p0, Lbjs;->e:Lbjo;

    invoke-virtual {v0}, Lbjo;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lbjs;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
