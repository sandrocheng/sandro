.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunningAppTask"
.end annotation


# instance fields
.field public mAppInfo:Lkw;

.field public mCloseAble:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;Lkw;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkw;

    invoke-direct {v0, p2}, Lkw;-><init>(Lcom/tencent/tmsecure/module/software/AppEntity;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mCloseAble:Z

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
