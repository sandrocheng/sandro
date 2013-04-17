.class public final Lbtf$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

.field public final synthetic b:Lcom/tencent/tmsecure/module/update/UpdateInfo;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;Lcom/tencent/tmsecure/module/update/UpdateInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lbtf$a;->a:Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

    iput-object p2, p0, Lbtf$a;->b:Lcom/tencent/tmsecure/module/update/UpdateInfo;

    iput-object p3, p0, Lbtf$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
