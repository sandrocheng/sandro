.class public final Lcom/tencent/tmsecure/module/plugin/PluginIntent;
.super Ljava/lang/Object;


# instance fields
.field public mPlugin:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

.field public mToViewIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/plugin/IPluginInterface;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mPlugin:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    iput p2, p0, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mToViewIndex:I

    return-void
.end method

.method public static convertToBundle(Lcom/tencent/tmsecure/module/plugin/PluginIntent;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "plugin_key"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mPlugin:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "view_index"

    iget v2, p0, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mToViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static convertToIntent(Landroid/os/Bundle;)Lcom/tencent/tmsecure/module/plugin/PluginIntent;
    .locals 4

    new-instance v1, Lcom/tencent/tmsecure/module/plugin/PluginIntent;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/plugin/PluginIntent;-><init>()V

    const-string v0, "plugin_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "view_index"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-class v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/plugin/PluginManager;->getPluginEntityByKey(I)Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could found the plugin by the key "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginInterface:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    iput-object v0, v1, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mPlugin:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    iput v3, v1, Lcom/tencent/tmsecure/module/plugin/PluginIntent;->mToViewIndex:I

    return-object v1
.end method
