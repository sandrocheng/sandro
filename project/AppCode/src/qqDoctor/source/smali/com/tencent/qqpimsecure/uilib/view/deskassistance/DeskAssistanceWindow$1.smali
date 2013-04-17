.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$1;
.super Ljava/lang/Object;

# interfaces
.implements Lvh$a;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MemChange()V
    .locals 2

    invoke-static {}, Lvh;->g()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRamUsageText(I)V

    return-void
.end method
