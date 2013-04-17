.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->Stop()V

    return-void
.end method
