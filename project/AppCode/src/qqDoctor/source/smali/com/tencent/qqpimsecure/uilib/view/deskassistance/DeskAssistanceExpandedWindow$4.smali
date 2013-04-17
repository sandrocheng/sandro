.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$settingCallback;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deskAssistanceOnOffCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->mDeskAssistanceWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->registerCurrentApp()V

    :cond_0
    return-void
.end method

.method public settingStyleCallback()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->updateSettingViewStyle()V

    return-void
.end method
