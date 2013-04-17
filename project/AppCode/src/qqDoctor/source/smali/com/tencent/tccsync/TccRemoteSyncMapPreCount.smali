.class public Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    invoke-static {}, Lbl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lca;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getLocalChangeCount(Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I
.end method
