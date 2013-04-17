.class Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mTitle:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mTitle:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mModeList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDateList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mDateList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mModeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mModeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->mSelectedIndex:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;

    invoke-direct {v0, p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$1;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void
.end method
