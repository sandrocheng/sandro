.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$6;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$6;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$6;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->doResumeAction()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    :cond_0
    return-void
.end method
