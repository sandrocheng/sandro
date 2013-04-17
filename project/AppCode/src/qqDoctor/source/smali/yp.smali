.class public final Lyp;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot(I)I

    move-result v0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x6715

    invoke-virtual {v1, v2, v0}, Lnd;->a(II)V

    return-void
.end method
