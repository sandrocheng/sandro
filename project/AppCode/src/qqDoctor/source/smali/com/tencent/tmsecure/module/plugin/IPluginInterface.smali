.class public interface abstract Lcom/tencent/tmsecure/module/plugin/IPluginInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getStartViewElement(Landroid/app/Activity;)Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getViewElement(ILandroid/app/Activity;)Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            ")",
            "Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract onCreate(Lcom/tencent/tmsecure/module/plugin/IContext;Lcom/tencent/tmsecure/module/plugin/IContext;Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method
