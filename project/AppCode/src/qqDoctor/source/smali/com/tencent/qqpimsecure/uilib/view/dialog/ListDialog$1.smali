.class Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;

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

    const v0, 0x7f080317

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->mCallback:Ldv;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->access$000(Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;)Ldv;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ListDialog;->cancel()V

    return-void
.end method
