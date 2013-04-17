.class Lcom/tencent/tccdb/SmsChecker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lga;


# instance fields
.field final synthetic this$0:Lcom/tencent/tccdb/SmsChecker;


# direct methods
.method constructor <init>(Lcom/tencent/tccdb/SmsChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tccdb/SmsChecker$1;->this$0:Lcom/tencent/tccdb/SmsChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lgb;)V
    .locals 3

    const-class v0, Lgc;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lgc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lgb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tccdb/SmsChecker$1;->this$0:Lcom/tencent/tccdb/SmsChecker;

    #getter for: Lcom/tencent/tccdb/SmsChecker;->object:I
    invoke-static {v1}, Lcom/tencent/tccdb/SmsChecker;->access$0(Lcom/tencent/tccdb/SmsChecker;)I

    move-result v1

    const/4 v2, 0x3

    #calls: Lcom/tencent/tccdb/SmsChecker;->initSmsChecker(IILjava/lang/String;)I
    invoke-static {v1, v2, v0}, Lcom/tencent/tccdb/SmsChecker;->access$1(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tccdb/SmsChecker$1;->this$0:Lcom/tencent/tccdb/SmsChecker;

    #getter for: Lcom/tencent/tccdb/SmsChecker;->object:I
    invoke-static {v1}, Lcom/tencent/tccdb/SmsChecker;->access$0(Lcom/tencent/tccdb/SmsChecker;)I

    move-result v1

    const/16 v2, 0x8

    #calls: Lcom/tencent/tccdb/SmsChecker;->initChargeChecker(IILjava/lang/String;)I
    invoke-static {v1, v2, v0}, Lcom/tencent/tccdb/SmsChecker;->access$2(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tccdb/SmsChecker$1;->this$0:Lcom/tencent/tccdb/SmsChecker;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/tccdb/SmsChecker;->initSuccess:Z
    invoke-static {v0, v1}, Lcom/tencent/tccdb/SmsChecker;->access$3(Lcom/tencent/tccdb/SmsChecker;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tccdb/SmsChecker$1;->this$0:Lcom/tencent/tccdb/SmsChecker;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/tccdb/SmsChecker;->initSuccess:Z
    invoke-static {v0, v1}, Lcom/tencent/tccdb/SmsChecker;->access$3(Lcom/tencent/tccdb/SmsChecker;Z)V

    goto :goto_0
.end method
