.class final Lare;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Larb;


# direct methods
.method constructor <init>(Larb;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;II)V
    .locals 0

    iput-object p1, p0, Lare;->d:Larb;

    iput-object p2, p0, Lare;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iput p3, p0, Lare;->b:I

    iput p4, p0, Lare;->c:I

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

    iget-object v0, p0, Lare;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getContextItemPosition()I

    iget-object v0, p0, Lare;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->getItem(I)Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lare;->d:Larb;

    invoke-static {v0}, Larb;->a(Larb;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lare;->d:Larb;

    invoke-static {v0}, Larb;->a(Larb;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iget v3, p0, Lare;->b:I

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v2, p0, Lare;->c:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;

    if-eqz v0, :cond_0

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lare;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->dismiss()V

    return-void

    :pswitch_0
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lare;->d:Larb;

    invoke-static {v1}, Larb;->c(Larb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-class v1, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v2, Lki;

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v1

    check-cast v1, Lki;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lki;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lare;->d:Larb;

    invoke-static {v0}, Larb;->d(Larb;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lare;->d:Larb;

    invoke-static {v1}, Larb;->e(Larb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lare;->d:Larb;

    invoke-static {v0}, Larb;->f(Larb;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lare;->d:Larb;

    invoke-static {v1}, Larb;->g(Larb;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b043a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
