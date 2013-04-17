.class Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;

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

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->multiSelectDialogAdapter:Laih;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;->access$000(Lcom/tencent/qqpimsecure/uilib/view/dialog/MultiSelectDialog;)Laih;

    move-result-object v0

    invoke-virtual {v0}, Laih;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setSelected(Z)V

    const v1, 0x7f080370

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->isSelected()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
