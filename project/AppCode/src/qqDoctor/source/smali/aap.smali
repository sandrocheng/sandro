.class final Laap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laan;


# direct methods
.method constructor <init>(Laan;)V
    .locals 0

    iput-object p1, p0, Laap;->a:Laan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Laap;->a:Laan;

    iget-object v0, v0, Laan;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Laap;->a:Laan;

    iget-object v1, p0, Laap;->a:Laan;

    iget-object v1, v1, Laan;->c:Ljava/util/List;

    const/4 v2, 0x0

    const/16 v3, 0x63

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Laan;->c:Ljava/util/List;

    :cond_0
    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iget-object v1, p0, Laap;->a:Laan;

    iget-object v1, v1, Laan;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSoftAction(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laap;->a:Laan;

    iget-object v0, v0, Laan;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Laap;->a:Laan;

    iget-object v0, v0, Laan;->a:Landroid/content/Context;

    iget-object v1, p0, Laap;->a:Laan;

    iget-object v1, v1, Laan;->c:Ljava/util/List;

    const-string v2, "label_sa"

    const-string v3, "sa.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
