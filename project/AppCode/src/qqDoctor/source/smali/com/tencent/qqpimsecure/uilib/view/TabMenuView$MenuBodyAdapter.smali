.class public Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;
.super Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuBodyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuAdapter;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03003f

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuBodyAdapter;->createView(ILandroid/view/View;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
