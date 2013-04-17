.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$2;
.super Ljava/lang/Object;

# interfaces
.implements Lvh$a;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MemChange()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;

    invoke-static {}, Lvh;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceExpandedWindow;->updateOptimizeWindowRamUsage(I)V

    return-void
.end method
