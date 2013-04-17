.class public final Lec;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/view/PowerManagerView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/PowerManagerView;)V
    .locals 0

    iput-object p1, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->e(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->e(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->f(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    new-instance v2, Ldg;

    invoke-direct {v2}, Ldg;-><init>()V

    iget v3, v0, Lbf;->a:I

    iput v3, v2, Ldg;->a:I

    iget-object v0, v0, Lbf;->b:Ljava/lang/String;

    iput-object v0, v2, Ldg;->c:Ljava/lang/String;

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->e(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v2}, Lcom/tencent/powermanager/view/PowerManagerView;->e(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->g(Lcom/tencent/powermanager/view/PowerManagerView;)V

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->h(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    move-result-object v0

    iget-object v1, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/PowerManagerView;->b(Lcom/tencent/powermanager/view/PowerManagerView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lec;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->h(Lcom/tencent/powermanager/view/PowerManagerView;)Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryModeSwitchView;->a()V

    return-void
.end method
