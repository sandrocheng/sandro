.class final Lapx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lapf;


# direct methods
.method constructor <init>(Lapf;Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lapx;->c:Lapf;

    iput-object p2, p0, Lapx;->a:Landroid/view/View;

    iput-object p3, p0, Lapx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lapx;->c:Lapf;

    invoke-static {v0}, Lapf;->l(Lapf;)Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lapx;->a:Landroid/view/View;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;

    const/4 v1, -0x1

    const v2, 0x7f0b0018

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/preference/CheckBoxPreferenceView;->doClickEventNoAnimation(II)V

    iget-object v0, p0, Lapx;->c:Lapf;

    invoke-virtual {v0}, Lapf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lapx;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lapx;->c:Lapf;

    invoke-static {v0}, Lapf;->a(Lapf;)Lho;

    move-result-object v0

    invoke-virtual {v0, v3}, Lho;->p(Z)V

    return-void
.end method
