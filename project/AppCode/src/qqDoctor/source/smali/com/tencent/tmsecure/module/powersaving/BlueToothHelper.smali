.class public final Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;
    }
.end annotation


# static fields
.field private static k:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/bluetooth/BluetoothAdapter;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/content/Context;

.field public e:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper$BlueToothObserver;

.field public f:Z

.field public g:Landroid/os/Handler;

.field public h:Ljava/lang/Runnable;

.field public i:Z

.field public j:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BlueToothHelper"

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->f:Z

    new-instance v0, Lbyc;

    invoke-direct {v0, p0}, Lbyc;-><init>(Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->j:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->d:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->b:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
    .locals 2

    const-class v1, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;

    :cond_0
    sget-object v0, Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;->k:Lcom/tencent/tmsecure/module/powersaving/BlueToothHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
