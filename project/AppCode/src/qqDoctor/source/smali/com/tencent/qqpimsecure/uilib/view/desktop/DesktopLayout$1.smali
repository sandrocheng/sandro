.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getFocusPosition()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->setFocusPosition(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setTopGridViewXY(Landroid/view/MotionEvent;)Z
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getFocusPosition()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->setFocusPosition(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setBottomGridViewXY(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$500(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
