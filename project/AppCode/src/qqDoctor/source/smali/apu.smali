.class final Lapu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Lapf;


# direct methods
.method constructor <init>(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lapu;->c:Lapf;

    iput-object p2, p0, Lapu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p3, p0, Lapu;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0b0023

    const v3, 0x7f0b0021

    const/4 v2, -0x1

    iget-object v0, p0, Lapu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lapu;->c:Lapf;

    invoke-static {v0}, Lapf;->d(Lapf;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lapu;->c:Lapf;

    invoke-static {v0}, Lapf;->g(Lapf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapu;->c:Lapf;

    invoke-static {v0}, Lapf;->h(Lapf;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lapu;->b:Landroid/view/View;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lapu;->c:Lapf;

    invoke-static {v1}, Lapf;->d(Lapf;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lapu;->c:Lapf;

    invoke-virtual {v0}, Lapf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lapu;->c:Lapf;

    invoke-static {v0}, Lapf;->i(Lapf;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lapu;->b:Landroid/view/View;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    invoke-virtual {v0, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    move-object v0, v1

    goto :goto_0
.end method
