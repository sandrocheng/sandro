.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Labv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeskAssistanceCurrentAppCallBack"
.end annotation


# instance fields
.field private mCycleCount:I

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->mCycleCount:I

    return-void
.end method


# virtual methods
.method public currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->mCycleCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->mCycleCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->mCycleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->mCycleCount:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lzo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lzo;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lzo;->a(Landroid/content/ComponentName;)Z

    move-result v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnDeskNow:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnDeskNow:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mProcessServer:Lzo;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lzo;

    invoke-static {}, Lzo;->l()Z

    move-result v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mIsOnQQSecure:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$2002(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$DeskAssistanceCurrentAppCallBack;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWindow_Handler:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$Window_Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
