.class public Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;
.super Ljava/lang/Object;


# static fields
.field private static mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;


# instance fields
.field private mTemplateUICacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mTemplateUICacheList:Ljava/util/ArrayList;

    return-void
.end method

.method public static Instance()Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    return-object v0
.end method

.method public static freeInstance()V
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->removeAllCacheTemplateUI()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mInstance:Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;

    return-void
.end method


# virtual methods
.method public getTemplateUIInstance(Landroid/content/Context;)Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mTemplateUICacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mTemplateUICacheList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public recycleTemplateUI(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->resetTemplateUI()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mTemplateUICacheList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeAllCacheTemplateUI()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/template/TemplateUIFactory;->mTemplateUICacheList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
