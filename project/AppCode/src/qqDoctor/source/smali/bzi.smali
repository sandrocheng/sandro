.class public final Lbzi;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;)V
    .locals 0

    iput-object p1, p0, Lbzi;->a:Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbzi;->a:Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/utils/ScriptHelper$Callback;->onFinish(I)V

    return-void
.end method
