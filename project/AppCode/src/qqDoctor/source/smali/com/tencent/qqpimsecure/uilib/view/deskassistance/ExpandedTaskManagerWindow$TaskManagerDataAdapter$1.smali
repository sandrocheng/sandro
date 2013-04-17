.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

.field final synthetic val$task:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;->val$task:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mRunningProcessCleaner:Lzk;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;)Lzk;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;->val$task:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lzk;->a(Lkw;ZI)J

    return-void
.end method
