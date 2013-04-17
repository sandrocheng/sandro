.class public abstract Lcom/tencent/feedback/upload/c;
.super Ljava/lang/Object;
.source "RequestHandlerAbs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/upload/c$b;,
        Lcom/tencent/feedback/upload/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/feedback/upload/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/upload/c;->a:Lcom/tencent/feedback/upload/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/upload/c;
    .locals 3
    .parameter

    .prologue
    .line 51
    const-class v1, Lcom/tencent/feedback/upload/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/upload/c;->a:Lcom/tencent/feedback/upload/c;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/tencent/feedback/upload/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/feedback/upload/c$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/upload/c;->a:Lcom/tencent/feedback/upload/c;

    .line 54
    :cond_0
    sget-object v0, Lcom/tencent/feedback/upload/c;->a:Lcom/tencent/feedback/upload/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;[BLjava/lang/String;Lcom/tencent/feedback/upload/c$b;)[B
.end method
