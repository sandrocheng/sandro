.class Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$runtime:Ljava/lang/Runtime;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;Ljava/lang/String;JLjava/lang/Runtime;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$time:J

    iput-object p5, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$runtime:Ljava/lang/Runtime;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$id:Ljava/lang/String;

    iget-wide v3, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$time:J

    #calls: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->createLogFile(Ljava/lang/String;J)Ljava/io/File;
    invoke-static {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$100(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;Ljava/lang/String;J)Ljava/io/File;

    move-result-object v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->mFile:Ljava/io/File;
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$002(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    #getter for: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$000(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    #getter for: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->mCount:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$300(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    #calls: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->writeTitle()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$500(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$308(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)I

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->sleep(J)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    #getter for: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->mStop:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$200(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    #getter for: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->mCount:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$300(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    #calls: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->writeToLog()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$400(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->this$0:Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil$1;->val$runtime:Ljava/lang/Runtime;

    #calls: Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->writeContent(Ljava/lang/String;Ljava/lang/Runtime;)V
    invoke-static {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;->access$600(Lcom/tencent/qqpimsecure/uilib/common/AutoTestUtil;Ljava/lang/String;Ljava/lang/Runtime;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
