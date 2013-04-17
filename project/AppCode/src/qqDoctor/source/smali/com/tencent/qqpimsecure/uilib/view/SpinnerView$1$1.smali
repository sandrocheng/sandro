.class Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

.field final synthetic val$dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->val$dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I
    invoke-static {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->initGuidText()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mOnSelectChangeListener:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mOnSelectChangeListener:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;->onSelectChange(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;->val$dialog:Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->dismiss()V

    return-void
.end method
