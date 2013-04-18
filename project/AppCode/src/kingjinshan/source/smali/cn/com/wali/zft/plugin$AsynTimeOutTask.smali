.class Lcn/com/wali/zft/plugin$AsynTimeOutTask;
.super Ljava/util/TimerTask;
.source "plugin.java"


# instance fields
.field final synthetic this$0:Lcn/com/wali/zft/plugin;


# direct methods
.method constructor <init>(Lcn/com/wali/zft/plugin;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcn/com/wali/zft/plugin$AsynTimeOutTask;->this$0:Lcn/com/wali/zft/plugin;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcn/com/wali/zft/plugin$AsynTimeOutTask;->this$0:Lcn/com/wali/zft/plugin;

    #calls: Lcn/com/wali/zft/plugin;->asyn_timeout()V
    invoke-static {v0}, Lcn/com/wali/zft/plugin;->access$000(Lcn/com/wali/zft/plugin;)V

    .line 564
    return-void
.end method
