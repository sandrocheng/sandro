.class public final Lbjk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lbjk;->b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iput-object p2, p0, Lbjk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lbjk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    iget-object v0, p0, Lbjk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    move-result v2

    if-gez v2, :cond_0

    iget-object v0, p0, Lbjk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbjk;->b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    invoke-virtual {v0, v2}, Lait;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lbjk;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lbjk;->b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->r(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lsy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lbjk;->b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->q(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ldv;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Ldv;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lbjk;->b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;I)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lbjk;->b:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->s(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lgu;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
