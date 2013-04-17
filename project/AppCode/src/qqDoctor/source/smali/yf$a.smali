.class public final Lyf$a;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lyf;


# direct methods
.method public constructor <init>(Lyf;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyf$a;->a:Lyf;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lyf$a;->a:Lyf;

    invoke-static {v0}, Lyf;->a(Lyf;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyf$a;->a:Lyf;

    invoke-static {v0}, Lyf;->b(Lyf;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-static {}, Lyf;->b()LQQPIM/SoftList;

    move-result-object v0

    iget-object v0, v0, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-static {}, Lyf;->b()LQQPIM/SoftList;

    move-result-object v0

    iget-object v0, v0, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget-object v0, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p0, Lyf$a;->a:Lyf;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyf;->a(Lyf;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lyf$a;->a:Lyf;

    invoke-static {v0}, Lyf;->c(Lyf;)V

    iget-object v0, p0, Lyf$a;->a:Lyf;

    invoke-static {v0, v3}, Lyf;->a(Lyf;Z)Z

    iget-object v0, p0, Lyf$a;->a:Lyf;

    invoke-static {v0}, Lyf;->d(Lyf;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lyf$a;->a:Lyf;

    invoke-static {v1}, Lyf;->d(Lyf;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x40000010 -> :sswitch_0
        0x40000020 -> :sswitch_0
    .end sparse-switch
.end method
