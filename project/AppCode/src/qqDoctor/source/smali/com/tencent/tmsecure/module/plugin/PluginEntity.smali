.class public Lcom/tencent/tmsecure/module/plugin/PluginEntity;
.super Lcom/tencent/tmsecure/common/BaseEntity;


# instance fields
.field private a:I

.field public mPluginFilePath:Ljava/lang/String;

.field public mPluginInterface:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

.field public mPluginName:Ljava/lang/String;

.field public mPluginPkgName:Ljava/lang/String;

.field public mPluginVerion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/module/plugin/PluginEntity;

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getKey()I
    .locals 2

    iget v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->mPluginInterface:Lcom/tencent/tmsecure/module/plugin/IPluginInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->a:I

    :cond_0
    iget v0, p0, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->a:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/plugin/PluginEntity;->getKey()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    return v0
.end method
