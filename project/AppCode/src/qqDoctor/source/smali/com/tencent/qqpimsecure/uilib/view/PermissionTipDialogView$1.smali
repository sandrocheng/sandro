.class Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$800(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mSeconds:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mForbidOrPermit:[Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$700(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->mTimeoverOpt:I
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
