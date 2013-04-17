.class public abstract Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final getContainer()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getPresentContruct()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public varargs abstract onActivityMethodCall(I[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public setResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public setResult(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/plugin/AbsPluginViewElement;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
