.class public abstract Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MonitorCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;->a:Z

    return v0
.end method


# virtual methods
.method public abortMonitor()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;->a:Z

    return-void
.end method

.method public abstract onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
