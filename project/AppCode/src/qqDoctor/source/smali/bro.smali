.class final Lbro;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:Lbrl;


# direct methods
.method constructor <init>(Lbrl;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lbro;->b:Lbrl;

    iput-object p2, p0, Lbro;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lbro;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    iget-object v0, p0, Lbro;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v0

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbro;->b:Lbrl;

    invoke-static {v0}, Lbrl;->b(Lbrl;)Ljl;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbro;->b:Lbrl;

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v1

    invoke-static {v0, v1}, Lbrl;->a(Lbrl;Ljl;)Ljl;

    :cond_0
    iget-object v0, p0, Lbro;->b:Lbrl;

    invoke-static {v0}, Lbrl;->c(Lbrl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbro;->b:Lbrl;

    iget v1, v1, Lbrl;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lbro;->b:Lbrl;

    invoke-static {v1}, Lbrl;->b(Lbrl;)Ljl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljl;->a(J)Z

    iget-object v0, p0, Lbro;->b:Lbrl;

    invoke-static {v0}, Lbrl;->d(Lbrl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04b7

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lbro;->b:Lbrl;

    invoke-static {v0}, Lbrl;->e(Lbrl;)V

    iget-object v0, p0, Lbro;->b:Lbrl;

    invoke-virtual {v0}, Lbrl;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbro;->b:Lbrl;

    invoke-static {v1}, Lbrl;->d(Lbrl;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0309

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lbro;->b:Lbrl;

    invoke-static {v4}, Lbrl;->b(Lbrl;)Ljl;

    move-result-object v4

    invoke-virtual {v4}, Ljl;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbro;->b:Lbrl;

    iget-object v1, p0, Lbro;->b:Lbrl;

    iget v1, v1, Lbrl;->a:I

    invoke-static {v0, v1}, Lbrl;->a(Lbrl;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
