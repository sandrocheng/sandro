.class final Lbov;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lbot;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;


# direct methods
.method constructor <init>(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lbov;->a:Lbot;

    iput-object p2, p0, Lbov;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lbov;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v2, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v2

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v2, :pswitch_data_0

    move v2, v1

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lnd;->a(I)V

    iget-object v3, p0, Lbov;->a:Lbot;

    new-instance v4, Lcl;

    iget-object v5, p0, Lbov;->a:Lbot;

    invoke-static {v5}, Lbot;->J(Lbot;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcl;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lbot;->a(Lbot;Lcf;)Lcf;

    iget-object v3, p0, Lbov;->a:Lbot;

    invoke-static {v3}, Lbot;->k(Lbot;)Lcf;

    move-result-object v3

    iget-object v4, p0, Lbov;->a:Lbot;

    invoke-static {v4}, Lbot;->K(Lbot;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcf;->a(Landroid/content/Context;)V

    if-eqz v2, :cond_1

    const/16 v4, 0x3eb

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lbov;->a:Lbot;

    invoke-static {v3}, Lbot;->B(Lbot;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->ak()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_0
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lbov;->a:Lbot;

    invoke-static {v0}, Lbot;->L(Lbot;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03000b

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbov;->a:Lbot;

    invoke-static {v0}, Lbot;->M(Lbot;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbov;->a:Lbot;

    invoke-static {v0}, Lbot;->N(Lbot;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0b00ef

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v0, 0x7f080029

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f080013

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    if-eqz v2, :cond_3

    const v1, 0x7f0b0136

    :goto_3
    iget-object v6, p0, Lbov;->a:Lbot;

    invoke-static {v6}, Lbot;->O(Lbot;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0b0045

    new-instance v0, Lbow;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbow;-><init>(Lbov;ZLcom/tencent/qqpimsecure/uilib/view/CheckBoxView;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v6, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbox;

    invoke-direct {v1, v5}, Lbox;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v0, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :goto_4
    iget-object v0, p0, Lbov;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void

    :pswitch_0
    move v2, v1

    goto/16 :goto_0

    :pswitch_1
    move v2, v0

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x3ec

    goto/16 :goto_1

    :cond_2
    if-nez v2, :cond_0

    iget-object v3, p0, Lbov;->a:Lbot;

    invoke-static {v3}, Lbot;->B(Lbot;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->aj()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto/16 :goto_2

    :cond_3
    const v1, 0x7f0b0135

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lbov;->a:Lbot;

    invoke-static {v0, v4}, Lbot;->c(Lbot;I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
