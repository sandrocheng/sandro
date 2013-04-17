.class final Lbfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbfg;


# direct methods
.method constructor <init>(Lbfg;Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbfo;->c:Lbfg;

    iput-object p2, p0, Lbfo;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iput-object p3, p0, Lbfo;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lbfo;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbfo;->c:Lbfg;

    invoke-static {v0}, Lbfg;->g(Lbfg;)Lho;

    move-result-object v0

    invoke-virtual {v0, v1}, Lho;->E(Z)V

    iget-object v0, p0, Lbfo;->c:Lbfg;

    invoke-virtual {v0}, Lbfg;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbfo;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
