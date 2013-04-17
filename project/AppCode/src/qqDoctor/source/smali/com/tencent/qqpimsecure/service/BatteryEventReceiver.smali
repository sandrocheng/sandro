.class public Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Z

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Landroid/content/Intent;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->d:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->e:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "BatteryEventReceiver"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;)V
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->e:Landroid/content/Intent;

    invoke-interface {p0}, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;->a()V

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static b(Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;)V
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x64

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-object p2, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->e:Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->c:Ljava/lang/String;

    const-string v0, "level"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    sput v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->a:I

    if-le v0, v2, :cond_0

    sput v2, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->a:I

    :cond_0
    const-string v0, "status"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->b:Z

    if-nez v0, :cond_1

    sput-boolean v4, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->b:Z

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver$a;->a()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_3
    sget-boolean v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->b:Z

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;->b:Z

    goto :goto_0

    :cond_4
    return-void
.end method
